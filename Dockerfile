# Base image
FROM osrf/ros:noetic-desktop-full-focal

# Install Gazebo 11 and dependencies
RUN apt-get update && apt-get install -y \
  gazebo11 \
  ros-noetic-gazebo-ros-pkgs \
  ros-noetic-gazebo-ros-control \
  ros-noetic-ros-control \
  ros-noetic-ros-controllers \
  ros-noetic-joint-state-publisher \
  ros-noetic-joint-state-controller \
  ros-noetic-robot-state-publisher \
  ros-noetic-robot-localization \
  ros-noetic-xacro \
  ros-noetic-tf2-ros \
  ros-noetic-tf2-tools \
  && rm -rf /var/lib/apt/lists/*

# Make workspace
RUN mkdir -p /catkin_ws/src
WORKDIR /catkin_ws/src

# Copy tortoisebot packages into the workspace
COPY ./tortoisebot /catkin_ws/src/

# Build workspace
RUN /bin/bash -c "source /opt/ros/noetic/setup.bash && cd /catkin_ws && catkin_make"

# Source workspace for interactive shells
RUN echo "source /catkin_ws/devel/setup.bash" >> ~/.bashrc

# Entrypoint sources both ROS and workspace before any command
RUN echo '#!/bin/bash\nsource /opt/ros/noetic/setup.bash\nsource /catkin_ws/devel/setup.bash\nexec "$@"' > /entrypoint.sh \
    && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
