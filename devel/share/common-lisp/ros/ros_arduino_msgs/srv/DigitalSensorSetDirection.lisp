; Auto-generated. Do not edit!


(cl:in-package ros_arduino_msgs-srv)


;//! \htmlinclude DigitalSensorSetDirection-request.msg.html

(cl:defclass <DigitalSensorSetDirection-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DigitalSensorSetDirection-request (<DigitalSensorSetDirection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalSensorSetDirection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalSensorSetDirection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_arduino_msgs-srv:<DigitalSensorSetDirection-request> is deprecated: use ros_arduino_msgs-srv:DigitalSensorSetDirection-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <DigitalSensorSetDirection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_arduino_msgs-srv:direction-val is deprecated.  Use ros_arduino_msgs-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalSensorSetDirection-request>) ostream)
  "Serializes a message object of type '<DigitalSensorSetDirection-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'direction) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalSensorSetDirection-request>) istream)
  "Deserializes a message object of type '<DigitalSensorSetDirection-request>"
    (cl:setf (cl:slot-value msg 'direction) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalSensorSetDirection-request>)))
  "Returns string type for a service object of type '<DigitalSensorSetDirection-request>"
  "ros_arduino_msgs/DigitalSensorSetDirectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalSensorSetDirection-request)))
  "Returns string type for a service object of type 'DigitalSensorSetDirection-request"
  "ros_arduino_msgs/DigitalSensorSetDirectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalSensorSetDirection-request>)))
  "Returns md5sum for a message object of type '<DigitalSensorSetDirection-request>"
  "8ed8b14a7df13f0c44543de998e53af4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalSensorSetDirection-request)))
  "Returns md5sum for a message object of type 'DigitalSensorSetDirection-request"
  "8ed8b14a7df13f0c44543de998e53af4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalSensorSetDirection-request>)))
  "Returns full string definition for message of type '<DigitalSensorSetDirection-request>"
  (cl:format cl:nil "bool direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalSensorSetDirection-request)))
  "Returns full string definition for message of type 'DigitalSensorSetDirection-request"
  (cl:format cl:nil "bool direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalSensorSetDirection-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalSensorSetDirection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalSensorSetDirection-request
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude DigitalSensorSetDirection-response.msg.html

(cl:defclass <DigitalSensorSetDirection-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DigitalSensorSetDirection-response (<DigitalSensorSetDirection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalSensorSetDirection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalSensorSetDirection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_arduino_msgs-srv:<DigitalSensorSetDirection-response> is deprecated: use ros_arduino_msgs-srv:DigitalSensorSetDirection-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalSensorSetDirection-response>) ostream)
  "Serializes a message object of type '<DigitalSensorSetDirection-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalSensorSetDirection-response>) istream)
  "Deserializes a message object of type '<DigitalSensorSetDirection-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalSensorSetDirection-response>)))
  "Returns string type for a service object of type '<DigitalSensorSetDirection-response>"
  "ros_arduino_msgs/DigitalSensorSetDirectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalSensorSetDirection-response)))
  "Returns string type for a service object of type 'DigitalSensorSetDirection-response"
  "ros_arduino_msgs/DigitalSensorSetDirectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalSensorSetDirection-response>)))
  "Returns md5sum for a message object of type '<DigitalSensorSetDirection-response>"
  "8ed8b14a7df13f0c44543de998e53af4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalSensorSetDirection-response)))
  "Returns md5sum for a message object of type 'DigitalSensorSetDirection-response"
  "8ed8b14a7df13f0c44543de998e53af4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalSensorSetDirection-response>)))
  "Returns full string definition for message of type '<DigitalSensorSetDirection-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalSensorSetDirection-response)))
  "Returns full string definition for message of type 'DigitalSensorSetDirection-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalSensorSetDirection-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalSensorSetDirection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalSensorSetDirection-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DigitalSensorSetDirection)))
  'DigitalSensorSetDirection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DigitalSensorSetDirection)))
  'DigitalSensorSetDirection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalSensorSetDirection)))
  "Returns string type for a service object of type '<DigitalSensorSetDirection>"
  "ros_arduino_msgs/DigitalSensorSetDirection")