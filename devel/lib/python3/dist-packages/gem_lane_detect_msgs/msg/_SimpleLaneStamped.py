# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gem_lane_detect_msgs/SimpleLaneStamped.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import gem_lane_detect_msgs.msg
import std_msgs.msg

class SimpleLaneStamped(genpy.Message):
  _md5sum = "485a4c8d48e154980ae182e1ad829209"
  _type = "gem_lane_detect_msgs/SimpleLaneStamped"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# This represents a SimpleLane with reference coordinate frame and timestamp
Header header
SimpleLane lane

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: gem_lane_detect_msgs/SimpleLane
## This expresses the estimated curve representing the lane center curve w.r.t
# the chosen reference frame on the ego vehicle.
# To uniquely define the lane and avoid confusions in positive and negative
# values, we first define the ego vehicle w.r.t the lane center curve and apply
# the coordinate transformation at the end.
# First, we assume the lane center line is an arc with the center point C and
# the radius r>0, and the reference point of ego car is at point P.
# We denote the intersection of the extended line C-P with the arc as the
# origin O. Given the origin O, we define O->C vector as the *y-axis* and
# the respective tangential vector as the *x-axis* using right hand rule.
# we can then derive the heading angle of the vehicle `yaw` w.r.t x-axis.
# Further, P should lie on the y-axis by definition and hence O->P vector is
# perpendicular to the tangent line. We therefore can use O->P vector as the
# lateral deviation `d`. We then transform to the ego vehicle coordinates and
# derive:
#
#   yaw_err = -yaw  (rad in [-pi, pi])
#   offset = -d (meters)
#   curvature = 1/r, when curvature==0, the curve collapse to a straight line.
#
# We can further assume |d| << r, that is, check |offset|*curvature << 1, so we
# can exclude the corner case that there are two tangent lines in a full circle.
#
# Message Fields:

float32 yaw_err      # estimated heading error (rad in [-pi, pi]).
float32 offset       # estimated lateral offset, i.e., cross track error (m).
float32 curvature    # estimated curvature (m^-1). The value is always >=0.

# Note 1: To avoid confusions in different definitions of signed curvature, we
# use unsigned curvature. Hence, left turn and right turn are distinguished by
# `yaw_err`, that is, `yaw_err` in [-pi/2, pi/2] is left turn, and `yaw_err` in
# [-pi, -pi/2] or [pi/2, pi] is right turn by definition.
#
# Note 2: or pure pursuit controller, the reference point is defined on the
# center of the rear axle of the ego vehicle. For the Stanley controller, the
# reference point is however defined on the center of the front axle.
# We recommend using SimpleLaneStamped message to also include the reference
# frame.
"""
  __slots__ = ['header','lane']
  _slot_types = ['std_msgs/Header','gem_lane_detect_msgs/SimpleLane']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,lane

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SimpleLaneStamped, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.lane is None:
        self.lane = gem_lane_detect_msgs.msg.SimpleLane()
    else:
      self.header = std_msgs.msg.Header()
      self.lane = gem_lane_detect_msgs.msg.SimpleLane()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3f().pack(_x.lane.yaw_err, _x.lane.offset, _x.lane.curvature))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.lane is None:
        self.lane = gem_lane_detect_msgs.msg.SimpleLane()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.lane.yaw_err, _x.lane.offset, _x.lane.curvature,) = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3f().pack(_x.lane.yaw_err, _x.lane.offset, _x.lane.curvature))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.lane is None:
        self.lane = gem_lane_detect_msgs.msg.SimpleLane()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.lane.yaw_err, _x.lane.offset, _x.lane.curvature,) = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
