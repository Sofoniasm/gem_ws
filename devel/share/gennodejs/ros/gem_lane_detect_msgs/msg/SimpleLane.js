// Auto-generated. Do not edit!

// (in-package gem_lane_detect_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SimpleLane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.yaw_err = null;
      this.offset = null;
      this.curvature = null;
    }
    else {
      if (initObj.hasOwnProperty('yaw_err')) {
        this.yaw_err = initObj.yaw_err
      }
      else {
        this.yaw_err = 0.0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimpleLane
    // Serialize message field [yaw_err]
    bufferOffset = _serializer.float32(obj.yaw_err, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float32(obj.curvature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimpleLane
    let len;
    let data = new SimpleLane(null);
    // Deserialize message field [yaw_err]
    data.yaw_err = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gem_lane_detect_msgs/SimpleLane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7ffa601eb572457d82f827982e252bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimpleLane(null);
    if (msg.yaw_err !== undefined) {
      resolved.yaw_err = msg.yaw_err;
    }
    else {
      resolved.yaw_err = 0.0
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    return resolved;
    }
};

module.exports = SimpleLane;
