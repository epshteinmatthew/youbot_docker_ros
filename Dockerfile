# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:indigo-robot-trusty

SHELL ["/bin/bash", "-c"]


# install ros packages
RUN apt-get update && apt-get install -y \
    ros-indigo-desktop=1.1.6-0* \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y ros-indigo-youbot-driver-ros-interface ros-indigo-youbot-description git ros-indigo-catkin
RUN source /opt/ros/indigo/setup.bash
RUN setcap cap_net_raw+ep /opt/ros/indigo/lib/youbot_driver_ros_interface/youbot_driver_ros_interface
RUN ldconfig /opt/ros/indigo/lib

