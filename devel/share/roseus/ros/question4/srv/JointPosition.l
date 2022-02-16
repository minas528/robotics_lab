;; Auto-generated. Do not edit!


(when (boundp 'question4::JointPosition)
  (if (not (find-package "QUESTION4"))
    (make-package "QUESTION4"))
  (shadow 'JointPosition (find-package "QUESTION4")))
(unless (find-package "QUESTION4::JOINTPOSITION")
  (make-package "QUESTION4::JOINTPOSITION"))
(unless (find-package "QUESTION4::JOINTPOSITIONREQUEST")
  (make-package "QUESTION4::JOINTPOSITIONREQUEST"))
(unless (find-package "QUESTION4::JOINTPOSITIONRESPONSE")
  (make-package "QUESTION4::JOINTPOSITIONRESPONSE"))

(in-package "ROS")





(defclass question4::JointPositionRequest
  :super ros::object
  :slots (_first _second _third _fourth ))

(defmethod question4::JointPositionRequest
  (:init
   (&key
    ((:first __first) 0.0)
    ((:second __second) 0.0)
    ((:third __third) 0.0)
    ((:fourth __fourth) 0.0)
    )
   (send-super :init)
   (setq _first (float __first))
   (setq _second (float __second))
   (setq _third (float __third))
   (setq _fourth (float __fourth))
   self)
  (:first
   (&optional __first)
   (if __first (setq _first __first)) _first)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:third
   (&optional __third)
   (if __third (setq _third __third)) _third)
  (:fourth
   (&optional __fourth)
   (if __fourth (setq _fourth __fourth)) _fourth)
  (:serialization-length
   ()
   (+
    ;; float64 _first
    8
    ;; float64 _second
    8
    ;; float64 _third
    8
    ;; float64 _fourth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _first
       (sys::poke _first (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _second
       (sys::poke _second (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _third
       (sys::poke _third (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fourth
       (sys::poke _fourth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _first
     (setq _first (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _second
     (setq _second (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _third
     (setq _third (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fourth
     (setq _fourth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass question4::JointPositionResponse
  :super ros::object
  :slots ())

(defmethod question4::JointPositionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass question4::JointPosition
  :super ros::object
  :slots ())

(setf (get question4::JointPosition :md5sum-) "2a535115e63a8d55f9b2d3b373b8ddaa")
(setf (get question4::JointPosition :datatype-) "question4/JointPosition")
(setf (get question4::JointPosition :request) question4::JointPositionRequest)
(setf (get question4::JointPosition :response) question4::JointPositionResponse)

(defmethod question4::JointPositionRequest
  (:response () (instance question4::JointPositionResponse :init)))

(setf (get question4::JointPositionRequest :md5sum-) "2a535115e63a8d55f9b2d3b373b8ddaa")
(setf (get question4::JointPositionRequest :datatype-) "question4/JointPositionRequest")
(setf (get question4::JointPositionRequest :definition-)
      "float64 first
float64 second
float64 third
float64 fourth
---
")

(setf (get question4::JointPositionResponse :md5sum-) "2a535115e63a8d55f9b2d3b373b8ddaa")
(setf (get question4::JointPositionResponse :datatype-) "question4/JointPositionResponse")
(setf (get question4::JointPositionResponse :definition-)
      "float64 first
float64 second
float64 third
float64 fourth
---
")



(provide :question4/JointPosition "2a535115e63a8d55f9b2d3b373b8ddaa")


