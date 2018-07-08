; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude StateId.msg.html

(cl:defclass <StateId> (roslisp-msg-protocol:ros-message)
  ((training
    :reader training
    :initarg :training
    :type cl:boolean
    :initform cl:nil)
   (state_id
    :reader state_id
    :initarg :state_id
    :type cl:integer
    :initform 0)
   (reward
    :reader reward
    :initarg :reward
    :type cl:integer
    :initform 0))
)

(cl:defclass StateId (<StateId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<StateId> is deprecated: use robotino_msgs-msg:StateId instead.")))

(cl:ensure-generic-function 'training-val :lambda-list '(m))
(cl:defmethod training-val ((m <StateId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:training-val is deprecated.  Use robotino_msgs-msg:training instead.")
  (training m))

(cl:ensure-generic-function 'state_id-val :lambda-list '(m))
(cl:defmethod state_id-val ((m <StateId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:state_id-val is deprecated.  Use robotino_msgs-msg:state_id instead.")
  (state_id m))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <StateId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:reward-val is deprecated.  Use robotino_msgs-msg:reward instead.")
  (reward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateId>) ostream)
  "Serializes a message object of type '<StateId>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'training) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'state_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'state_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'state_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'state_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'state_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'state_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reward)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateId>) istream)
  "Deserializes a message object of type '<StateId>"
    (cl:setf (cl:slot-value msg 'training) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reward) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateId>)))
  "Returns string type for a message object of type '<StateId>"
  "robotino_msgs/StateId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateId)))
  "Returns string type for a message object of type 'StateId"
  "robotino_msgs/StateId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateId>)))
  "Returns md5sum for a message object of type '<StateId>"
  "2b7ffe1334bdc2699a7de52a539949b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateId)))
  "Returns md5sum for a message object of type 'StateId"
  "2b7ffe1334bdc2699a7de52a539949b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateId>)))
  "Returns full string definition for message of type '<StateId>"
  (cl:format cl:nil "bool training~%uint64 state_id~%int64 reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateId)))
  "Returns full string definition for message of type 'StateId"
  (cl:format cl:nil "bool training~%uint64 state_id~%int64 reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateId>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateId>))
  "Converts a ROS message object to a list"
  (cl:list 'StateId
    (cl:cons ':training (training msg))
    (cl:cons ':state_id (state_id msg))
    (cl:cons ':reward (reward msg))
))
