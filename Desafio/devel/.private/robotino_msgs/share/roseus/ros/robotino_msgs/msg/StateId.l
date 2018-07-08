;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::StateId)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'StateId (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::STATEID")
  (make-package "ROBOTINO_MSGS::STATEID"))

(in-package "ROS")
;;//! \htmlinclude StateId.msg.html


(defclass robotino_msgs::StateId
  :super ros::object
  :slots (_training _state_id _reward ))

(defmethod robotino_msgs::StateId
  (:init
   (&key
    ((:training __training) nil)
    ((:state_id __state_id) 0)
    ((:reward __reward) 0)
    )
   (send-super :init)
   (setq _training __training)
   (setq _state_id (round __state_id))
   (setq _reward (round __reward))
   self)
  (:training
   (&optional __training)
   (if __training (setq _training __training)) _training)
  (:state_id
   (&optional __state_id)
   (if __state_id (setq _state_id __state_id)) _state_id)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:serialization-length
   ()
   (+
    ;; bool _training
    1
    ;; uint64 _state_id
    8
    ;; int64 _reward
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _training
       (if _training (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _state_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _state_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _state_id) (= (length (_state_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_state_id . bv) 0) 0) s)
              (write-long (ash (elt (_state_id . bv) 1) -1) s))
             ((and (class _state_id) (= (length (_state_id . bv)) 1)) ;; big1
              (write-long (elt (_state_id . bv) 0) s)
              (write-long (if (>= _state_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _state_id s)(write-long (if (>= _state_id 0) 0 #xffffffff) s)))
     ;; int64 _reward
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reward (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reward) (= (length (_reward . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reward . bv) 0) 0) s)
              (write-long (ash (elt (_reward . bv) 1) -1) s))
             ((and (class _reward) (= (length (_reward . bv)) 1)) ;; big1
              (write-long (elt (_reward . bv) 0) s)
              (write-long (if (>= _reward 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reward s)(write-long (if (>= _reward 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _training
     (setq _training (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _state_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _state_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _state_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _reward
#+(or :alpha :irix6 :x86_64)
      (setf _reward (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reward (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get robotino_msgs::StateId :md5sum-) "2b7ffe1334bdc2699a7de52a539949b4")
(setf (get robotino_msgs::StateId :datatype-) "robotino_msgs/StateId")
(setf (get robotino_msgs::StateId :definition-)
      "bool training
uint64 state_id
int64 reward

")



(provide :robotino_msgs/StateId "2b7ffe1334bdc2699a7de52a539949b4")


