
(cl:in-package :asdf)

(defsystem "ros_mhmlt_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "mhmlt_control_service" :depends-on ("_package_mhmlt_control_service"))
    (:file "_package_mhmlt_control_service" :depends-on ("_package"))
    (:file "mhmlt_joystick_data" :depends-on ("_package_mhmlt_joystick_data"))
    (:file "_package_mhmlt_joystick_data" :depends-on ("_package"))
  ))