; Auto-generated. Do not edit!


(cl:in-package ros_mhmlt_msgs-srv)


;//! \htmlinclude mhmlt_control_service-request.msg.html

(cl:defclass <mhmlt_control_service-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass mhmlt_control_service-request (<mhmlt_control_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mhmlt_control_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mhmlt_control_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mhmlt_msgs-srv:<mhmlt_control_service-request> is deprecated: use ros_mhmlt_msgs-srv:mhmlt_control_service-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <mhmlt_control_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mhmlt_msgs-srv:command-val is deprecated.  Use ros_mhmlt_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mhmlt_control_service-request>) ostream)
  "Serializes a message object of type '<mhmlt_control_service-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mhmlt_control_service-request>) istream)
  "Deserializes a message object of type '<mhmlt_control_service-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mhmlt_control_service-request>)))
  "Returns string type for a service object of type '<mhmlt_control_service-request>"
  "ros_mhmlt_msgs/mhmlt_control_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mhmlt_control_service-request)))
  "Returns string type for a service object of type 'mhmlt_control_service-request"
  "ros_mhmlt_msgs/mhmlt_control_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mhmlt_control_service-request>)))
  "Returns md5sum for a message object of type '<mhmlt_control_service-request>"
  "22c7c465d64c7e74c6ae22029c7ca150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mhmlt_control_service-request)))
  "Returns md5sum for a message object of type 'mhmlt_control_service-request"
  "22c7c465d64c7e74c6ae22029c7ca150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mhmlt_control_service-request>)))
  "Returns full string definition for message of type '<mhmlt_control_service-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mhmlt_control_service-request)))
  "Returns full string definition for message of type 'mhmlt_control_service-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mhmlt_control_service-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mhmlt_control_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mhmlt_control_service-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude mhmlt_control_service-response.msg.html

(cl:defclass <mhmlt_control_service-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass mhmlt_control_service-response (<mhmlt_control_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mhmlt_control_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mhmlt_control_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mhmlt_msgs-srv:<mhmlt_control_service-response> is deprecated: use ros_mhmlt_msgs-srv:mhmlt_control_service-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <mhmlt_control_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mhmlt_msgs-srv:response-val is deprecated.  Use ros_mhmlt_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mhmlt_control_service-response>) ostream)
  "Serializes a message object of type '<mhmlt_control_service-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mhmlt_control_service-response>) istream)
  "Deserializes a message object of type '<mhmlt_control_service-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mhmlt_control_service-response>)))
  "Returns string type for a service object of type '<mhmlt_control_service-response>"
  "ros_mhmlt_msgs/mhmlt_control_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mhmlt_control_service-response)))
  "Returns string type for a service object of type 'mhmlt_control_service-response"
  "ros_mhmlt_msgs/mhmlt_control_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mhmlt_control_service-response>)))
  "Returns md5sum for a message object of type '<mhmlt_control_service-response>"
  "22c7c465d64c7e74c6ae22029c7ca150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mhmlt_control_service-response)))
  "Returns md5sum for a message object of type 'mhmlt_control_service-response"
  "22c7c465d64c7e74c6ae22029c7ca150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mhmlt_control_service-response>)))
  "Returns full string definition for message of type '<mhmlt_control_service-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mhmlt_control_service-response)))
  "Returns full string definition for message of type 'mhmlt_control_service-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mhmlt_control_service-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mhmlt_control_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mhmlt_control_service-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mhmlt_control_service)))
  'mhmlt_control_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mhmlt_control_service)))
  'mhmlt_control_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mhmlt_control_service)))
  "Returns string type for a service object of type '<mhmlt_control_service>"
  "ros_mhmlt_msgs/mhmlt_control_service")