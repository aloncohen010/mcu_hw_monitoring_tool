;; Auto-generated. Do not edit!


(when (boundp 'ros_mhmlt_msgs::mhmlt_joystick_data)
  (if (not (find-package "ROS_MHMLT_MSGS"))
    (make-package "ROS_MHMLT_MSGS"))
  (shadow 'mhmlt_joystick_data (find-package "ROS_MHMLT_MSGS")))
(unless (find-package "ROS_MHMLT_MSGS::MHMLT_JOYSTICK_DATA")
  (make-package "ROS_MHMLT_MSGS::MHMLT_JOYSTICK_DATA"))
(unless (find-package "ROS_MHMLT_MSGS::MHMLT_JOYSTICK_DATAREQUEST")
  (make-package "ROS_MHMLT_MSGS::MHMLT_JOYSTICK_DATAREQUEST"))
(unless (find-package "ROS_MHMLT_MSGS::MHMLT_JOYSTICK_DATARESPONSE")
  (make-package "ROS_MHMLT_MSGS::MHMLT_JOYSTICK_DATARESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ros_mhmlt_msgs::mhmlt_joystick_dataRequest
  :super ros::object
  :slots (_command ))

(defmethod ros_mhmlt_msgs::mhmlt_joystick_dataRequest
  (:init
   (&key
    ((:command __command) nil)
    )
   (send-super :init)
   (setq _command __command)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; bool _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _command
       (if _command (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _command
     (setq _command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_mhmlt_msgs::mhmlt_joystick_dataResponse
  :super ros::object
  :slots (_state _joystick_data ))

(defmethod ros_mhmlt_msgs::mhmlt_joystick_dataResponse
  (:init
   (&key
    ((:state __state) nil)
    ((:joystick_data __joystick_data) (instance sensor_msgs::Joy :init))
    )
   (send-super :init)
   (setq _state __state)
   (setq _joystick_data __joystick_data)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:joystick_data
   (&rest __joystick_data)
   (if (keywordp (car __joystick_data))
       (send* _joystick_data __joystick_data)
     (progn
       (if __joystick_data (setq _joystick_data (car __joystick_data)))
       _joystick_data)))
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ;; sensor_msgs/Joy _joystick_data
    (send _joystick_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;; sensor_msgs/Joy _joystick_data
       (send _joystick_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sensor_msgs/Joy _joystick_data
     (send _joystick_data :deserialize buf ptr-) (incf ptr- (send _joystick_data :serialization-length))
   ;;
   self)
  )

(defclass ros_mhmlt_msgs::mhmlt_joystick_data
  :super ros::object
  :slots ())

(setf (get ros_mhmlt_msgs::mhmlt_joystick_data :md5sum-) "00a7ccec808b16c3b52f1eea2d823951")
(setf (get ros_mhmlt_msgs::mhmlt_joystick_data :datatype-) "ros_mhmlt_msgs/mhmlt_joystick_data")
(setf (get ros_mhmlt_msgs::mhmlt_joystick_data :request) ros_mhmlt_msgs::mhmlt_joystick_dataRequest)
(setf (get ros_mhmlt_msgs::mhmlt_joystick_data :response) ros_mhmlt_msgs::mhmlt_joystick_dataResponse)

(defmethod ros_mhmlt_msgs::mhmlt_joystick_dataRequest
  (:response () (instance ros_mhmlt_msgs::mhmlt_joystick_dataResponse :init)))

(setf (get ros_mhmlt_msgs::mhmlt_joystick_dataRequest :md5sum-) "00a7ccec808b16c3b52f1eea2d823951")
(setf (get ros_mhmlt_msgs::mhmlt_joystick_dataRequest :datatype-) "ros_mhmlt_msgs/mhmlt_joystick_dataRequest")
(setf (get ros_mhmlt_msgs::mhmlt_joystick_dataRequest :definition-)
      "bool command
---
bool state
sensor_msgs/Joy joystick_data


================================================================================
MSG: sensor_msgs/Joy
# Reports the state of a joysticks axes and buttons.
Header header           # timestamp in the header is the time the data is received from the joystick
float32[] axes          # the axes measurements from a joystick
int32[] buttons         # the buttons measurements from a joystick 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")

(setf (get ros_mhmlt_msgs::mhmlt_joystick_dataResponse :md5sum-) "00a7ccec808b16c3b52f1eea2d823951")
(setf (get ros_mhmlt_msgs::mhmlt_joystick_dataResponse :datatype-) "ros_mhmlt_msgs/mhmlt_joystick_dataResponse")
(setf (get ros_mhmlt_msgs::mhmlt_joystick_dataResponse :definition-)
      "bool command
---
bool state
sensor_msgs/Joy joystick_data


================================================================================
MSG: sensor_msgs/Joy
# Reports the state of a joysticks axes and buttons.
Header header           # timestamp in the header is the time the data is received from the joystick
float32[] axes          # the axes measurements from a joystick
int32[] buttons         # the buttons measurements from a joystick 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")



(provide :ros_mhmlt_msgs/mhmlt_joystick_data "00a7ccec808b16c3b52f1eea2d823951")


