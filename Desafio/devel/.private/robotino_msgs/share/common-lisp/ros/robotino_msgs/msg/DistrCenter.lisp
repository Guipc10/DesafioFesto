; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude DistrCenter.msg.html

(cl:defclass <DistrCenter> (roslisp-msg-protocol:ros-message)
  ((mapPose
    :reader mapPose
    :initarg :mapPose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (goalPose
    :reader goalPose
    :initarg :goalPose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (puck1
    :reader puck1
    :initarg :puck1
    :type cl:integer
    :initform 0)
   (puck2
    :reader puck2
    :initarg :puck2
    :type cl:integer
    :initform 0)
   (isActive
    :reader isActive
    :initarg :isActive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DistrCenter (<DistrCenter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DistrCenter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DistrCenter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<DistrCenter> is deprecated: use robotino_msgs-msg:DistrCenter instead.")))

(cl:ensure-generic-function 'mapPose-val :lambda-list '(m))
(cl:defmethod mapPose-val ((m <DistrCenter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:mapPose-val is deprecated.  Use robotino_msgs-msg:mapPose instead.")
  (mapPose m))

(cl:ensure-generic-function 'goalPose-val :lambda-list '(m))
(cl:defmethod goalPose-val ((m <DistrCenter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:goalPose-val is deprecated.  Use robotino_msgs-msg:goalPose instead.")
  (goalPose m))

(cl:ensure-generic-function 'puck1-val :lambda-list '(m))
(cl:defmethod puck1-val ((m <DistrCenter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:puck1-val is deprecated.  Use robotino_msgs-msg:puck1 instead.")
  (puck1 m))

(cl:ensure-generic-function 'puck2-val :lambda-list '(m))
(cl:defmethod puck2-val ((m <DistrCenter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:puck2-val is deprecated.  Use robotino_msgs-msg:puck2 instead.")
  (puck2 m))

(cl:ensure-generic-function 'isActive-val :lambda-list '(m))
(cl:defmethod isActive-val ((m <DistrCenter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:isActive-val is deprecated.  Use robotino_msgs-msg:isActive instead.")
  (isActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DistrCenter>) ostream)
  "Serializes a message object of type '<DistrCenter>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mapPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goalPose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'puck1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'puck2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isActive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DistrCenter>) istream)
  "Deserializes a message object of type '<DistrCenter>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mapPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goalPose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'puck1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'puck2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'isActive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DistrCenter>)))
  "Returns string type for a message object of type '<DistrCenter>"
  "robotino_msgs/DistrCenter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DistrCenter)))
  "Returns string type for a message object of type 'DistrCenter"
  "robotino_msgs/DistrCenter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DistrCenter>)))
  "Returns md5sum for a message object of type '<DistrCenter>"
  "9922e6e657a68d27d810667d48393520")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DistrCenter)))
  "Returns md5sum for a message object of type 'DistrCenter"
  "9922e6e657a68d27d810667d48393520")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DistrCenter>)))
  "Returns full string definition for message of type '<DistrCenter>"
  (cl:format cl:nil "geometry_msgs/Pose2D mapPose~%geometry_msgs/Pose2D goalPose~%int32 puck1~%int32 puck2~%bool isActive~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DistrCenter)))
  "Returns full string definition for message of type 'DistrCenter"
  (cl:format cl:nil "geometry_msgs/Pose2D mapPose~%geometry_msgs/Pose2D goalPose~%int32 puck1~%int32 puck2~%bool isActive~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DistrCenter>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mapPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goalPose))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DistrCenter>))
  "Converts a ROS message object to a list"
  (cl:list 'DistrCenter
    (cl:cons ':mapPose (mapPose msg))
    (cl:cons ':goalPose (goalPose msg))
    (cl:cons ':puck1 (puck1 msg))
    (cl:cons ':puck2 (puck2 msg))
    (cl:cons ':isActive (isActive msg))
))
