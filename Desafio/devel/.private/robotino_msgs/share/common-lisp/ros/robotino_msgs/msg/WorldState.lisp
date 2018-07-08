; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude WorldState.msg.html

(cl:defclass <WorldState> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (machAmarela
    :reader machAmarela
    :initarg :machAmarela
    :type cl:integer
    :initform 0)
   (machVermelha
    :reader machVermelha
    :initarg :machVermelha
    :type cl:integer
    :initform 0)
   (machAzul
    :reader machAzul
    :initarg :machAzul
    :type cl:integer
    :initform 0)
   (task
    :reader task
    :initarg :task
    :type cl:integer
    :initform 0)
   (currPuck
    :reader currPuck
    :initarg :currPuck
    :type cl:integer
    :initform 0)
   (machines
    :reader machines
    :initarg :machines
    :type (cl:vector robotino_msgs-msg:Machine)
   :initform (cl:make-array 0 :element-type 'robotino_msgs-msg:Machine :initial-element (cl:make-instance 'robotino_msgs-msg:Machine)))
   (dcs
    :reader dcs
    :initarg :dcs
    :type (cl:vector robotino_msgs-msg:DistrCenter)
   :initform (cl:make-array 0 :element-type 'robotino_msgs-msg:DistrCenter :initial-element (cl:make-instance 'robotino_msgs-msg:DistrCenter)))
   (inAction
    :reader inAction
    :initarg :inAction
    :type cl:boolean
    :initform cl:nil)
   (terminate
    :reader terminate
    :initarg :terminate
    :type cl:boolean
    :initform cl:nil)
   (stuck
    :reader stuck
    :initarg :stuck
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WorldState (<WorldState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorldState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorldState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<WorldState> is deprecated: use robotino_msgs-msg:WorldState instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:stamp-val is deprecated.  Use robotino_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'machAmarela-val :lambda-list '(m))
(cl:defmethod machAmarela-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:machAmarela-val is deprecated.  Use robotino_msgs-msg:machAmarela instead.")
  (machAmarela m))

(cl:ensure-generic-function 'machVermelha-val :lambda-list '(m))
(cl:defmethod machVermelha-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:machVermelha-val is deprecated.  Use robotino_msgs-msg:machVermelha instead.")
  (machVermelha m))

(cl:ensure-generic-function 'machAzul-val :lambda-list '(m))
(cl:defmethod machAzul-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:machAzul-val is deprecated.  Use robotino_msgs-msg:machAzul instead.")
  (machAzul m))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:task-val is deprecated.  Use robotino_msgs-msg:task instead.")
  (task m))

(cl:ensure-generic-function 'currPuck-val :lambda-list '(m))
(cl:defmethod currPuck-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:currPuck-val is deprecated.  Use robotino_msgs-msg:currPuck instead.")
  (currPuck m))

(cl:ensure-generic-function 'machines-val :lambda-list '(m))
(cl:defmethod machines-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:machines-val is deprecated.  Use robotino_msgs-msg:machines instead.")
  (machines m))

(cl:ensure-generic-function 'dcs-val :lambda-list '(m))
(cl:defmethod dcs-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:dcs-val is deprecated.  Use robotino_msgs-msg:dcs instead.")
  (dcs m))

(cl:ensure-generic-function 'inAction-val :lambda-list '(m))
(cl:defmethod inAction-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:inAction-val is deprecated.  Use robotino_msgs-msg:inAction instead.")
  (inAction m))

(cl:ensure-generic-function 'terminate-val :lambda-list '(m))
(cl:defmethod terminate-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:terminate-val is deprecated.  Use robotino_msgs-msg:terminate instead.")
  (terminate m))

(cl:ensure-generic-function 'stuck-val :lambda-list '(m))
(cl:defmethod stuck-val ((m <WorldState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:stuck-val is deprecated.  Use robotino_msgs-msg:stuck instead.")
  (stuck m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorldState>) ostream)
  "Serializes a message object of type '<WorldState>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'machAmarela)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'machVermelha)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'machAzul)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currPuck)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'currPuck)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'currPuck)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'currPuck)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'machines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'machines))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dcs))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inAction) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'terminate) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stuck) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorldState>) istream)
  "Deserializes a message object of type '<WorldState>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'machAmarela) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'machVermelha) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'machAzul) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currPuck)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'currPuck)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'currPuck)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'currPuck)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'machines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'machines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotino_msgs-msg:Machine))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dcs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dcs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotino_msgs-msg:DistrCenter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'inAction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'terminate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stuck) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorldState>)))
  "Returns string type for a message object of type '<WorldState>"
  "robotino_msgs/WorldState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorldState)))
  "Returns string type for a message object of type 'WorldState"
  "robotino_msgs/WorldState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorldState>)))
  "Returns md5sum for a message object of type '<WorldState>"
  "4b2daee63b7ff8016cc89ebef6f22495")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorldState)))
  "Returns md5sum for a message object of type 'WorldState"
  "4b2daee63b7ff8016cc89ebef6f22495")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorldState>)))
  "Returns full string definition for message of type '<WorldState>"
  (cl:format cl:nil "time stamp~%int32 machAmarela~%int32 machVermelha~%int32 machAzul~%uint32 task~%uint32 currPuck~%Machine[] machines~%DistrCenter[] dcs~%bool inAction~%bool terminate~%bool stuck~%~%================================================================================~%MSG: robotino_msgs/Machine~%uint32 id~%geometry_msgs/Pose2D mapPose~%geometry_msgs/Pose2D goalPose~%int32 puck~%bool isActive~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: robotino_msgs/DistrCenter~%geometry_msgs/Pose2D mapPose~%geometry_msgs/Pose2D goalPose~%int32 puck1~%int32 puck2~%bool isActive~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorldState)))
  "Returns full string definition for message of type 'WorldState"
  (cl:format cl:nil "time stamp~%int32 machAmarela~%int32 machVermelha~%int32 machAzul~%uint32 task~%uint32 currPuck~%Machine[] machines~%DistrCenter[] dcs~%bool inAction~%bool terminate~%bool stuck~%~%================================================================================~%MSG: robotino_msgs/Machine~%uint32 id~%geometry_msgs/Pose2D mapPose~%geometry_msgs/Pose2D goalPose~%int32 puck~%bool isActive~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: robotino_msgs/DistrCenter~%geometry_msgs/Pose2D mapPose~%geometry_msgs/Pose2D goalPose~%int32 puck1~%int32 puck2~%bool isActive~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorldState>))
  (cl:+ 0
     8
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'machines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dcs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorldState>))
  "Converts a ROS message object to a list"
  (cl:list 'WorldState
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':machAmarela (machAmarela msg))
    (cl:cons ':machVermelha (machVermelha msg))
    (cl:cons ':machAzul (machAzul msg))
    (cl:cons ':task (task msg))
    (cl:cons ':currPuck (currPuck msg))
    (cl:cons ':machines (machines msg))
    (cl:cons ':dcs (dcs msg))
    (cl:cons ':inAction (inAction msg))
    (cl:cons ':terminate (terminate msg))
    (cl:cons ':stuck (stuck msg))
))
