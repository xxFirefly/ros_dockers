#!/bin/bash

#install packages
apt-get update && apt-get install -q -y dirmngr gnupg2 lsb-release && rm -rf /var/lib/apt/lists/*

# setup keys
apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654


echo BUGAGAGAGA
# setup sources.list
echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list

apt-get update

# install bootstreap tools
apt-get install --no-install-recommends -y \ 
	python-rosdep \
	python-rosinstal \
	python-vcstools

# setup enviroment
LANG=C.UTF-8
LC_ALL=C.UTF-8

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y \
       	ros-melodic-desktop-full \
	ros-melodic-perception \
	ros-melodic-pcl-conversions \
	python-catkin-tools \
	curl \
	linux-headers-$(uname -r)
