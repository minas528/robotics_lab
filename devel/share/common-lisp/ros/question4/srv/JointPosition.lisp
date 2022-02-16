; Auto-generated. Do not edit!


(cl:in-package question4-srv)


;//! \htmlinclude JointPosition-request.msg.html

(cl:defclass <JointPosition-request> (roslisp-msg-protocol:ros-message)
  ((first
    :reader first
    :initarg :first
    :type cl:float
    :initform 0.0)
   (second
    :reader second
    :initarg :second
    :type cl:float
    :initform 0.0)
   (third
    :reader third
    :initarg :third
    :type cl:float
    :initform 0.0)
   (fourth
    :reader fourth
    :initarg :fourth
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointPosition-request (<JointPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name question4-srv:<JointPosition-request> is deprecated: use question4-srv:JointPosition-request instead.")))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <JointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question4-srv:first-val is deprecated.  Use question4-srv:first instead.")
  (first m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <JointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question4-srv:second-val is deprecated.  Use question4-srv:second instead.")
  (second m))

(cl:ensure-generic-function 'third-val :lambda-list '(m))
(cl:defmethod third-val ((m <JointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question4-srv:third-val is deprecated.  Use question4-srv:third instead.")
  (third m))

(cl:ensure-generic-function 'fourth-val :lambda-list '(m))
(cl:defmethod fourth-val ((m <JointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question4-srv:fourth-val is deprecated.  Use question4-srv:fourth instead.")
  (fourth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointPosition-request>) ostream)
  "Serializes a message object of type '<JointPosition-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'first))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'third))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fourth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointPosition-request>) istream)
  "Deserializes a message object of type '<JointPosition-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'first) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'second) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'third) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fourth) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointPosition-request>)))
  "Returns string type for a service object of type '<JointPosition-request>"
  "question4/JointPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPosition-request)))
  "Returns string type for a service object of type 'JointPosition-request"
  "question4/JointPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointPosition-request>)))
  "Returns md5sum for a message object of type '<JointPosition-request>"
  "2a535115e63a8d55f9b2d3b373b8ddaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointPosition-request)))
  "Returns md5sum for a message object of type 'JointPosition-request"
  "2a535115e63a8d55f9b2d3b373b8ddaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointPosition-request>)))
  "Returns full string definition for message of type '<JointPosition-request>"
  (cl:format cl:nil "float64 first~%float64 second~%float64 third~%float64 fourth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointPosition-request)))
  "Returns full string definition for message of type 'JointPosition-request"
  (cl:format cl:nil "float64 first~%float64 second~%float64 third~%float64 fourth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointPosition-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointPosition-request
    (cl:cons ':first (first msg))
    (cl:cons ':second (second msg))
    (cl:cons ':third (third msg))
    (cl:cons ':fourth (fourth msg))
))
;//! \htmlinclude JointPosition-response.msg.html

(cl:defclass <JointPosition-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass JointPosition-response (<JointPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name question4-srv:<JointPosition-response> is deprecated: use question4-srv:JointPosition-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointPosition-response>) ostream)
  "Serializes a message object of type '<JointPosition-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointPosition-response>) istream)
  "Deserializes a message object of type '<JointPosition-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointPosition-response>)))
  "Returns string type for a service object of type '<JointPosition-response>"
  "question4/JointPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPosition-response)))
  "Returns string type for a service object of type 'JointPosition-response"
  "question4/JointPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointPosition-response>)))
  "Returns md5sum for a message object of type '<JointPosition-response>"
  "2a535115e63a8d55f9b2d3b373b8ddaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointPosition-response)))
  "Returns md5sum for a message object of type 'JointPosition-response"
  "2a535115e63a8d55f9b2d3b373b8ddaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointPosition-response>)))
  "Returns full string definition for message of type '<JointPosition-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointPosition-response)))
  "Returns full string definition for message of type 'JointPosition-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointPosition-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointPosition-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointPosition)))
  'JointPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointPosition)))
  'JointPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPosition)))
  "Returns string type for a service object of type '<JointPosition>"
  "question4/JointPosition")