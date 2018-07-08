;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::DistrCenter)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'DistrCenter (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::DISTRCENTER")
  (make-package "ROBOTINO_MSGS::DISTRCENTER"))

(in-package "ROS")
;;//! \htmlinclude DistrCenter.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotino_msgs::DistrCenter
  :super ros::object
  :slots (_mapPose _goalPose _puck1 _puck2 _isActive ))

(defmethod robotino_msgs::DistrCenter
  (:init
   (&key
    ((:mapPose __mapPose) (instance geometry_msgs::Pose2D :init))
    ((:goalPose __goalPose) (instance geometry_msgs::Pose2D :init))
    ((:puck1 __puck1) 0)
    ((:puck2 __puck2) 0)
    ((:isActive __isActive) nil)
    )
   (send-super :init)
   (setq _mapPose __mapPose)
   (setq _goalPose __goalPose)
   (setq _puck1 (round __puck1))
   (setq _puck2 (round __puck2))
   (setq _isActive __isActive)
   self)
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
  (:puck1
   (&optional __puck1)
   (if __puck1 (setq _puck1 __puck1)) _puck1)
  (:puck2
   (&optional __puck2)
   (if __puck2 (setq _puck2 __puck2)) _puck2)
  (:isActive
   (&optional __isActive)
   (if __isActive (setq _isActive __isActive)) _isActive)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _mapPose
    (send _mapPose :serialization-length)
    ;; geometry_msgs/Pose2D _goalPose
    (send _goalPose :serialization-length)
    ;; int32 _puck1
    4
    ;; int32 _puck2
    4
    ;; bool _isActive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _mapPose
       (send _mapPose :serialize s)
     ;; geometry_msgs/Pose2D _goalPose
       (send _goalPose :serialize s)
     ;; int32 _puck1
       (write-long _puck1 s)
     ;; int32 _puck2
       (write-long _puck2 s)
     ;; bool _isActive
       (if _isActive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _mapPose
     (send _mapPose :deserialize buf ptr-) (incf ptr- (send _mapPose :serialization-length))
   ;; geometry_msgs/Pose2D _goalPose
     (send _goalPose :deserialize buf ptr-) (incf ptr- (send _goalPose :serialization-length))
   ;; int32 _puck1
     (setq _puck1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _puck2
     (setq _puck2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _isActive
     (setq _isActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotino_msgs::DistrCenter :md5sum-) "9922e6e657a68d27d810667d48393520")
(setf (get robotino_msgs::DistrCenter :datatype-) "robotino_msgs/DistrCenter")
(setf (get robotino_msgs::DistrCenter :definition-)
      "geometry_msgs/Pose2D mapPose
geometry_msgs/Pose2D goalPose
int32 puck1
int32 puck2
bool isActive


================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :robotino_msgs/DistrCenter "9922e6e657a68d27d810667d48393520")


