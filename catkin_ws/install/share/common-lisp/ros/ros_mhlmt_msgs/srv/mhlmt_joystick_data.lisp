; Auto-generated. Do not edit!


(cl:in-package ros_mhlmt_msgs-srv)


;//! \htmlinclude mhlmt_joystick_data-request.msg.html

(cl:defclass <mhlmt_joystick_data-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mhlmt_joystick_data-request (<mhlmt_joystick_data-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mhlmt_joystick_data-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mhlmt_joystick_data-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mhlmt_msgs-srv:<mhlmt_joystick_data-request> is deprecated: use ros_mhlmt_msgs-srv:mhlmt_joystick_data-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <mhlmt_joystick_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mhlmt_msgs-srv:state-val is deprecated.  Use ros_mhlmt_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mhlmt_joystick_data-request>) ostream)
  "Serializes a message object of type '<mhlmt_joystick_data-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mhlmt_joystick_data-request>) istream)
  "Deserializes a message object of type '<mhlmt_joystick_data-request>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mhlmt_joystick_data-request>)))
  "Returns string type for a service object of type '<mhlmt_joystick_data-request>"
  "ros_mhlmt_msgs/mhlmt_joystick_dataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mhlmt_joystick_data-request)))
  "Returns string type for a service object of type 'mhlmt_joystick_data-request"
  "ros_mhlmt_msgs/mhlmt_joystick_dataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mhlmt_joystick_data-request>)))
  "Returns md5sum for a message object of type '<mhlmt_joystick_data-request>"
  "1329a64fad65e08bad5df97dce71b9e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mhlmt_joystick_data-request)))
  "Returns md5sum for a message object of type 'mhlmt_joystick_data-request"
  "1329a64fad65e08bad5df97dce71b9e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mhlmt_joystick_data-request>)))
  "Returns full string definition for message of type '<mhlmt_joystick_data-request>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mhlmt_joystick_data-request)))
  "Returns full string definition for message of type 'mhlmt_joystick_data-request"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mhlmt_joystick_data-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mhlmt_joystick_data-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mhlmt_joystick_data-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude mhlmt_joystick_data-response.msg.html

(cl:defclass <mhlmt_joystick_data-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil)
   (joystick_data
    :reader joystick_data
    :initarg :joystick_data
    :type sensor_msgs-msg:Joy
    :initform (cl:make-instance 'sensor_msgs-msg:Joy)))
)

(cl:defclass mhlmt_joystick_data-response (<mhlmt_joystick_data-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mhlmt_joystick_data-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mhlmt_joystick_data-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mhlmt_msgs-srv:<mhlmt_joystick_data-response> is deprecated: use ros_mhlmt_msgs-srv:mhlmt_joystick_data-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <mhlmt_joystick_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mhlmt_msgs-srv:state-val is deprecated.  Use ros_mhlmt_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'joystick_data-val :lambda-list '(m))
(cl:defmethod joystick_data-val ((m <mhlmt_joystick_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mhlmt_msgs-srv:joystick_data-val is deprecated.  Use ros_mhlmt_msgs-srv:joystick_data instead.")
  (joystick_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mhlmt_joystick_data-response>) ostream)
  "Serializes a message object of type '<mhlmt_joystick_data-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joystick_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mhlmt_joystick_data-response>) istream)
  "Deserializes a message object of type '<mhlmt_joystick_data-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joystick_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mhlmt_joystick_data-response>)))
  "Returns string type for a service object of type '<mhlmt_joystick_data-response>"
  "ros_mhlmt_msgs/mhlmt_joystick_dataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mhlmt_joystick_data-response)))
  "Returns string type for a service object of type 'mhlmt_joystick_data-response"
  "ros_mhlmt_msgs/mhlmt_joystick_dataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mhlmt_joystick_data-response>)))
  "Returns md5sum for a message object of type '<mhlmt_joystick_data-response>"
  "1329a64fad65e08bad5df97dce71b9e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mhlmt_joystick_data-response)))
  "Returns md5sum for a message object of type 'mhlmt_joystick_data-response"
  "1329a64fad65e08bad5df97dce71b9e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mhlmt_joystick_data-response>)))
  "Returns full string definition for message of type '<mhlmt_joystick_data-response>"
  (cl:format cl:nil "bool state~%sensor_msgs/Joy joystick_data~%~%~%================================================================================~%MSG: sensor_msgs/Joy~%# Reports the state of a joysticks axes and buttons.~%Header header           # timestamp in the header is the time the data is received from the joystick~%float32[] axes          # the axes measurements from a joystick~%int32[] buttons         # the buttons measurements from a joystick ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mhlmt_joystick_data-response)))
  "Returns full string definition for message of type 'mhlmt_joystick_data-response"
  (cl:format cl:nil "bool state~%sensor_msgs/Joy joystick_data~%~%~%================================================================================~%MSG: sensor_msgs/Joy~%# Reports the state of a joysticks axes and buttons.~%Header header           # timestamp in the header is the time the data is received from the joystick~%float32[] axes          # the axes measurements from a joystick~%int32[] buttons         # the buttons measurements from a joystick ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mhlmt_joystick_data-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joystick_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mhlmt_joystick_data-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mhlmt_joystick_data-response
    (cl:cons ':state (state msg))
    (cl:cons ':joystick_data (joystick_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mhlmt_joystick_data)))
  'mhlmt_joystick_data-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mhlmt_joystick_data)))
  'mhlmt_joystick_data-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mhlmt_joystick_data)))
  "Returns string type for a service object of type '<mhlmt_joystick_data>"
  "ros_mhlmt_msgs/mhlmt_joystick_data")