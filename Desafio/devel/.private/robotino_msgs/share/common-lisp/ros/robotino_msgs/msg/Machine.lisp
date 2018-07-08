; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude Machine.msg.html

(cl:defclass <Machine> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (mapPose
    :reader mapPose
    :initarg :mapPose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (goalPose
    :reader goalPose
    :initarg :goalPose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (puck
    :reader puck
    :initarg :puck
    :type cl:integer
    :initform 0)
   (isActive
    :reader isActive
    :initarg :isActive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Machine (<Machine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Machine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Machine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<Machine> is deprecated: use robotino_msgs-msg:Machine instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Machine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:id-val is deprecated.  Use robotino_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'mapPose-val :lambda-list '(m))
(cl:defmethod mapPose-val ((m <Machine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:mapPose-val is deprecated.  Use robotino_msgs-msg:mapPose instead.")
  (mapPose m))

(cl:ensure-generic-function 'goalPose-val :lambda-list '(m))
(cl:defmethod goalPose-val ((m <Machine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:goalPose-val is deprecated.  Use robotino_msgs-msg:goalPose instead.")
  (goalPose m))

(cl:ensure-generic-function 'puck-val :lambda-list '(m))
(cl:defmethod puck-val ((m <Machine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:puck-val is deprecated.  Use robotino_msgs-msg:puck instead.")
  (puck m))

(cl:ensure-generic-function 'isActive-val :lambda-list '(m))
(cl:defmethod isActive-val ((m <Machine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:isActive-val is deprecated.  Use robotino_msgs-msg:isActive instead.")
  (isActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Machine>) ostream)
  "Serializes a message object of type '<Machine>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mapPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goalPose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'puck)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isActive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Machine>) istream)
  "Deserializes a message object of type '<Machine>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mapPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goalPose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'puck) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'isActive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Machine>)))
  "Returns string type for a message object of type '<Machine>"
  "robotino_msgs/Machine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Machine)))
  "Returns string type for a message object of type 'Machine"
  "robotino_msgs/Machine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Machine>)))
  "Returns md5sum for a message object of type '<Machine>"
  "296941a7aa4333c9bbbf3c51b0688e02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Machine)))
  "Returns md5sum for a message object of type 'Machine"
  "296941a7aa4333c9bbbf3c51b0688e02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Machine>)))
  "Returns full string definition for message of type '<Machine>"
  (cl:format cl:nil "uint32 id~%geometry_msgs/Pose2D mapPose~%geometry_msgs/Pose2D goalPose~%int32 puck~%bool isActive~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Machine)))
  "Returns full string definition for message of type 'Machine"
  (cl:format cl:nil "uint32 id~%geometry_msgs/Pose2D mapPose~%geometry_msgs/Pose2D goalPose~%int32 puck~%bool isActive~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Machine>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mapPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goalPose))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Machine>))
  "Converts a ROS message object to a list"
  (cl:list 'Machine
    (cl:cons ':id (id msg))
    (cl:cons ':mapPose (mapPose msg))
    (cl:cons ':goalPose (goalPose msg))
    (cl:cons ':puck (puck msg))
    (cl:cons ':isActive (isActive msg))
))
