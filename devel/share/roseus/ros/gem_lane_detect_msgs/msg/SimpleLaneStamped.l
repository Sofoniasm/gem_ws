;; Auto-generated. Do not edit!


(when (boundp 'gem_lane_detect_msgs::SimpleLaneStamped)
  (if (not (find-package "GEM_LANE_DETECT_MSGS"))
    (make-package "GEM_LANE_DETECT_MSGS"))
  (shadow 'SimpleLaneStamped (find-package "GEM_LANE_DETECT_MSGS")))
(unless (find-package "GEM_LANE_DETECT_MSGS::SIMPLELANESTAMPED")
  (make-package "GEM_LANE_DETECT_MSGS::SIMPLELANESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude SimpleLaneStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gem_lane_detect_msgs::SimpleLaneStamped
  :super ros::object
  :slots (_header _lane ))

(defmethod gem_lane_detect_msgs::SimpleLaneStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lane __lane) (instance gem_lane_detect_msgs::SimpleLane :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lane __lane)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lane
   (&rest __lane)
   (if (keywordp (car __lane))
       (send* _lane __lane)
     (progn
       (if __lane (setq _lane (car __lane)))
       _lane)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gem_lane_detect_msgs/SimpleLane _lane
    (send _lane :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gem_lane_detect_msgs/SimpleLane _lane
       (send _lane :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gem_lane_detect_msgs/SimpleLane _lane
     (send _lane :deserialize buf ptr-) (incf ptr- (send _lane :serialization-length))
   ;;
   self)
  )

(setf (get gem_lane_detect_msgs::SimpleLaneStamped :md5sum-) "485a4c8d48e154980ae182e1ad829209")
(setf (get gem_lane_detect_msgs::SimpleLaneStamped :datatype-) "gem_lane_detect_msgs/SimpleLaneStamped")
(setf (get gem_lane_detect_msgs::SimpleLaneStamped :definition-)
      "# This represents a SimpleLane with reference coordinate frame and timestamp
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

")



(provide :gem_lane_detect_msgs/SimpleLaneStamped "485a4c8d48e154980ae182e1ad829209")


