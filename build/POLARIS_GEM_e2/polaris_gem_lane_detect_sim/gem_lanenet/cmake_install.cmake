# Install script for directory: /home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sofonias/gem_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/catkin_generated/installspace/gem_lanenet.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gem_lanenet/cmake" TYPE FILE FILES
    "/home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/catkin_generated/installspace/gem_lanenetConfig.cmake"
    "/home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/catkin_generated/installspace/gem_lanenetConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gem_lanenet" TYPE FILE FILES "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gem_lanenet" TYPE PROGRAM FILES "/home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/catkin_generated/installspace/lanenet_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gem_lanenet/configs" TYPE DIRECTORY FILES "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/configs/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gem_lanenet/lanenet_weights" TYPE DIRECTORY FILES "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/lanenet_weights/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gem_lanenet/launch" TYPE DIRECTORY FILES "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_lane_detect_sim/gem_lanenet/launch/")
endif()

