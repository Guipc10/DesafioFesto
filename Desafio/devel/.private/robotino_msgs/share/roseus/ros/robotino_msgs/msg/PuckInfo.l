;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::PuckInfo)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'PuckInfo (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::PUCKINFO")
  (make-package "ROBOTINO_MSGS::PUCKINFO"))

(in-package "ROS")
;;//! \htmlinclude PuckInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotino_msgs::PuckInfo
  :super ros::object
  :slots (_color _centroid ))

(defmethod robotino_msgs::PuckInfo
  (:init
   (&key
    ((:color __color) 0)
    ((:centroid __centroid) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _centroid __centroid)
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:serialization-length
   ()
   (+
    ;; uint32 _color
    4
    ;; geometry_msgs/Pose2D _centroid
    (send _centroid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _color
       (write-long _color s)
     ;; geometry_msgs/Pose2D _centroid
       (send _centroid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose2D _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;;
   self)
  )

(setf (get robotino_msgs::PuckInfo :md5sum-) "522af20247389e6ad2ff7441c7cbfe87")
(setf (get robotino_msgs::PuckInfo :datatype-) "robotino_msgs/PuckInfo")
(setf (get robotino_msgs::PuckInfo :definition-)
      "uint32 color
geometry_msgs/Pose2D centroid

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :robotino_msgs/PuckInfo "522af20247389e6ad2ff7441c7cbfe87")


