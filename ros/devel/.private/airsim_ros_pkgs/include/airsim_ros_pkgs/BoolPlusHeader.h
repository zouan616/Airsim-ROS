// Generated by gencpp from file airsim_ros_pkgs/BoolPlusHeader.msg
// DO NOT EDIT!


#ifndef AIRSIM_ROS_PKGS_MESSAGE_BOOLPLUSHEADER_H
#define AIRSIM_ROS_PKGS_MESSAGE_BOOLPLUSHEADER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace airsim_ros_pkgs
{
template <class ContainerAllocator>
struct BoolPlusHeader_
{
  typedef BoolPlusHeader_<ContainerAllocator> Type;

  BoolPlusHeader_()
    : data(false)
    , header()  {
    }
  BoolPlusHeader_(const ContainerAllocator& _alloc)
    : data(false)
    , header(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _data_type;
  _data_type data;

   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;





  typedef boost::shared_ptr< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> const> ConstPtr;

}; // struct BoolPlusHeader_

typedef ::airsim_ros_pkgs::BoolPlusHeader_<std::allocator<void> > BoolPlusHeader;

typedef boost::shared_ptr< ::airsim_ros_pkgs::BoolPlusHeader > BoolPlusHeaderPtr;
typedef boost::shared_ptr< ::airsim_ros_pkgs::BoolPlusHeader const> BoolPlusHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data &&
    lhs.header == rhs.header;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace airsim_ros_pkgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5e0b6c231c50b12e4bb9d26a123fb13c";
  }

  static const char* value(const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5e0b6c231c50b12eULL;
  static const uint64_t static_value2 = 0x4bb9d26a123fb13cULL;
};

template<class ContainerAllocator>
struct DataType< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "airsim_ros_pkgs/BoolPlusHeader";
  }

  static const char* value(const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool data\n"
"Header header\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.header);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoolPlusHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::airsim_ros_pkgs::BoolPlusHeader_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data);
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AIRSIM_ROS_PKGS_MESSAGE_BOOLPLUSHEADER_H
