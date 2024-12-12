; Auto-generated. Do not edit!


(cl:in-package gem_lane_detect_msgs-msg)


;//! \htmlinclude SimpleLane.msg.html

(cl:defclass <SimpleLane> (roslisp-msg-protocol:ros-message)
  ((yaw_err
    :reader yaw_err
    :initarg :yaw_err
    :type cl:float
    :initform 0.0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0))
)

(cl:defclass SimpleLane (<SimpleLane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleLane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleLane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gem_lane_detect_msgs-msg:<SimpleLane> is deprecated: use gem_lane_detect_msgs-msg:SimpleLane instead.")))

(cl:ensure-generic-function 'yaw_err-val :lambda-list '(m))
(cl:defmethod yaw_err-val ((m <SimpleLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gem_lane_detect_msgs-msg:yaw_err-val is deprecated.  Use gem_lane_detect_msgs-msg:yaw_err instead.")
  (yaw_err m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SimpleLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gem_lane_detect_msgs-msg:offset-val is deprecated.  Use gem_lane_detect_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <SimpleLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gem_lane_detect_msgs-msg:curvature-val is deprecated.  Use gem_lane_detect_msgs-msg:curvature instead.")
  (curvature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleLane>) ostream)
  "Serializes a message object of type '<SimpleLane>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_err))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleLane>) istream)
  "Deserializes a message object of type '<SimpleLane>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_err) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleLane>)))
  "Returns string type for a message object of type '<SimpleLane>"
  "gem_lane_detect_msgs/SimpleLane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleLane)))
  "Returns string type for a message object of type 'SimpleLane"
  "gem_lane_detect_msgs/SimpleLane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleLane>)))
  "Returns md5sum for a message object of type '<SimpleLane>"
  "f7ffa601eb572457d82f827982e252bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleLane)))
  "Returns md5sum for a message object of type 'SimpleLane"
  "f7ffa601eb572457d82f827982e252bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleLane>)))
  "Returns full string definition for message of type '<SimpleLane>"
  (cl:format cl:nil "## This expresses the estimated curve representing the lane center curve w.r.t~%# the chosen reference frame on the ego vehicle.~%# To uniquely define the lane and avoid confusions in positive and negative~%# values, we first define the ego vehicle w.r.t the lane center curve and apply~%# the coordinate transformation at the end.~%# First, we assume the lane center line is an arc with the center point C and~%# the radius r>0, and the reference point of ego car is at point P.~%# We denote the intersection of the extended line C-P with the arc as the~%# origin O. Given the origin O, we define O->C vector as the *y-axis* and~%# the respective tangential vector as the *x-axis* using right hand rule.~%# we can then derive the heading angle of the vehicle `yaw` w.r.t x-axis.~%# Further, P should lie on the y-axis by definition and hence O->P vector is~%# perpendicular to the tangent line. We therefore can use O->P vector as the~%# lateral deviation `d`. We then transform to the ego vehicle coordinates and~%# derive:~%#~%#   yaw_err = -yaw  (rad in [-pi, pi])~%#   offset = -d (meters)~%#   curvature = 1/r, when curvature==0, the curve collapse to a straight line.~%#~%# We can further assume |d| << r, that is, check |offset|*curvature << 1, so we~%# can exclude the corner case that there are two tangent lines in a full circle.~%#~%# Message Fields:~%~%float32 yaw_err      # estimated heading error (rad in [-pi, pi]).~%float32 offset       # estimated lateral offset, i.e., cross track error (m).~%float32 curvature    # estimated curvature (m^-1). The value is always >=0.~%~%# Note 1: To avoid confusions in different definitions of signed curvature, we~%# use unsigned curvature. Hence, left turn and right turn are distinguished by~%# `yaw_err`, that is, `yaw_err` in [-pi/2, pi/2] is left turn, and `yaw_err` in~%# [-pi, -pi/2] or [pi/2, pi] is right turn by definition.~%#~%# Note 2: or pure pursuit controller, the reference point is defined on the~%# center of the rear axle of the ego vehicle. For the Stanley controller, the~%# reference point is however defined on the center of the front axle.~%# We recommend using SimpleLaneStamped message to also include the reference~%# frame.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleLane)))
  "Returns full string definition for message of type 'SimpleLane"
  (cl:format cl:nil "## This expresses the estimated curve representing the lane center curve w.r.t~%# the chosen reference frame on the ego vehicle.~%# To uniquely define the lane and avoid confusions in positive and negative~%# values, we first define the ego vehicle w.r.t the lane center curve and apply~%# the coordinate transformation at the end.~%# First, we assume the lane center line is an arc with the center point C and~%# the radius r>0, and the reference point of ego car is at point P.~%# We denote the intersection of the extended line C-P with the arc as the~%# origin O. Given the origin O, we define O->C vector as the *y-axis* and~%# the respective tangential vector as the *x-axis* using right hand rule.~%# we can then derive the heading angle of the vehicle `yaw` w.r.t x-axis.~%# Further, P should lie on the y-axis by definition and hence O->P vector is~%# perpendicular to the tangent line. We therefore can use O->P vector as the~%# lateral deviation `d`. We then transform to the ego vehicle coordinates and~%# derive:~%#~%#   yaw_err = -yaw  (rad in [-pi, pi])~%#   offset = -d (meters)~%#   curvature = 1/r, when curvature==0, the curve collapse to a straight line.~%#~%# We can further assume |d| << r, that is, check |offset|*curvature << 1, so we~%# can exclude the corner case that there are two tangent lines in a full circle.~%#~%# Message Fields:~%~%float32 yaw_err      # estimated heading error (rad in [-pi, pi]).~%float32 offset       # estimated lateral offset, i.e., cross track error (m).~%float32 curvature    # estimated curvature (m^-1). The value is always >=0.~%~%# Note 1: To avoid confusions in different definitions of signed curvature, we~%# use unsigned curvature. Hence, left turn and right turn are distinguished by~%# `yaw_err`, that is, `yaw_err` in [-pi/2, pi/2] is left turn, and `yaw_err` in~%# [-pi, -pi/2] or [pi/2, pi] is right turn by definition.~%#~%# Note 2: or pure pursuit controller, the reference point is defined on the~%# center of the rear axle of the ego vehicle. For the Stanley controller, the~%# reference point is however defined on the center of the front axle.~%# We recommend using SimpleLaneStamped message to also include the reference~%# frame.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleLane>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleLane>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleLane
    (cl:cons ':yaw_err (yaw_err msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':curvature (curvature msg))
))
