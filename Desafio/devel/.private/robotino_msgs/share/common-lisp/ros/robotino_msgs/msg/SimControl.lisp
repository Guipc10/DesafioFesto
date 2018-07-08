; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude SimControl.msg.html

(cl:defclass <SimControl> (roslisp-msg-protocol:ros-message)
  ((reset
    :reader reset
    :initarg :reset
    :type cl:boolean
    :initform cl:nil)
   (next
    :reader next
    :initarg :next
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SimControl (<SimControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<SimControl> is deprecated: use robotino_msgs-msg:SimControl instead.")))

(cl:ensure-generic-function 'reset-val :lambda-list '(m))
(cl:defmethod reset-val ((m <SimControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:reset-val is deprecated.  Use robotino_msgs-msg:reset instead.")
  (reset m))

(cl:ensure-generic-function 'next-val :lambda-list '(m))
(cl:defmethod next-val ((m <SimControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:next-val is deprecated.  Use robotino_msgs-msg:next instead.")
  (next m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimControl>) ostream)
  "Serializes a message object of type '<SimControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'next) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimControl>) istream)
  "Deserializes a message object of type '<SimControl>"
    (cl:setf (cl:slot-value msg 'reset) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'next) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimControl>)))
  "Returns string type for a message object of type '<SimControl>"
  "robotino_msgs/SimControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimControl)))
  "Returns string type for a message object of type 'SimControl"
  "robotino_msgs/SimControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimControl>)))
  "Returns md5sum for a message object of type '<SimControl>"
  "e802094d6655f9e712493a08d112dde9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimControl)))
  "Returns md5sum for a message object of type 'SimControl"
  "e802094d6655f9e712493a08d112dde9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimControl>)))
  "Returns full string definition for message of type '<SimControl>"
  (cl:format cl:nil "bool reset~%bool next~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimControl)))
  "Returns full string definition for message of type 'SimControl"
  (cl:format cl:nil "bool reset~%bool next~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimControl>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimControl>))
  "Converts a ROS message object to a list"
  (cl:list 'SimControl
    (cl:cons ':reset (reset msg))
    (cl:cons ':next (next msg))
))
