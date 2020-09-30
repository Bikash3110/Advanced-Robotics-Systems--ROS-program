# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "AR_week8_test: 1 messages, 0 services")

set(MSG_I_FLAGS "-IAR_week8_test:/home/bikash/catkin_ws/src/AR_week8_test/msg;-Imoveit_msgs:/opt/ros/melodic/share/moveit_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/melodic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/melodic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(AR_week8_test_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg" NAME_WE)
add_custom_target(_AR_week8_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "AR_week8_test" "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(AR_week8_test
  "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AR_week8_test
)

### Generating Services

### Generating Module File
_generate_module_cpp(AR_week8_test
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AR_week8_test
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(AR_week8_test_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(AR_week8_test_generate_messages AR_week8_test_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg" NAME_WE)
add_dependencies(AR_week8_test_generate_messages_cpp _AR_week8_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AR_week8_test_gencpp)
add_dependencies(AR_week8_test_gencpp AR_week8_test_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AR_week8_test_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(AR_week8_test
  "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AR_week8_test
)

### Generating Services

### Generating Module File
_generate_module_eus(AR_week8_test
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AR_week8_test
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(AR_week8_test_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(AR_week8_test_generate_messages AR_week8_test_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg" NAME_WE)
add_dependencies(AR_week8_test_generate_messages_eus _AR_week8_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AR_week8_test_geneus)
add_dependencies(AR_week8_test_geneus AR_week8_test_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AR_week8_test_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(AR_week8_test
  "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AR_week8_test
)

### Generating Services

### Generating Module File
_generate_module_lisp(AR_week8_test
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AR_week8_test
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(AR_week8_test_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(AR_week8_test_generate_messages AR_week8_test_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg" NAME_WE)
add_dependencies(AR_week8_test_generate_messages_lisp _AR_week8_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AR_week8_test_genlisp)
add_dependencies(AR_week8_test_genlisp AR_week8_test_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AR_week8_test_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(AR_week8_test
  "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AR_week8_test
)

### Generating Services

### Generating Module File
_generate_module_nodejs(AR_week8_test
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AR_week8_test
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(AR_week8_test_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(AR_week8_test_generate_messages AR_week8_test_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg" NAME_WE)
add_dependencies(AR_week8_test_generate_messages_nodejs _AR_week8_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AR_week8_test_gennodejs)
add_dependencies(AR_week8_test_gennodejs AR_week8_test_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AR_week8_test_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(AR_week8_test
  "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AR_week8_test
)

### Generating Services

### Generating Module File
_generate_module_py(AR_week8_test
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AR_week8_test
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(AR_week8_test_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(AR_week8_test_generate_messages AR_week8_test_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bikash/catkin_ws/src/AR_week8_test/msg/square_size.msg" NAME_WE)
add_dependencies(AR_week8_test_generate_messages_py _AR_week8_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AR_week8_test_genpy)
add_dependencies(AR_week8_test_genpy AR_week8_test_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AR_week8_test_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AR_week8_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AR_week8_test
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(AR_week8_test_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(AR_week8_test_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AR_week8_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AR_week8_test
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(AR_week8_test_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(AR_week8_test_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AR_week8_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AR_week8_test
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(AR_week8_test_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(AR_week8_test_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AR_week8_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AR_week8_test
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(AR_week8_test_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(AR_week8_test_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AR_week8_test)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AR_week8_test\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AR_week8_test
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(AR_week8_test_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(AR_week8_test_generate_messages_py std_msgs_generate_messages_py)
endif()
