# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gem_lane_detect_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Igem_lane_detect_msgs:/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gem_lane_detect_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg" NAME_WE)
add_custom_target(_gem_lane_detect_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gem_lane_detect_msgs" "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg" ""
)

get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg" NAME_WE)
add_custom_target(_gem_lane_detect_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gem_lane_detect_msgs" "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg" "gem_lane_detect_msgs/SimpleLane:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gem_lane_detect_msgs
)
_generate_msg_cpp(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gem_lane_detect_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(gem_lane_detect_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gem_lane_detect_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gem_lane_detect_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gem_lane_detect_msgs_generate_messages gem_lane_detect_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_cpp _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_cpp _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gem_lane_detect_msgs_gencpp)
add_dependencies(gem_lane_detect_msgs_gencpp gem_lane_detect_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gem_lane_detect_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gem_lane_detect_msgs
)
_generate_msg_eus(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gem_lane_detect_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(gem_lane_detect_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gem_lane_detect_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gem_lane_detect_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gem_lane_detect_msgs_generate_messages gem_lane_detect_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_eus _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_eus _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gem_lane_detect_msgs_geneus)
add_dependencies(gem_lane_detect_msgs_geneus gem_lane_detect_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gem_lane_detect_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gem_lane_detect_msgs
)
_generate_msg_lisp(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gem_lane_detect_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(gem_lane_detect_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gem_lane_detect_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gem_lane_detect_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gem_lane_detect_msgs_generate_messages gem_lane_detect_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_lisp _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_lisp _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gem_lane_detect_msgs_genlisp)
add_dependencies(gem_lane_detect_msgs_genlisp gem_lane_detect_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gem_lane_detect_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gem_lane_detect_msgs
)
_generate_msg_nodejs(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gem_lane_detect_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(gem_lane_detect_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gem_lane_detect_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gem_lane_detect_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gem_lane_detect_msgs_generate_messages gem_lane_detect_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_nodejs _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_nodejs _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gem_lane_detect_msgs_gennodejs)
add_dependencies(gem_lane_detect_msgs_gennodejs gem_lane_detect_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gem_lane_detect_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gem_lane_detect_msgs
)
_generate_msg_py(gem_lane_detect_msgs
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gem_lane_detect_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(gem_lane_detect_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gem_lane_detect_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gem_lane_detect_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gem_lane_detect_msgs_generate_messages gem_lane_detect_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLane.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_py _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lane_detect_msgs/msg/SimpleLaneStamped.msg" NAME_WE)
add_dependencies(gem_lane_detect_msgs_generate_messages_py _gem_lane_detect_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gem_lane_detect_msgs_genpy)
add_dependencies(gem_lane_detect_msgs_genpy gem_lane_detect_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gem_lane_detect_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gem_lane_detect_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gem_lane_detect_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gem_lane_detect_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gem_lane_detect_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gem_lane_detect_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gem_lane_detect_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gem_lane_detect_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gem_lane_detect_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gem_lane_detect_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gem_lane_detect_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gem_lane_detect_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gem_lane_detect_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gem_lane_detect_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gem_lane_detect_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gem_lane_detect_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gem_lane_detect_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
