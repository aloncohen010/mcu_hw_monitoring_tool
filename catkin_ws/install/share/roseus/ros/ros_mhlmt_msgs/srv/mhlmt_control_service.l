;; Auto-generated. Do not edit!


(when (boundp 'ros_mhlmt_msgs::mhlmt_control_service)
  (if (not (find-package "ROS_MHLMT_MSGS"))
    (make-package "ROS_MHLMT_MSGS"))
  (shadow 'mhlmt_control_service (find-package "ROS_MHLMT_MSGS")))
(unless (find-package "ROS_MHLMT_MSGS::MHLMT_CONTROL_SERVICE")
  (make-package "ROS_MHLMT_MSGS::MHLMT_CONTROL_SERVICE"))
(unless (find-package "ROS_MHLMT_MSGS::MHLMT_CONTROL_SERVICEREQUEST")
  (make-package "ROS_MHLMT_MSGS::MHLMT_CONTROL_SERVICEREQUEST"))
(unless (find-package "ROS_MHLMT_MSGS::MHLMT_CONTROL_SERVICERESPONSE")
  (make-package "ROS_MHLMT_MSGS::MHLMT_CONTROL_SERVICERESPONSE"))

(in-package "ROS")





(defclass ros_mhlmt_msgs::mhlmt_control_serviceRequest
  :super ros::object
  :slots (_command ))

(defmethod ros_mhlmt_msgs::mhlmt_control_serviceRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_mhlmt_msgs::mhlmt_control_serviceResponse
  :super ros::object
  :slots (_response ))

(defmethod ros_mhlmt_msgs::mhlmt_control_serviceResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_mhlmt_msgs::mhlmt_control_service
  :super ros::object
  :slots ())

(setf (get ros_mhlmt_msgs::mhlmt_control_service :md5sum-) "22c7c465d64c7e74c6ae22029c7ca150")
(setf (get ros_mhlmt_msgs::mhlmt_control_service :datatype-) "ros_mhlmt_msgs/mhlmt_control_service")
(setf (get ros_mhlmt_msgs::mhlmt_control_service :request) ros_mhlmt_msgs::mhlmt_control_serviceRequest)
(setf (get ros_mhlmt_msgs::mhlmt_control_service :response) ros_mhlmt_msgs::mhlmt_control_serviceResponse)

(defmethod ros_mhlmt_msgs::mhlmt_control_serviceRequest
  (:response () (instance ros_mhlmt_msgs::mhlmt_control_serviceResponse :init)))

(setf (get ros_mhlmt_msgs::mhlmt_control_serviceRequest :md5sum-) "22c7c465d64c7e74c6ae22029c7ca150")
(setf (get ros_mhlmt_msgs::mhlmt_control_serviceRequest :datatype-) "ros_mhlmt_msgs/mhlmt_control_serviceRequest")
(setf (get ros_mhlmt_msgs::mhlmt_control_serviceRequest :definition-)
      "string command
---
string response

")

(setf (get ros_mhlmt_msgs::mhlmt_control_serviceResponse :md5sum-) "22c7c465d64c7e74c6ae22029c7ca150")
(setf (get ros_mhlmt_msgs::mhlmt_control_serviceResponse :datatype-) "ros_mhlmt_msgs/mhlmt_control_serviceResponse")
(setf (get ros_mhlmt_msgs::mhlmt_control_serviceResponse :definition-)
      "string command
---
string response

")



(provide :ros_mhlmt_msgs/mhlmt_control_service "22c7c465d64c7e74c6ae22029c7ca150")


