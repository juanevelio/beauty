// Generated by gencpp from file ros_arduino_msgs/DigitalSensorWrite.msg
// DO NOT EDIT!


#ifndef ROS_ARDUINO_MSGS_MESSAGE_DIGITALSENSORWRITE_H
#define ROS_ARDUINO_MSGS_MESSAGE_DIGITALSENSORWRITE_H

#include <ros/service_traits.h>


#include <ros_arduino_msgs/DigitalSensorWriteRequest.h>
#include <ros_arduino_msgs/DigitalSensorWriteResponse.h>


namespace ros_arduino_msgs
{

struct DigitalSensorWrite
{

typedef DigitalSensorWriteRequest Request;
typedef DigitalSensorWriteResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DigitalSensorWrite
} // namespace ros_arduino_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_arduino_msgs::DigitalSensorWrite > {
  static const char* value()
  {
    return "e431d687bf4b2c65fbd94b12ae0cb5d9";
  }

  static const char* value(const ::ros_arduino_msgs::DigitalSensorWrite&) { return value(); }
};

template<>
struct DataType< ::ros_arduino_msgs::DigitalSensorWrite > {
  static const char* value()
  {
    return "ros_arduino_msgs/DigitalSensorWrite";
  }

  static const char* value(const ::ros_arduino_msgs::DigitalSensorWrite&) { return value(); }
};


// service_traits::MD5Sum< ::ros_arduino_msgs::DigitalSensorWriteRequest> should match 
// service_traits::MD5Sum< ::ros_arduino_msgs::DigitalSensorWrite > 
template<>
struct MD5Sum< ::ros_arduino_msgs::DigitalSensorWriteRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_arduino_msgs::DigitalSensorWrite >::value();
  }
  static const char* value(const ::ros_arduino_msgs::DigitalSensorWriteRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_arduino_msgs::DigitalSensorWriteRequest> should match 
// service_traits::DataType< ::ros_arduino_msgs::DigitalSensorWrite > 
template<>
struct DataType< ::ros_arduino_msgs::DigitalSensorWriteRequest>
{
  static const char* value()
  {
    return DataType< ::ros_arduino_msgs::DigitalSensorWrite >::value();
  }
  static const char* value(const ::ros_arduino_msgs::DigitalSensorWriteRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_arduino_msgs::DigitalSensorWriteResponse> should match 
// service_traits::MD5Sum< ::ros_arduino_msgs::DigitalSensorWrite > 
template<>
struct MD5Sum< ::ros_arduino_msgs::DigitalSensorWriteResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_arduino_msgs::DigitalSensorWrite >::value();
  }
  static const char* value(const ::ros_arduino_msgs::DigitalSensorWriteResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_arduino_msgs::DigitalSensorWriteResponse> should match 
// service_traits::DataType< ::ros_arduino_msgs::DigitalSensorWrite > 
template<>
struct DataType< ::ros_arduino_msgs::DigitalSensorWriteResponse>
{
  static const char* value()
  {
    return DataType< ::ros_arduino_msgs::DigitalSensorWrite >::value();
  }
  static const char* value(const ::ros_arduino_msgs::DigitalSensorWriteResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_ARDUINO_MSGS_MESSAGE_DIGITALSENSORWRITE_H
