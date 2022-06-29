#!/bin/bash
set -e

# get 192.168.1.XX IP address
IP=$(ifconfig wlan1 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
source "/home/argnctu/dt-ros2-common/catkin_ws/devel/setup.bash"
export ROS_MASTER_URI=http://$IP:11311
export ROS_IP=$IP

# launch joy node
roslaunch joy joy_node.launch

exec "$@"