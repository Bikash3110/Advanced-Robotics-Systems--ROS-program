; Auto-generated. Do not edit!


(cl:in-package AR_week8_test-msg)


;//! \htmlinclude square_size.msg.html

(cl:defclass <square_size> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:float
    :initform 0.0))
)

(cl:defclass square_size (<square_size>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <square_size>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'square_size)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AR_week8_test-msg:<square_size> is deprecated: use AR_week8_test-msg:square_size instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <square_size>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AR_week8_test-msg:size-val is deprecated.  Use AR_week8_test-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <square_size>) ostream)
  "Serializes a message object of type '<square_size>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <square_size>) istream)
  "Deserializes a message object of type '<square_size>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<square_size>)))
  "Returns string type for a message object of type '<square_size>"
  "AR_week8_test/square_size")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'square_size)))
  "Returns string type for a message object of type 'square_size"
  "AR_week8_test/square_size")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<square_size>)))
  "Returns md5sum for a message object of type '<square_size>"
  "3aa6cfa06a5f47b42010d9cec2c18e56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'square_size)))
  "Returns md5sum for a message object of type 'square_size"
  "3aa6cfa06a5f47b42010d9cec2c18e56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<square_size>)))
  "Returns full string definition for message of type '<square_size>"
  (cl:format cl:nil "float64 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'square_size)))
  "Returns full string definition for message of type 'square_size"
  (cl:format cl:nil "float64 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <square_size>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <square_size>))
  "Converts a ROS message object to a list"
  (cl:list 'square_size
    (cl:cons ':size (size msg))
))
