// Generated by gencpp from file robotino_msgs/SetBHAPressures.msg
// DO NOT EDIT!


#ifndef ROBOTINO_MSGS_MESSAGE_SETBHAPRESSURES_H
#define ROBOTINO_MSGS_MESSAGE_SETBHAPRESSURES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotino_msgs
{
template <class ContainerAllocator>
struct SetBHAPressures_
{
  typedef SetBHAPressures_<ContainerAllocator> Type;

  SetBHAPressures_()
    : pressures()  {
    }
  SetBHAPressures_(const ContainerAllocator& _alloc)
    : pressures(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _pressures_type;
  _pressures_type pressures;




  typedef boost::shared_ptr< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> const> ConstPtr;

}; // struct SetBHAPressures_

typedef ::robotino_msgs::SetBHAPressures_<std::allocator<void> > SetBHAPressures;

typedef boost::shared_ptr< ::robotino_msgs::SetBHAPressures > SetBHAPressuresPtr;
typedef boost::shared_ptr< ::robotino_msgs::SetBHAPressures const> SetBHAPressuresConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotino_msgs::SetBHAPressures_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robotino_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'robotino_msgs': ['/home/guiloko/Desafio/src/robotino_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f07803ec936ff4605f313dd88545e5bb";
  }

  static const char* value(const ::robotino_msgs::SetBHAPressures_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf07803ec936ff460ULL;
  static const uint64_t static_value2 = 0x5f313dd88545e5bbULL;
};

template<class ContainerAllocator>
struct DataType< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotino_msgs/SetBHAPressures";
  }

  static const char* value(const ::robotino_msgs::SetBHAPressures_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] pressures	# must be of size 8\n\
";
  }

  static const char* value(const ::robotino_msgs::SetBHAPressures_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pressures);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetBHAPressures_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotino_msgs::SetBHAPressures_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotino_msgs::SetBHAPressures_<ContainerAllocator>& v)
  {
    s << indent << "pressures[]" << std::endl;
    for (size_t i = 0; i < v.pressures.size(); ++i)
    {
      s << indent << "  pressures[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.pressures[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTINO_MSGS_MESSAGE_SETBHAPRESSURES_H
