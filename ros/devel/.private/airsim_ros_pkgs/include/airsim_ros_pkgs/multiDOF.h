// Generated by gencpp from file airsim_ros_pkgs/multiDOF.msg
// DO NOT EDIT!


#ifndef AIRSIM_ROS_PKGS_MESSAGE_MULTIDOF_H
#define AIRSIM_ROS_PKGS_MESSAGE_MULTIDOF_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace airsim_ros_pkgs
{
template <class ContainerAllocator>
struct multiDOF_
{
  typedef multiDOF_<ContainerAllocator> Type;

  multiDOF_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , ax(0.0)
    , ay(0.0)
    , az(0.0)
    , yaw(0.0)
    , duration(0.0)  {
    }
  multiDOF_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , ax(0.0)
    , ay(0.0)
    , az(0.0)
    , yaw(0.0)
    , duration(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _vx_type;
  _vx_type vx;

   typedef double _vy_type;
  _vy_type vy;

   typedef double _vz_type;
  _vz_type vz;

   typedef double _ax_type;
  _ax_type ax;

   typedef double _ay_type;
  _ay_type ay;

   typedef double _az_type;
  _az_type az;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> const> ConstPtr;

}; // struct multiDOF_

typedef ::airsim_ros_pkgs::multiDOF_<std::allocator<void> > multiDOF;

typedef boost::shared_ptr< ::airsim_ros_pkgs::multiDOF > multiDOFPtr;
typedef boost::shared_ptr< ::airsim_ros_pkgs::multiDOF const> multiDOFConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.vx == rhs.vx &&
    lhs.vy == rhs.vy &&
    lhs.vz == rhs.vz &&
    lhs.ax == rhs.ax &&
    lhs.ay == rhs.ay &&
    lhs.az == rhs.az &&
    lhs.yaw == rhs.yaw &&
    lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace airsim_ros_pkgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b20270aa04531b169eee8eb638c29b6b";
  }

  static const char* value(const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb20270aa04531b16ULL;
  static const uint64_t static_value2 = 0x9eee8eb638c29b6bULL;
};

template<class ContainerAllocator>
struct DataType< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >
{
  static const char* value()
  {
    return "airsim_ros_pkgs/multiDOF";
  }

  static const char* value(const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
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
;
  }

  static const char* value(const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.vx);
      stream.next(m.vy);
      stream.next(m.vz);
      stream.next(m.ax);
      stream.next(m.ay);
      stream.next(m.az);
      stream.next(m.yaw);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct multiDOF_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::airsim_ros_pkgs::multiDOF_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::airsim_ros_pkgs::multiDOF_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "vx: ";
    Printer<double>::stream(s, indent + "  ", v.vx);
    s << indent << "vy: ";
    Printer<double>::stream(s, indent + "  ", v.vy);
    s << indent << "vz: ";
    Printer<double>::stream(s, indent + "  ", v.vz);
    s << indent << "ax: ";
    Printer<double>::stream(s, indent + "  ", v.ax);
    s << indent << "ay: ";
    Printer<double>::stream(s, indent + "  ", v.ay);
    s << indent << "az: ";
    Printer<double>::stream(s, indent + "  ", v.az);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "duration: ";
    Printer<double>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AIRSIM_ROS_PKGS_MESSAGE_MULTIDOF_H
