; Auto-generated. Do not edit!


(cl:in-package gem_lane_detect_msgs-msg)


;//! \htmlinclude SimpleLaneStamped.msg.html

(cl:defclass <SimpleLaneStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lane
    :reader lane
    :initarg :lane
    :type gem_lane_detect_msgs-msg:SimpleLane
    :initform (cl:make-instance 'gem_lane_detect_msgs-msg:SimpleLane)))
)

(cl:defclass SimpleLaneStamped (<SimpleLaneStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleLaneStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleLaneStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gem_lane_detect_msgs-msg:<SimpleLaneStamped> is deprecated: use gem_lane_detect_msgs-msg:SimpleLaneStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SimpleLaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gem_lane_detect_msgs-msg:header-val is deprecated.  Use gem_lane_detect_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lane-val :lambda-list '(m))
(cl:defmethod lane-val ((m <SimpleLaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gem_lane_detect_msgs-msg:lane-val is deprecated.  Use gem_lane_detect_msgs-msg:lane instead.")
  (lane m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleLaneStamped>) ostream)
  "Serializes a message object of type '<SimpleLaneStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleLaneStamped>) istream)
  "Deserializes a message object of type '<SimpleLaneStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleLaneStamped>)))
  "Returns string type for a message object of type '<SimpleLaneStamped>"
  "gem_lane_detect_msgs/SimpleLaneStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleLaneStamped)))
  "Returns string type for a message object of type 'SimpleLaneStamped"
  "gem_lane_detect_msgs/SimpleLaneStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleLaneStamped>)))
  "Returns md5sum for a message object of type '<SimpleLaneStamped>"
  "485a4c8d48e154980ae182e1ad829209")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleLaneStamped)))
  "Returns md5sum for a message object of type 'SimpleLaneStamped"
  "485a4c8d48e154980ae182e1ad829209")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleLaneStamped>)))
  "Returns full string definition for message of type '<SimpleLaneStamped>"
  (cl:format cl:nil "# This represents a SimpleLane with reference coordinate frame and timestamp~%Header header~%SimpleLane lane~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gem_lane_detect_msgs/SimpleLane~%## This expresses the estimated curve representing the lane center curve w.r.t~%# the chosen reference frame on the ego vehicle.~%# To uniquely define the lane and avoid confusions in positive and negative~%# values, we first define the ego vehicle w.r.t the lane center curve and apply~%# the coordinate transformation at the end.~%# First, we assume the lane center line is an arc with the center point C and~%# the radius r>0, and the reference point of ego car is at point P.~%# We denote the intersection of the extended line C-P with the arc as the~%# origin O. Given the origin O, we define O->C vector as the *y-axis* and~%# the respective tangential vector as the *x-axis* using right hand rule.~%# we can then derive the heading angle of the vehicle `yaw` w.r.t x-axis.~%# Further, P should lie on the y-axis by definition and hence O->P vector is~%# perpendicular to the tangent line. We therefore can use O->P vector as the~%# lateral deviation `d`. We then transform to the ego vehicle coordinates and~%# derive:~%#~%#   yaw_err = -yaw  (rad in [-pi, pi])~%#   offset = -d (meters)~%#   curvature = 1/r, when curvature==0, the curve collapse to a straight line.~%#~%# We can further assume |d| << r, that is, check |offset|*curvature << 1, so we~%# can exclude the corner case that there are two tangent lines in a full circle.~%#~%# Message Fields:~%~%float32 yaw_err      # estimated heading error (rad in [-pi, pi]).~%float32 offset       # estimated lateral offset, i.e., cross track error (m).~%float32 curvature    # estimated curvature (m^-1). The value is always >=0.~%~%# Note 1: To avoid confusions in different definitions of signed curvature, we~%# use unsigned curvature. Hence, left turn and right turn are distinguished by~%# `yaw_err`, that is, `yaw_err` in [-pi/2, pi/2] is left turn, and `yaw_err` in~%# [-pi, -pi/2] or [pi/2, pi] is right turn by definition.~%#~%# Note 2: or pure pursuit controller, the reference point is defined on the~%# center of the rear axle of the ego vehicle. For the Stanley controller, the~%# reference point is however defined on the center of the front axle.~%# We recommend using SimpleLaneStamped message to also include the reference~%# frame.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleLaneStamped)))
  "Returns full string definition for message of type 'SimpleLaneStamped"
  (cl:format cl:nil "# This represents a SimpleLane with reference coordinate frame and timestamp~%Header header~%SimpleLane lane~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gem_lane_detect_msgs/SimpleLane~%## This expresses the estimated curve representing the lane center curve w.r.t~%# the chosen reference frame on the ego vehicle.~%# To uniquely define the lane and avoid confusions in positive and negative~%# values, we first define the ego vehicle w.r.t the lane center curve and apply~%# the coordinate transformation at the end.~%# First, we assume the lane center line is an arc with the center point C and~%# the radius r>0, and the reference point of ego car is at point P.~%# We denote the intersection of the extended line C-P with the arc as the~%# origin O. Given the origin O, we define O->C vector as the *y-axis* and~%# the respective tangential vector as the *x-axis* using right hand rule.~%# we can then derive the heading angle of the vehicle `yaw` w.r.t x-axis.~%# Further, P should lie on the y-axis by definition and hence O->P vector is~%# perpendicular to the tangent line. We therefore can use O->P vector as the~%# lateral deviation `d`. We then transform to the ego vehicle coordinates and~%# derive:~%#~%#   yaw_err = -yaw  (rad in [-pi, pi])~%#   offset = -d (meters)~%#   curvature = 1/r, when curvature==0, the curve collapse to a straight line.~%#~%# We can further assume |d| << r, that is, check |offset|*curvature << 1, so we~%# can exclude the corner case that there are two tangent lines in a full circle.~%#~%# Message Fields:~%~%float32 yaw_err      # estimated heading error (rad in [-pi, pi]).~%float32 offset       # estimated lateral offset, i.e., cross track error (m).~%float32 curvature    # estimated curvature (m^-1). The value is always >=0.~%~%# Note 1: To avoid confusions in different definitions of signed curvature, we~%# use unsigned curvature. Hence, left turn and right turn are distinguished by~%# `yaw_err`, that is, `yaw_err` in [-pi/2, pi/2] is left turn, and `yaw_err` in~%# [-pi, -pi/2] or [pi/2, pi] is right turn by definition.~%#~%# Note 2: or pure pursuit controller, the reference point is defined on the~%# center of the rear axle of the ego vehicle. For the Stanley controller, the~%# reference point is however defined on the center of the front axle.~%# We recommend using SimpleLaneStamped message to also include the reference~%# frame.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleLaneStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleLaneStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleLaneStamped
    (cl:cons ':header (header msg))
    (cl:cons ':lane (lane msg))
))
