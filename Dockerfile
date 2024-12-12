# Use the official ROS Noetic image as the base image
FROM ros:noetic-ros-base

# Set the working directory inside the container
WORKDIR /root/catkin_ws

# Install necessary packages
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://mirrors.kernel.org/ubuntu/|g' /etc/apt/sources.list && \
    sed -i 's|http://security.ubuntu.com/ubuntu/|http://mirrors.kernel.org/ubuntu/|g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --fix-missing \
    python3-pip \
    ros-noetic-catkin \
    build-essential \
    python3-catkin-tools \
    ca-certificates \
    git \
    ros-noetic-rviz \
    ros-noetic-cv-bridge \
    ros-noetic-ackermann-msgs \
    ros-noetic-gazebo-ros && \
    rm -rf /var/lib/apt/lists/*

# Create a catkin workspace
RUN mkdir -p /root/catkin_ws/src

# Set up the environment variables for ROS
ENV LANG C.UTF-8
ENV ROS_DISTRO noetic

# Set up the ROS workspace
RUN /bin/bash -c "source /opt/ros/noetic/setup.bash && \
    catkin_make"

# Set the entry point for the container
ENTRYPOINT ["/bin/bash", "-c", "source /opt/ros/noetic/setup.bash && exec $SHELL"]

# Default command to run when the container starts
CMD ["roscore"]
