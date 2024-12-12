// Generated by gencpp from file gem_lane_detect_msgs/SimpleLaneStamped.msg
// DO NOT EDIT!


#ifndef GEM_LANE_DETECT_MSGS_MESSAGE_SIMPLELANESTAMPED_H
#define GEM_LANE_DETECT_MSGS_MESSAGE_SIMPLELANESTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <gem_lane_detect_msgs/SimpleLane.h>

namespace gem_lane_detect_msgs
{
template <class ContainerAllocator>
struct SimpleLaneStamped_
{
  typedef SimpleLaneStamped_<ContainerAllocator> Type;

  SimpleLaneStamped_()
    : header()
    , lane()  {
    }
  SimpleLaneStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , lane(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::gem_lane_detect_msgs::SimpleLane_<ContainerAllocator>  _lane_type;
  _lane_type lane;





  typedef boost::shared_ptr< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> const> ConstPtr;

}; // struct SimpleLaneStamped_

typedef ::gem_lane_detect_msgs::SimpleLaneStamped_<std::allocator<void> > SimpleLaneStamped;

typedef boost::shared_ptr< ::gem_lane_detect_msgs::SimpleLaneStamped > SimpleLaneStampedPtr;
typedef boost::shared_ptr< ::gem_lane_detect_msgs::SimpleLaneStamped const> SimpleLaneStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator1> & lhs, const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.lane == rhs.lane;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator1> & lhs, const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gem_lane_detect_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "485a4c8d48e154980ae182e1ad829209";
  }

  static const char* value(const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x485a4c8d48e15498ULL;
  static const uint64_t static_value2 = 0x0ae182e1ad829209ULL;
};

template<class ContainerAllocator>
struct DataType< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gem_lane_detect_msgs/SimpleLaneStamped";
  }

  static const char* value(const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This represents a SimpleLane with reference coordinate frame and timestamp\n"
"Header header\n"
"SimpleLane lane\n"
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
"MSG: gem_lane_detect_msgs/SimpleLane\n"
"## This expresses the estimated curve representing the lane center curve w.r.t\n"
"# the chosen reference frame on the ego vehicle.\n"
"# To uniquely define the lane and avoid confusions in positive and negative\n"
"# values, we first define the ego vehicle w.r.t the lane center curve and apply\n"
"# the coordinate transformation at the end.\n"
"# First, we assume the lane center line is an arc with the center point C and\n"
"# the radius r>0, and the reference point of ego car is at point P.\n"
"# We denote the intersection of the extended line C-P with the arc as the\n"
"# origin O. Given the origin O, we define O->C vector as the *y-axis* and\n"
"# the respective tangential vector as the *x-axis* using right hand rule.\n"
"# we can then derive the heading angle of the vehicle `yaw` w.r.t x-axis.\n"
"# Further, P should lie on the y-axis by definition and hence O->P vector is\n"
"# perpendicular to the tangent line. We therefore can use O->P vector as the\n"
"# lateral deviation `d`. We then transform to the ego vehicle coordinates and\n"
"# derive:\n"
"#\n"
"#   yaw_err = -yaw  (rad in [-pi, pi])\n"
"#   offset = -d (meters)\n"
"#   curvature = 1/r, when curvature==0, the curve collapse to a straight line.\n"
"#\n"
"# We can further assume |d| << r, that is, check |offset|*curvature << 1, so we\n"
"# can exclude the corner case that there are two tangent lines in a full circle.\n"
"#\n"
"# Message Fields:\n"
"\n"
"float32 yaw_err      # estimated heading error (rad in [-pi, pi]).\n"
"float32 offset       # estimated lateral offset, i.e., cross track error (m).\n"
"float32 curvature    # estimated curvature (m^-1). The value is always >=0.\n"
"\n"
"# Note 1: To avoid confusions in different definitions of signed curvature, we\n"
"# use unsigned curvature. Hence, left turn and right turn are distinguished by\n"
"# `yaw_err`, that is, `yaw_err` in [-pi/2, pi/2] is left turn, and `yaw_err` in\n"
"# [-pi, -pi/2] or [pi/2, pi] is right turn by definition.\n"
"#\n"
"# Note 2: or pure pursuit controller, the reference point is defined on the\n"
"# center of the rear axle of the ego vehicle. For the Stanley controller, the\n"
"# reference point is however defined on the center of the front axle.\n"
"# We recommend using SimpleLaneStamped message to also include the reference\n"
"# frame.\n"
;
  }

  static const char* value(const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.lane);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SimpleLaneStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gem_lane_detect_msgs::SimpleLaneStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "lane: ";
    s << std::endl;
    Printer< ::gem_lane_detect_msgs::SimpleLane_<ContainerAllocator> >::stream(s, indent + "  ", v.lane);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GEM_LANE_DETECT_MSGS_MESSAGE_SIMPLELANESTAMPED_H