;; Auto-generated. Do not edit!


(when (boundp 'AR_week8_test::square_size)
  (if (not (find-package "AR_WEEK8_TEST"))
    (make-package "AR_WEEK8_TEST"))
  (shadow 'square_size (find-package "AR_WEEK8_TEST")))
(unless (find-package "AR_WEEK8_TEST::SQUARE_SIZE")
  (make-package "AR_WEEK8_TEST::SQUARE_SIZE"))

(in-package "ROS")
;;//! \htmlinclude square_size.msg.html


(defclass AR_week8_test::square_size
  :super ros::object
  :slots (_size ))

(defmethod AR_week8_test::square_size
  (:init
   (&key
    ((:size __size) 0.0)
    )
   (send-super :init)
   (setq _size (float __size))
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; float64 _size
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _size
       (sys::poke _size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _size
     (setq _size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get AR_week8_test::square_size :md5sum-) "3aa6cfa06a5f47b42010d9cec2c18e56")
(setf (get AR_week8_test::square_size :datatype-) "AR_week8_test/square_size")
(setf (get AR_week8_test::square_size :definition-)
      "float64 size

")



(provide :AR_week8_test/square_size "3aa6cfa06a5f47b42010d9cec2c18e56")


