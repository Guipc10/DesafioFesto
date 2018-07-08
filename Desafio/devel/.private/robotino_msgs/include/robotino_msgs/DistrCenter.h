// Generated by gencpp from file robotino_msgs/DistrCenter.msg
// DO NOT EDIT!


#ifndef ROBOTINO_MSGS_MESSAGE_DISTRCENTER_H
#define ROBOTINO_MSGS_MESSAGE_DISTRCENTER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Pose2D.h>

namespace robotino_msgs
{
template <class ContainerAllocator>
struct DistrCenter_
{
  typedef DistrCenter_<ContainerAllocator> Type;

  DistrCenter_()
    : mapPose()
    , goalPose()
    , puck1(0)
    , puck2(0)
    , isActive(false)  {
    }
  DistrCenter_(const ContainerAllocator& _alloc)
    : mapPose(_alloc)
    , goalPose(_alloc)
    , puck1(0)
    , puck2(0)
    , isActive(false)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _mapPose_type;
  _mapPose_type mapPose;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _goalPose_type;
  _goalPose_type goalPose;

   typedef int32_t _puck1_type;
  _puck1_type puck1;

   typedef int32_t _puck2_type;
  _puck2_type puck2;

   typedef uint8_t _isActive_type;
  _isActive_type isActive;




  typedef boost::shared_ptr< ::robotino_msgs::DistrCenter_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotino_msgs::DistrCenter_<ContainerAllocator> const> ConstPtr;

}; // struct DistrCenter_

typedef ::robotino_msgs::DistrCenter_<std::allocator<void> > DistrCenter;

typedef boost::shared_ptr< ::robotino_msgs::DistrCenter > DistrCenterPtr;
typedef boost::shared_ptr< ::robotino_msgs::DistrCenter const> DistrCenterConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotino_msgs::DistrCenter_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotino_msgs::DistrCenter_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robotino_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'robotino_msgs': ['/home/guiloko/Desafio/src/robotino_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robotino_msgs::DistrCenter_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotino_msgs::DistrCenter_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::DistrCenter_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::DistrCenter_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::DistrCenter_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::DistrCenter_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotino_msgs::DistrCenter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9922e6e657a68d27d810667d48393520";
  }

  static const char* value(const ::robotino_msgs::DistrCenter_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9922e6e657a68d27ULL;
  static const uint64_t static_value2 = 0xd810667d48393520ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotino_msgs::DistrCenter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotino_msgs/DistrCenter";
  }

  static const char* value(const ::robotino_msgs::DistrCenter_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotino_msgs::DistrCenter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose2D mapPose\n\
geometry_msgs/Pose2D goalPose\n\
int32 puck1\n\
int32 puck2\n\
bool isActive\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
";
  }

  static const char* value(const ::robotino_msgs::DistrCenter_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotino_msgs::DistrCenter_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mapPose);
      stream.next(m.goalPose);
      stream.next(m.puck1);
      stream.next(m.puck2);
      stream.next(m.isActive);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DistrCenter_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotino_msgs::DistrCenter_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotino_msgs::DistrCenter_<ContainerAllocator>& v)
  {
    s << indent << "mapPose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.mapPose);
    s << indent << "goalPose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.goalPose);
    s << indent << "puck1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.puck1);
    s << indent << "puck2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.puck2);
    s << indent << "isActive: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isActive);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTINO_MSGS_MESSAGE_DISTRCENTER_H