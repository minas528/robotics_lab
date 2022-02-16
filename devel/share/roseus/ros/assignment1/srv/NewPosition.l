;; Auto-generated. Do not edit!


(when (boundp 'assignment1::NewPosition)
  (if (not (find-package "ASSIGNMENT1"))
    (make-package "ASSIGNMENT1"))
  (shadow 'NewPosition (find-package "ASSIGNMENT1")))
(unless (find-package "ASSIGNMENT1::NEWPOSITION")
  (make-package "ASSIGNMENT1::NEWPOSITION"))
(unless (find-package "ASSIGNMENT1::NEWPOSITIONREQUEST")
  (make-package "ASSIGNMENT1::NEWPOSITIONREQUEST"))
(unless (find-package "ASSIGNMENT1::NEWPOSITIONRESPONSE")
  (make-package "ASSIGNMENT1::NEWPOSITIONRESPONSE"))

(in-package "ROS")





(defclass assignment1::NewPositionRequest
  :super ros::object
  :slots (_x _y _z _alpha _beta _gamma _d ))

(defmethod assignment1::NewPositionRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:alpha __alpha) 0.0)
    ((:beta __beta) 0.0)
    ((:gamma __gamma) 0.0)
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _alpha (float __alpha))
   (setq _beta (float __beta))
   (setq _gamma (float __gamma))
   (setq _d (float __d))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _alpha
    8
    ;; float64 _beta
    8
    ;; float64 _gamma
    8
    ;; float64 _d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _beta
       (sys::poke _beta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d
       (sys::poke _d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alpha
     (setq _alpha (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _beta
     (setq _beta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gamma
     (setq _gamma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d
     (setq _d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass assignment1::NewPositionResponse
  :super ros::object
  :slots (_xnew _ynew _znew ))

(defmethod assignment1::NewPositionResponse
  (:init
   (&key
    ((:xnew __xnew) 0.0)
    ((:ynew __ynew) 0.0)
    ((:znew __znew) 0.0)
    )
   (send-super :init)
   (setq _xnew (float __xnew))
   (setq _ynew (float __ynew))
   (setq _znew (float __znew))
   self)
  (:xnew
   (&optional __xnew)
   (if __xnew (setq _xnew __xnew)) _xnew)
  (:ynew
   (&optional __ynew)
   (if __ynew (setq _ynew __ynew)) _ynew)
  (:znew
   (&optional __znew)
   (if __znew (setq _znew __znew)) _znew)
  (:serialization-length
   ()
   (+
    ;; float64 _xnew
    8
    ;; float64 _ynew
    8
    ;; float64 _znew
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _xnew
       (sys::poke _xnew (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ynew
       (sys::poke _ynew (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _znew
       (sys::poke _znew (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _xnew
     (setq _xnew (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ynew
     (setq _ynew (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _znew
     (setq _znew (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass assignment1::NewPosition
  :super ros::object
  :slots ())

(setf (get assignment1::NewPosition :md5sum-) "c122c247df04a12a46d905c9d7c5946b")
(setf (get assignment1::NewPosition :datatype-) "assignment1/NewPosition")
(setf (get assignment1::NewPosition :request) assignment1::NewPositionRequest)
(setf (get assignment1::NewPosition :response) assignment1::NewPositionResponse)

(defmethod assignment1::NewPositionRequest
  (:response () (instance assignment1::NewPositionResponse :init)))

(setf (get assignment1::NewPositionRequest :md5sum-) "c122c247df04a12a46d905c9d7c5946b")
(setf (get assignment1::NewPositionRequest :datatype-) "assignment1/NewPositionRequest")
(setf (get assignment1::NewPositionRequest :definition-)
      "float64 x
float64 y
float64 z
float64 alpha
float64 beta
float64 gamma
float64 d
---
float64 xnew
float64 ynew
float64 znew
")

(setf (get assignment1::NewPositionResponse :md5sum-) "c122c247df04a12a46d905c9d7c5946b")
(setf (get assignment1::NewPositionResponse :datatype-) "assignment1/NewPositionResponse")
(setf (get assignment1::NewPositionResponse :definition-)
      "float64 x
float64 y
float64 z
float64 alpha
float64 beta
float64 gamma
float64 d
---
float64 xnew
float64 ynew
float64 znew
")



(provide :assignment1/NewPosition "c122c247df04a12a46d905c9d7c5946b")


