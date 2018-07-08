;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::Machine)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'Machine (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::MACHINE")
  (make-package "ROBOTINO_MSGS::MACHINE"))

(in-package "ROS")
;;//! \htmlinclude Machine.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotino_msgs::Machine
  :super ros::object
  :slots (_id _mapPose _goalPose _puck _isActive ))

(defmethod robotino_msgs::Machine
  (:init
   (&key
    ((:id __id) 0)
    ((:mapPose __mapPose) (instance geometry_msgs::Pose2D :init))
    ((:goalPose __goalPose) (instance geometry_msgs::Pose2D :init))
    ((:puck __puck) 0)
    ((:isActive __isActive) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _mapPose __mapPose)
   (setq _goalPose __goalPose)
   (setq _puck (round __puck))
   (setq _isActive __isActive)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:mapPose
   (&rest __mapPose)
   (if (keywordp (car __mapPose))
       (send* _mapPose __mapPose)
     (progn
       (if __mapPose (setq _mapPose (car __mapPose)))
       _mapPose)))
  (:goalPose
   (&rest __goalPose)
   (if (keywordp (car __goalPose))
       (send* _goalPose __goalPose)
     (progn
       (if __goalPose (setq _goalPose (car __goalPose)))
       _goalPose)))
  (:puck
   (&optional __puck)
   (if __puck (setq _puck __puck)) _puck)
  (:isActive
   (&optional __isActive)
   (if __isActive (setq _isActive __isActive)) _isActive)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; geometry_msgs/Pose2D _mapPose
    (send _mapPose :serialization-length)
    ;; geometry_msgs/Pose2D _goalPose
    (send _goalPose :serialization-length)
    ;; int32 _puck
    4
    ;; bool _isActive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Pose2D _mapPose
       (send _mapPose :serialize s)
     ;; geometry_msgs/Pose2D _goalPose
       (send _goalPose :serialize s)
     ;; int32 _puck
       (write-long _puck s)
     ;; bool _isActive
       (if _isActive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose2D _mapPose
     (send _mapPose :deserialize buf ptr-) (incf ptr- (send _mapPose :serialization-length))
   ;; geometry_msgs/Pose2D _goalPose
     (send _goalPose :deserialize buf ptr-) (incf ptr- (send _goalPose :serialization-length))
   ;; int32 _puck
     (setq _puck (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _isActive
     (setq _isActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotino_msgs::Machine :md5sum-) "296941a7aa4333c9bbbf3c51b0688e02")
(setf (get robotino_msgs::Machine :datatype-) "robotino_msgs/Machine")
(setf (get robotino_msgs::Machine :definition-)
      "uint32 id
geometry_msgs/Pose2D mapPose
geometry_msgs/Pose2D goalPose
int32 puck
bool isActive




================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :robotino_msgs/Machine "296941a7aa4333c9bbbf3c51b0688e02")


