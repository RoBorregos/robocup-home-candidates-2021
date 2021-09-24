# Use the existing ROS-NOETIC image
FROM osrf/ros:noetic-desktop-full

# Install SO dependencies
RUN apt-get update -qq && \
    apt-get install -y \
    build-essential \
    nano \
    git \
    swig \
    autoconf \
    libtool \
    portaudio19-dev\
    python3-pip \
    kolourpaint4 \
    ros-noetic-audio-common \
    ros-noetic-map-server \
    ros-noetic-move-base \
    ros-noetic-rosserial-arduino \
    ros-noetic-tf2-bullet \
    ros-noetic-map-server \
    ros-noetic-amcl \
    ros-noetic-random-numbers \
    ros-noetic-moveit-kinematics \
    ros-noetic-sound-play \
    ros-noetic-dwa-local-planner \
    ros-noetic-rosserial && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends terminator 

RUN apt-get update && \
    apt-get -y install libgl1-mesa-glx libgl1-mesa-dri mesa-utils && \
    rm -rf /var/lib/apt/lists/*

# Install python dependencies
RUN python3 -m pip install --upgrade pip && \ 
    pip3 install pyaudio pocketsphinx

# Init catkin_home directoy
RUN mkdir /catkin_ws
COPY catkin_ws/ catkin_ws/

# Change Workdir
WORKDIR /catkin_ws

# catkin_make
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash;catkin_make'

# Add ROS environment variables automatically
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
RUN echo "[ -f /catkin_ws/devel/setup.bash ] && source /catkin_ws/devel/setup.bash" >> ~/.bashrc
