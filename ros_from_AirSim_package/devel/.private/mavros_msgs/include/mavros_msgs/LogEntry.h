// Generated by gencpp from file mavros_msgs/LogEntry.msg
// DO NOT EDIT!


#ifndef MAVROS_MSGS_MESSAGE_LOGENTRY_H
#define MAVROS_MSGS_MESSAGE_LOGENTRY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mavros_msgs
{
template <class ContainerAllocator>
struct LogEntry_
{
  typedef LogEntry_<ContainerAllocator> Type;

  LogEntry_()
    : header()
    , id(0)
    , num_logs(0)
    , last_log_num(0)
    , time_utc()
    , size(0)  {
    }
  LogEntry_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)
    , num_logs(0)
    , last_log_num(0)
    , time_utc()
    , size(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _id_type;
  _id_type id;

   typedef uint16_t _num_logs_type;
  _num_logs_type num_logs;

   typedef uint16_t _last_log_num_type;
  _last_log_num_type last_log_num;

   typedef ros::Time _time_utc_type;
  _time_utc_type time_utc;

   typedef uint32_t _size_type;
  _size_type size;





  typedef boost::shared_ptr< ::mavros_msgs::LogEntry_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavros_msgs::LogEntry_<ContainerAllocator> const> ConstPtr;

}; // struct LogEntry_

typedef ::mavros_msgs::LogEntry_<std::allocator<void> > LogEntry;

typedef boost::shared_ptr< ::mavros_msgs::LogEntry > LogEntryPtr;
typedef boost::shared_ptr< ::mavros_msgs::LogEntry const> LogEntryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavros_msgs::LogEntry_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavros_msgs::LogEntry_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mavros_msgs::LogEntry_<ContainerAllocator1> & lhs, const ::mavros_msgs::LogEntry_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.id == rhs.id &&
    lhs.num_logs == rhs.num_logs &&
    lhs.last_log_num == rhs.last_log_num &&
    lhs.time_utc == rhs.time_utc &&
    lhs.size == rhs.size;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mavros_msgs::LogEntry_<ContainerAllocator1> & lhs, const ::mavros_msgs::LogEntry_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mavros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::LogEntry_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::LogEntry_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::LogEntry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::LogEntry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::LogEntry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::LogEntry_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavros_msgs::LogEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a1428fc1ec4b2bfc8ab0c0ead7cce571";
  }

  static const char* value(const ::mavros_msgs::LogEntry_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa1428fc1ec4b2bfcULL;
  static const uint64_t static_value2 = 0x8ab0c0ead7cce571ULL;
};

template<class ContainerAllocator>
struct DataType< ::mavros_msgs::LogEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavros_msgs/LogEntry";
  }

  static const char* value(const ::mavros_msgs::LogEntry_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavros_msgs::LogEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Information about a single log\n"
"#\n"
"#  :id: - log id\n"
"#  :num_logs: - total number of logs\n"
"#  :last_log_num: - id of last log\n"
"#  :time_utc: - UTC timestamp of log (ros::Time(0) if not available)\n"
"#  :size: - size of log in bytes (may be approximate)\n"
"\n"
"std_msgs/Header header\n"
"\n"
"uint16 id\n"
"uint16 num_logs\n"
"uint16 last_log_num\n"
"time time_utc\n"
"uint32 size\n"
"\n"
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

  static const char* value(const ::mavros_msgs::LogEntry_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavros_msgs::LogEntry_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.num_logs);
      stream.next(m.last_log_num);
      stream.next(m.time_utc);
      stream.next(m.size);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LogEntry_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavros_msgs::LogEntry_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavros_msgs::LogEntry_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.id);
    s << indent << "num_logs: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.num_logs);
    s << indent << "last_log_num: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.last_log_num);
    s << indent << "time_utc: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.time_utc);
    s << indent << "size: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.size);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVROS_MSGS_MESSAGE_LOGENTRY_H
