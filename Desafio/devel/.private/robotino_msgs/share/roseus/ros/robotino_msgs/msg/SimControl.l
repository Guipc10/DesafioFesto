;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::SimControl)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'SimControl (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::SIMCONTROL")
  (make-package "ROBOTINO_MSGS::SIMCONTROL"))

(in-package "ROS")
;;//! \htmlinclude SimControl.msg.html


(defclass robotino_msgs::SimControl
  :super ros::object
  :slots (_reset _next ))

(defmethod robotino_msgs::SimControl
  (:init
   (&key
    ((:reset __reset) nil)
    ((:next __next) nil)
    )
   (send-super :init)
   (setq _reset __reset)
   (setq _next __next)
   self)
  (:reset
   (&optional __reset)
   (if __reset (setq _reset __reset)) _reset)
  (:next
   (&optional __next)
   (if __next (setq _next __next)) _next)
  (:serialization-length
   ()
   (+
    ;; bool _reset
    1
    ;; bool _next
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reset
       (if _reset (write-byte -1 s) (write-byte 0 s))
     ;; bool _next
       (if _next (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reset
     (setq _reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _next
     (setq _next (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotino_msgs::SimControl :md5sum-) "e802094d6655f9e712493a08d112dde9")
(setf (get robotino_msgs::SimControl :datatype-) "robotino_msgs/SimControl")
(setf (get robotino_msgs::SimControl :definition-)
      "bool reset
bool next

")



(provide :robotino_msgs/SimControl "e802094d6655f9e712493a08d112dde9")


