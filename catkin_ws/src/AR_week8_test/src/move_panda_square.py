#!/usr/bin/env python

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import time

from math import pi
from AR_week8_test.msg import square_size

def callback(data):
	# publish initialised
	try:
		#Define intialial bot config
		print'...Waiting for Messages...'
		print'...Receiving size of square sides = %s '%data.size
		print'...Starting Config...'
		
		#2.a move panda robot to a starting config
		start_config = [0, -pi/4, 0, -pi/2, 0, pi/3, 0]
		group.go(start_config, wait=True)
		# stop() to ensure no residual movement
		group.stop()

		print'...Planning cartesian path...'
			
		waypoints = []
		# get current positions
		pos = group.get_current_pose().pose

		# sideways 'y'		
		pos.position.y += data.size		
		waypoints.append(copy.deepcopy(pos))

		# move forward/backwards in 'x'
		pos.position.x += data.size
		waypoints.append(copy.deepcopy(pos))

		# Third move sideways 'y'
		pos.position.y -= data.size
		waypoints.append(copy.deepcopy(pos))

		# 4th move forward/backwards
		pos.position.x -= data.size
		waypoints.append(copy.deepcopy(pos))
		
		# waypoints, eef_step - cartesian translation, jump_threshold disabled
		(plan, fraction) = group.compute_cartesian_path(waypoints, eef_step = 0.01, jump_threshold=0.0)
		
		#initialise msg for trajectory planning '/move_group/display_planned_path'
		display_traj = moveit_msgs.msg.DisplayTrajectory()
		display_traj.trajectory_start = robot.get_current_state()
		display_traj.trajectory.append(plan)
		# Publish message -->
		print'...Showing Planned Trajectory...'
		display_trajectory_publisher.publish(display_traj)
		
		time.sleep(5)
		# Executing Planned Trajectory
		print'...Planned Trajectory Executing...'
		group.execute(plan, wait=True)
	
	except rospy.ServiceException, e:
		print'Service Failed: %s'%e


def move_panda_square():
	#initialize moveit
	moveit_commander.roscpp_initialize(sys.argv)

	# initialize new node
	rospy.init_node('move_panda_square', anonymous=True)
	
	# wait for service
	# subscribe to cubic_traj_params and send data to call back
	print'...Waiting for square size...'
	rospy.Subscriber('size', square_size, callback)
	rospy.spin()  # prevent from dying

if __name__=='__main__':
	# intialise robot
	robot = moveit_commander.RobotCommander()

	# initialise planning scene interface
	scene = moveit_commander.PlanningSceneInterface()
	
	# initialise move group
	group = moveit_commander.MoveGroupCommander('panda_arm')

	# intialise display trajectory pub
	display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size =0)

	move_panda_square() 
