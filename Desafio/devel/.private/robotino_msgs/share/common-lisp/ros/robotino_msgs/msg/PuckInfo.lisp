; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude PuckInfo.msg.html

(cl:defclass <PuckInfo> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0)
   (centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass PuckInfo (<PuckInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PuckInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PuckInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<PuckInfo> is deprecated: use robotino_msgs-msg:PuckInfo instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <PuckInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:color-val is deprecated.  Use robotino_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <PuckInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:centroid-val is deprecated.  Use robotino_msgs-msg:centroid instead.")
  (centroid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PuckInfo>) ostream)
  "Serializes a message object of type '<PuckInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PuckInfo>) istream)
  "Deserializes a message object of type '<PuckInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PuckInfo>)))
  "Returns string type for a message object of type '<PuckInfo>"
  "robotino_msgs/PuckInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PuckInfo)))
  "Returns string type for a message object of type 'PuckInfo"
  "robotino_msgs/PuckInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PuckInfo>)))
  "Returns md5sum for a message object of type '<PuckInfo>"
  "522af20247389e6ad2ff7441c7cbfe87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PuckInfo)))
  "Returns md5sum for a message object of type 'PuckInfo"
  "522af20247389e6ad2ff7441c7cbfe87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PuckInfo>)))
  "Returns full string definition for message of type '<PuckInfo>"
  (cl:format cl:nil "uint32 color~%geometry_msgs/Pose2D centroid~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PuckInfo)))
  "Returns full string definition for message of type 'PuckInfo"
  (cl:format cl:nil "uint32 color~%geometry_msgs/Pose2D centroid~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PuckInfo>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PuckInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PuckInfo
    (cl:cons ':color (color msg))
    (cl:cons ':centroid (centroid msg))
))
