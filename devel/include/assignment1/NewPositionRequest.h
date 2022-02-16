// Generated by gencpp from file assignment1/NewPositionRequest.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT1_MESSAGE_NEWPOSITIONREQUEST_H
#define ASSIGNMENT1_MESSAGE_NEWPOSITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment1
{
template <class ContainerAllocator>
struct NewPositionRequest_
{
  typedef NewPositionRequest_<ContainerAllocator> Type;

  NewPositionRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , alpha(0.0)
    , beta(0.0)
    , gamma(0.0)
    , d(0.0)  {
    }
  NewPositionRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , alpha(0.0)
    , beta(0.0)
    , gamma(0.0)
    , d(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _alpha_type;
  _alpha_type alpha;

   typedef double _beta_type;
  _beta_type beta;

   typedef double _gamma_type;
  _gamma_type gamma;

   typedef double _d_type;
  _d_type d;





  typedef boost::shared_ptr< ::assignment1::NewPositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment1::NewPositionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct NewPositionRequest_

typedef ::assignment1::NewPositionRequest_<std::allocator<void> > NewPositionRequest;

typedef boost::shared_ptr< ::assignment1::NewPositionRequest > NewPositionRequestPtr;
typedef boost::shared_ptr< ::assignment1::NewPositionRequest const> NewPositionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment1::NewPositionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment1::NewPositionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assignment1::NewPositionRequest_<ContainerAllocator1> & lhs, const ::assignment1::NewPositionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.alpha == rhs.alpha &&
    lhs.beta == rhs.beta &&
    lhs.gamma == rhs.gamma &&
    lhs.d == rhs.d;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assignment1::NewPositionRequest_<ContainerAllocator1> & lhs, const ::assignment1::NewPositionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assignment1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment1::NewPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment1::NewPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment1::NewPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment1::NewPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment1::NewPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment1::NewPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment1::NewPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bbb3b0853c8194dddb18bcffc87e9561";
  }

  static const char* value(const ::assignment1::NewPositionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbbb3b0853c8194ddULL;
  static const uint64_t static_value2 = 0xdb18bcffc87e9561ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment1::NewPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment1/NewPositionRequest";
  }

  static const char* value(const ::assignment1::NewPositionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment1::NewPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 alpha\n"
"float64 beta\n"
"float64 gamma\n"
"float64 d\n"
;
  }

  static const char* value(const ::assignment1::NewPositionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment1::NewPositionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.alpha);
      stream.next(m.beta);
      stream.next(m.gamma);
      stream.next(m.d);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NewPositionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment1::NewPositionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment1::NewPositionRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "alpha: ";
    Printer<double>::stream(s, indent + "  ", v.alpha);
    s << indent << "beta: ";
    Printer<double>::stream(s, indent + "  ", v.beta);
    s << indent << "gamma: ";
    Printer<double>::stream(s, indent + "  ", v.gamma);
    s << indent << "d: ";
    Printer<double>::stream(s, indent + "  ", v.d);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT1_MESSAGE_NEWPOSITIONREQUEST_H
