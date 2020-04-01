// Generated by gencpp from file airsim_ros_pkgs/get_trajectoryResponse.msg
// DO NOT EDIT!


#ifndef AIRSIM_ROS_PKGS_MESSAGE_GET_TRAJECTORYRESPONSE_H
#define AIRSIM_ROS_PKGS_MESSAGE_GET_TRAJECTORYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <trajectory_msgs/MultiDOFJointTrajectory.h>

namespace airsim_ros_pkgs
{
template <class ContainerAllocator>
struct get_trajectoryResponse_
{
  typedef get_trajectoryResponse_<ContainerAllocator> Type;

  get_trajectoryResponse_()
    : multiDOFtrajectory()
    , unknown(0)
    , path_found(false)  {
    }
  get_trajectoryResponse_(const ContainerAllocator& _alloc)
    : multiDOFtrajectory(_alloc)
    , unknown(0)
    , path_found(false)  {
  (void)_alloc;
    }



   typedef  ::trajectory_msgs::MultiDOFJointTrajectory_<ContainerAllocator>  _multiDOFtrajectory_type;
  _multiDOFtrajectory_type multiDOFtrajectory;

   typedef int32_t _unknown_type;
  _unknown_type unknown;

   typedef uint8_t _path_found_type;
  _path_found_type path_found;





  typedef boost::shared_ptr< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct get_trajectoryResponse_

typedef ::airsim_ros_pkgs::get_trajectoryResponse_<std::allocator<void> > get_trajectoryResponse;

typedef boost::shared_ptr< ::airsim_ros_pkgs::get_trajectoryResponse > get_trajectoryResponsePtr;
typedef boost::shared_ptr< ::airsim_ros_pkgs::get_trajectoryResponse const> get_trajectoryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator2> & rhs)
{
  return lhs.multiDOFtrajectory == rhs.multiDOFtrajectory &&
    lhs.unknown == rhs.unknown &&
    lhs.path_found == rhs.path_found;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace airsim_ros_pkgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6dc9a84d7a0856e9c53a4c3511791aba";
  }

  static const char* value(const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6dc9a84d7a0856e9ULL;
  static const uint64_t static_value2 = 0xc53a4c3511791abaULL;
};

template<class ContainerAllocator>
struct DataType< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "airsim_ros_pkgs/get_trajectoryResponse";
  }

  static const char* value(const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "trajectory_msgs/MultiDOFJointTrajectory multiDOFtrajectory\n"
"int32 unknown\n"
"bool path_found\n"
"\n"
"\n"
"================================================================================\n"
"MSG: trajectory_msgs/MultiDOFJointTrajectory\n"
"# The header is used to specify the coordinate frame and the reference time for the trajectory durations\n"
"Header header\n"
"\n"
"# A representation of a multi-dof joint trajectory (each point is a transformation)\n"
"# Each point along the trajectory will include an array of positions/velocities/accelerations\n"
"# that has the same length as the array of joint names, and has the same order of joints as \n"
"# the joint names array.\n"
"\n"
"string[] joint_names\n"
"MultiDOFJointTrajectoryPoint[] points\n"
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
"\n"
"================================================================================\n"
"MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint\n"
"# Each multi-dof joint can specify a transform (up to 6 DOF)\n"
"geometry_msgs/Transform[] transforms\n"
"\n"
"# There can be a velocity specified for the origin of the joint \n"
"geometry_msgs/Twist[] velocities\n"
"\n"
"# There can be an acceleration specified for the origin of the joint \n"
"geometry_msgs/Twist[] accelerations\n"
"\n"
"duration time_from_start\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Transform\n"
"# This represents the transform between two coordinate frames in free space.\n"
"\n"
"Vector3 translation\n"
"Quaternion rotation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.multiDOFtrajectory);
      stream.next(m.unknown);
      stream.next(m.path_found);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_trajectoryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::airsim_ros_pkgs::get_trajectoryResponse_<ContainerAllocator>& v)
  {
    s << indent << "multiDOFtrajectory: ";
    s << std::endl;
    Printer< ::trajectory_msgs::MultiDOFJointTrajectory_<ContainerAllocator> >::stream(s, indent + "  ", v.multiDOFtrajectory);
    s << indent << "unknown: ";
    Printer<int32_t>::stream(s, indent + "  ", v.unknown);
    s << indent << "path_found: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.path_found);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AIRSIM_ROS_PKGS_MESSAGE_GET_TRAJECTORYRESPONSE_H
