#!/bin/bash
set -e

function on_entrance()
{
    echo "Welcome to docker"
    source /opt/ros/melodic/setup.bash
#    source ~/code/catkin_ws/devel/setup.bash
}

echo "Welcome to docker"
source "/opt/ros/$ROS_DISTRO/setup.bash"
source /opt/ros/melodic/setup.bash
#source ~/code/catkin_ws/devel/setup.bash

exec "$@"

cd ~/code/catkin_ws
terminator --layout ros -u
