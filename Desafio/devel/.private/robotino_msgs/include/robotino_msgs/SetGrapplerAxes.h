// Generated by gencpp from file robotino_msgs/SetGrapplerAxes.msg
// DO NOT EDIT!


#ifndef ROBOTINO_MSGS_MESSAGE_SETGRAPPLERAXES_H
#define ROBOTINO_MSGS_MESSAGE_SETGRAPPLERAXES_H


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
struct SetGrapplerAxes_
{
  typedef SetGrapplerAxes_<ContainerAllocator> Type;

  SetGrapplerAxes_()
    : stamp()
    , angles()
    , velocities()  {
    }
  SetGrapplerAxes_(const ContainerAllocator& _alloc)
    : stamp()
    , angles(_alloc)
    , velocities(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _angles_type;
  _angles_type angles;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _velocities_type;
  _velocities_type velocities;




  typedef boost::shared_ptr< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> const> ConstPtr;

}; // struct SetGrapplerAxes_

typedef ::robotino_msgs::SetGrapplerAxes_<std::allocator<void> > SetGrapplerAxes;

typedef boost::shared_ptr< ::robotino_msgs::SetGrapplerAxes > SetGrapplerAxesPtr;
typedef boost::shared_ptr< ::robotino_msgs::SetGrapplerAxes const> SetGrapplerAxesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2d3c214086c6fdfe1e85f9e5abf4507a";
  }

  static const char* value(const ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2d3c214086c6fdfeULL;
  static const uint64_t static_value2 = 0x1e85f9e5abf4507aULL;
};

template<class ContainerAllocator>
struct DataType< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotino_msgs/SetGrapplerAxes";
  }

  static const char* value(const ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n\
float32[] angles		# in degrees\n\
float32[] velocities	# in rpm\n\
";
  }

  static const char* value(const ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.angles);
      stream.next(m.velocities);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGrapplerAxes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotino_msgs::SetGrapplerAxes_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "angles[]" << std::endl;
    for (size_t i = 0; i < v.angles.size(); ++i)
    {
      s << indent << "  angles[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.angles[i]);
    }
    s << indent << "velocities[]" << std::endl;
    for (size_t i = 0; i < v.velocities.size(); ++i)
    {
      s << indent << "  velocities[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.velocities[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTINO_MSGS_MESSAGE_SETGRAPPLERAXES_H
