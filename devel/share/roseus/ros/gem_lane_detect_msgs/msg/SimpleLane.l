;; Auto-generated. Do not edit!


(when (boundp 'gem_lane_detect_msgs::SimpleLane)
  (if (not (find-package "GEM_LANE_DETECT_MSGS"))
    (make-package "GEM_LANE_DETECT_MSGS"))
  (shadow 'SimpleLane (find-package "GEM_LANE_DETECT_MSGS")))
(unless (find-package "GEM_LANE_DETECT_MSGS::SIMPLELANE")
  (make-package "GEM_LANE_DETECT_MSGS::SIMPLELANE"))

(in-package "ROS")
;;//! \htmlinclude SimpleLane.msg.html


(defclass gem_lane_detect_msgs::SimpleLane
  :super ros::object
  :slots (_yaw_err _offset _curvature ))

(defmethod gem_lane_detect_msgs::SimpleLane
  (:init
   (&key
    ((:yaw_err __yaw_err) 0.0)
    ((:offset __offset) 0.0)
    ((:curvature __curvature) 0.0)
    )
   (send-super :init)
   (setq _yaw_err (float __yaw_err))
   (setq _offset (float __offset))
   (setq _curvature (float __curvature))
   self)
  (:yaw_err
   (&optional __yaw_err)
   (if __yaw_err (setq _yaw_err __yaw_err)) _yaw_err)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:serialization-length
   ()
   (+
    ;; float32 _yaw_err
    4
    ;; float32 _offset
    4
    ;; float32 _curvature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _yaw_err
       (sys::poke _yaw_err (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _yaw_err
     (setq _yaw_err (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curvature
     (setq _curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gem_lane_detect_msgs::SimpleLane :md5sum-) "f7ffa601eb572457d82f827982e252bd")
(setf (get gem_lane_detect_msgs::SimpleLane :datatype-) "gem_lane_detect_msgs/SimpleLane")
(setf (get gem_lane_detect_msgs::SimpleLane :definition-)
      "## This expresses the estimated curve representing the lane center curve w.r.t
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



(provide :gem_lane_detect_msgs/SimpleLane "f7ffa601eb572457d82f827982e252bd")


