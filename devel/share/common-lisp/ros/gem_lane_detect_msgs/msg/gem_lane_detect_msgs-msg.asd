
(cl:in-package :asdf)

(defsystem "gem_lane_detect_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SimpleLane" :depends-on ("_package_SimpleLane"))
    (:file "_package_SimpleLane" :depends-on ("_package"))
    (:file "SimpleLaneStamped" :depends-on ("_package_SimpleLaneStamped"))
    (:file "_package_SimpleLaneStamped" :depends-on ("_package"))
  ))