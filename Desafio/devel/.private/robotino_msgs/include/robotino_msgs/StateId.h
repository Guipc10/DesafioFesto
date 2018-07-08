// Generated by gencpp from file robotino_msgs/StateId.msg
// DO NOT EDIT!


#ifndef ROBOTINO_MSGS_MESSAGE_STATEID_H
#define ROBOTINO_MSGS_MESSAGE_STATEID_H


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
struct StateId_
{
  typedef StateId_<ContainerAllocator> Type;

  StateId_()
    : training(false)
    , state_id(0)
    , reward(0)  {
    }
  StateId_(const ContainerAllocator& _alloc)
    : training(false)
    , state_id(0)
    , reward(0)  {
  (void)_alloc;
    }



   typedef uint8_t _training_type;
  _training_type training;

   typedef uint64_t _state_id_type;
  _state_id_type state_id;

   typedef int64_t _reward_type;
  _reward_type reward;




  typedef boost::shared_ptr< ::robotino_msgs::StateId_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotino_msgs::StateId_<ContainerAllocator> const> ConstPtr;

}; // struct StateId_

typedef ::robotino_msgs::StateId_<std::allocator<void> > StateId;

typedef boost::shared_ptr< ::robotino_msgs::StateId > StateIdPtr;
typedef boost::shared_ptr< ::robotino_msgs::StateId const> StateIdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotino_msgs::StateId_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotino_msgs::StateId_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::robotino_msgs::StateId_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotino_msgs::StateId_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::StateId_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_msgs::StateId_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::StateId_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_msgs::StateId_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotino_msgs::StateId_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2b7ffe1334bdc2699a7de52a539949b4";
  }

  static const char* value(const ::robotino_msgs::StateId_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2b7ffe1334bdc269ULL;
  static const uint64_t static_value2 = 0x9a7de52a539949b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotino_msgs::StateId_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotino_msgs/StateId";
  }

  static const char* value(const ::robotino_msgs::StateId_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotino_msgs::StateId_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool training\n\
uint64 state_id\n\
int64 reward\n\
";
  }

  static const char* value(const ::robotino_msgs::StateId_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotino_msgs::StateId_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.training);
      stream.next(m.state_id);
      stream.next(m.reward);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StateId_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotino_msgs::StateId_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotino_msgs::StateId_<ContainerAllocator>& v)
  {
    s << indent << "training: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.training);
    s << indent << "state_id: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.state_id);
    s << indent << "reward: ";
    Printer<int64_t>::stream(s, indent + "  ", v.reward);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTINO_MSGS_MESSAGE_STATEID_H