
(cl:in-package :asdf)

(defsystem "ros_arduino_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DigitalSensorRead" :depends-on ("_package_DigitalSensorRead"))
    (:file "_package_DigitalSensorRead" :depends-on ("_package"))
    (:file "DigitalSensorSetDirection" :depends-on ("_package_DigitalSensorSetDirection"))
    (:file "_package_DigitalSensorSetDirection" :depends-on ("_package"))
    (:file "Relax" :depends-on ("_package_Relax"))
    (:file "_package_Relax" :depends-on ("_package"))
    (:file "ServoRead" :depends-on ("_package_ServoRead"))
    (:file "_package_ServoRead" :depends-on ("_package"))
    (:file "DigitalSensorWrite" :depends-on ("_package_DigitalSensorWrite"))
    (:file "_package_DigitalSensorWrite" :depends-on ("_package"))
    (:file "DigitalSetDirection" :depends-on ("_package_DigitalSetDirection"))
    (:file "_package_DigitalSetDirection" :depends-on ("_package"))
    (:file "AnalogFloatSensorWrite" :depends-on ("_package_AnalogFloatSensorWrite"))
    (:file "_package_AnalogFloatSensorWrite" :depends-on ("_package"))
    (:file "AnalogSensorRead" :depends-on ("_package_AnalogSensorRead"))
    (:file "_package_AnalogSensorRead" :depends-on ("_package"))
    (:file "AnalogRead" :depends-on ("_package_AnalogRead"))
    (:file "_package_AnalogRead" :depends-on ("_package"))
    (:file "DigitalWrite" :depends-on ("_package_DigitalWrite"))
    (:file "_package_DigitalWrite" :depends-on ("_package"))
    (:file "AnalogFloatSensorRead" :depends-on ("_package_AnalogFloatSensorRead"))
    (:file "_package_AnalogFloatSensorRead" :depends-on ("_package"))
    (:file "SetSpeed" :depends-on ("_package_SetSpeed"))
    (:file "_package_SetSpeed" :depends-on ("_package"))
    (:file "DigitalRead" :depends-on ("_package_DigitalRead"))
    (:file "_package_DigitalRead" :depends-on ("_package"))
    (:file "AnalogWrite" :depends-on ("_package_AnalogWrite"))
    (:file "_package_AnalogWrite" :depends-on ("_package"))
    (:file "AnalogSensorWrite" :depends-on ("_package_AnalogSensorWrite"))
    (:file "_package_AnalogSensorWrite" :depends-on ("_package"))
    (:file "Enable" :depends-on ("_package_Enable"))
    (:file "_package_Enable" :depends-on ("_package"))
    (:file "SetServoSpeed" :depends-on ("_package_SetServoSpeed"))
    (:file "_package_SetServoSpeed" :depends-on ("_package"))
    (:file "ServoWrite" :depends-on ("_package_ServoWrite"))
    (:file "_package_ServoWrite" :depends-on ("_package"))
  ))