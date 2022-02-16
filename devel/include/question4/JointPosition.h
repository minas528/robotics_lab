// Generated by gencpp from file question4/JointPosition.msg
// DO NOT EDIT!


#ifndef QUESTION4_MESSAGE_JOINTPOSITION_H
#define QUESTION4_MESSAGE_JOINTPOSITION_H

#include <ros/service_traits.h>


#include <question4/JointPositionRequest.h>
#include <question4/JointPositionResponse.h>


namespace question4
{

struct JointPosition
{

typedef JointPositionRequest Request;
typedef JointPositionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct JointPosition
} // namespace question4


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::question4::JointPosition > {
  static const char* value()
  {
    return "2a535115e63a8d55f9b2d3b373b8ddaa";
  }

  static const char* value(const ::question4::JointPosition&) { return value(); }
};

template<>
struct DataType< ::question4::JointPosition > {
  static const char* value()
  {
    return "question4/JointPosition";
  }

  static const char* value(const ::question4::JointPosition&) { return value(); }
};


// service_traits::MD5Sum< ::question4::JointPositionRequest> should match
// service_traits::MD5Sum< ::question4::JointPosition >
template<>
struct MD5Sum< ::question4::JointPositionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::question4::JointPosition >::value();
  }
  static const char* value(const ::question4::JointPositionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::question4::JointPositionRequest> should match
// service_traits::DataType< ::question4::JointPosition >
template<>
struct DataType< ::question4::JointPositionRequest>
{
  static const char* value()
  {
    return DataType< ::question4::JointPosition >::value();
  }
  static const char* value(const ::question4::JointPositionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::question4::JointPositionResponse> should match
// service_traits::MD5Sum< ::question4::JointPosition >
template<>
struct MD5Sum< ::question4::JointPositionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::question4::JointPosition >::value();
  }
  static const char* value(const ::question4::JointPositionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::question4::JointPositionResponse> should match
// service_traits::DataType< ::question4::JointPosition >
template<>
struct DataType< ::question4::JointPositionResponse>
{
  static const char* value()
  {
    return DataType< ::question4::JointPosition >::value();
  }
  static const char* value(const ::question4::JointPositionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // QUESTION4_MESSAGE_JOINTPOSITION_H