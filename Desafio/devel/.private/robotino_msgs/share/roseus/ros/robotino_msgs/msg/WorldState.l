;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::WorldState)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'WorldState (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::WORLDSTATE")
  (make-package "ROBOTINO_MSGS::WORLDSTATE"))

(in-package "ROS")
;;//! \htmlinclude WorldState.msg.html


(defclass robotino_msgs::WorldState
  :super ros::object
  :slots (_stamp _machAmarela _machVermelha _machAzul _task _currPuck _machines _dcs _inAction _terminate _stuck ))

(defmethod robotino_msgs::WorldState
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:machAmarela __machAmarela) 0)
    ((:machVermelha __machVermelha) 0)
    ((:machAzul __machAzul) 0)
    ((:task __task) 0)
    ((:currPuck __currPuck) 0)
    ((:machines __machines) (let (r) (dotimes (i 0) (push (instance robotino_msgs::Machine :init) r)) r))
    ((:dcs __dcs) (let (r) (dotimes (i 0) (push (instance robotino_msgs::DistrCenter :init) r)) r))
    ((:inAction __inAction) nil)
    ((:terminate __terminate) nil)
    ((:stuck __stuck) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _machAmarela (round __machAmarela))
   (setq _machVermelha (round __machVermelha))
   (setq _machAzul (round __machAzul))
   (setq _task (round __task))
   (setq _currPuck (round __currPuck))
   (setq _machines __machines)
   (setq _dcs __dcs)
   (setq _inAction __inAction)
   (setq _terminate __terminate)
   (setq _stuck __stuck)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:machAmarela
   (&optional __machAmarela)
   (if __machAmarela (setq _machAmarela __machAmarela)) _machAmarela)
  (:machVermelha
   (&optional __machVermelha)
   (if __machVermelha (setq _machVermelha __machVermelha)) _machVermelha)
  (:machAzul
   (&optional __machAzul)
   (if __machAzul (setq _machAzul __machAzul)) _machAzul)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:currPuck
   (&optional __currPuck)
   (if __currPuck (setq _currPuck __currPuck)) _currPuck)
  (:machines
   (&rest __machines)
   (if (keywordp (car __machines))
       (send* _machines __machines)
     (progn
       (if __machines (setq _machines (car __machines)))
       _machines)))
  (:dcs
   (&rest __dcs)
   (if (keywordp (car __dcs))
       (send* _dcs __dcs)
     (progn
       (if __dcs (setq _dcs (car __dcs)))
       _dcs)))
  (:inAction
   (&optional __inAction)
   (if __inAction (setq _inAction __inAction)) _inAction)
  (:terminate
   (&optional __terminate)
   (if __terminate (setq _terminate __terminate)) _terminate)
  (:stuck
   (&optional __stuck)
   (if __stuck (setq _stuck __stuck)) _stuck)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _machAmarela
    4
    ;; int32 _machVermelha
    4
    ;; int32 _machAzul
    4
    ;; uint32 _task
    4
    ;; uint32 _currPuck
    4
    ;; robotino_msgs/Machine[] _machines
    (apply #'+ (send-all _machines :serialization-length)) 4
    ;; robotino_msgs/DistrCenter[] _dcs
    (apply #'+ (send-all _dcs :serialization-length)) 4
    ;; bool _inAction
    1
    ;; bool _terminate
    1
    ;; bool _stuck
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _machAmarela
       (write-long _machAmarela s)
     ;; int32 _machVermelha
       (write-long _machVermelha s)
     ;; int32 _machAzul
       (write-long _machAzul s)
     ;; uint32 _task
       (write-long _task s)
     ;; uint32 _currPuck
       (write-long _currPuck s)
     ;; robotino_msgs/Machine[] _machines
     (write-long (length _machines) s)
     (dolist (elem _machines)
       (send elem :serialize s)
       )
     ;; robotino_msgs/DistrCenter[] _dcs
     (write-long (length _dcs) s)
     (dolist (elem _dcs)
       (send elem :serialize s)
       )
     ;; bool _inAction
       (if _inAction (write-byte -1 s) (write-byte 0 s))
     ;; bool _terminate
       (if _terminate (write-byte -1 s) (write-byte 0 s))
     ;; bool _stuck
       (if _stuck (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _machAmarela
     (setq _machAmarela (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _machVermelha
     (setq _machVermelha (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _machAzul
     (setq _machAzul (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _task
     (setq _task (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _currPuck
     (setq _currPuck (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; robotino_msgs/Machine[] _machines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _machines (let (r) (dotimes (i n) (push (instance robotino_msgs::Machine :init) r)) r))
     (dolist (elem- _machines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robotino_msgs/DistrCenter[] _dcs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dcs (let (r) (dotimes (i n) (push (instance robotino_msgs::DistrCenter :init) r)) r))
     (dolist (elem- _dcs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _inAction
     (setq _inAction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _terminate
     (setq _terminate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stuck
     (setq _stuck (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotino_msgs::WorldState :md5sum-) "4b2daee63b7ff8016cc89ebef6f22495")
(setf (get robotino_msgs::WorldState :datatype-) "robotino_msgs/WorldState")
(setf (get robotino_msgs::WorldState :definition-)
      "time stamp
int32 machAmarela
int32 machVermelha
int32 machAzul
uint32 task
uint32 currPuck
Machine[] machines
DistrCenter[] dcs
bool inAction
bool terminate
bool stuck

================================================================================
MSG: robotino_msgs/Machine
uint32 id
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
================================================================================
MSG: robotino_msgs/DistrCenter
geometry_msgs/Pose2D mapPose
geometry_msgs/Pose2D goalPose
int32 puck1
int32 puck2
bool isActive


")



(provide :robotino_msgs/WorldState "4b2daee63b7ff8016cc89ebef6f22495")


