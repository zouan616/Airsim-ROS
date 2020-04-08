// Generated by gencpp from file airsim_ros_pkgs/multiDOF_array.msg
// DO NOT EDIT!


#ifndef AIRSIM_ROS_PKGS_MESSAGE_MULTIDOF_ARRAY_H
#define AIRSIM_ROS_PKGS_MESSAGE_MULTIDOF_ARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <airsim_ros_pkgs/multiDOF.h>
#include <std_msgs/Header.h>

namespace airsim_ros_pkgs
{
template <class ContainerAllocator>
struct multiDOF_array_
{
  typedef multiDOF_array_<ContainerAllocator> Type;

  multiDOF_array_()
    : points()
    , header()  {
    }
  multiDOF_array_(const ContainerAllocator& _alloc)
    : points(_alloc)
    , header(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >::other >  _points_type;
  _points_type points;

   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;





  typedef boost::shared_ptr< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> const> ConstPtr;

}; // struct multiDOF_array_

typedef ::airsim_ros_pkgs::multiDOF_array_<std::allocator<void> > multiDOF_array;

typedef boost::shared_ptr< ::airsim_ros_pkgs::multiDOF_array > multiDOF_arrayPtr;
typedef boost::shared_ptr< ::airsim_ros_pkgs::multiDOF_array const> multiDOF_arrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator2> & rhs)
{
  return lhs.points == rhs.points &&
    lhs.header == rhs.header;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace airsim_ros_pkgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46f0390774f0861beff7c17c9f478a6b";
  }

  static const char* value(const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46f0390774f0861bULL;
  static const uint64_t static_value2 = 0xeff7c17c9f478a6bULL;
};

template<class ContainerAllocator>
struct DataType< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "airsim_ros_pkgs/multiDOF_array";
  }

  static const char* value(const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multiDOF[] points\n"
"Header header\n"
"================================================================================\n"
"MSG: airsim_ros_pkgs/multiDOF\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 vx\n"
"float64 vy\n"
"float64 vz\n"
"float64 ax\n"
"float64 ay\n"
"float64 az\n"
"float64 yaw\n"
"float64 duration\n"
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

  static const char* value(const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.points);
      stream.next(m.header);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct multiDOF_array_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::airsim_ros_pkgs::multiDOF_array_<ContainerAllocator>& v)
  {
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AIRSIM_ROS_PKGS_MESSAGE_MULTIDOF_ARRAY_H