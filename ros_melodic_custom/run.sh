#!/bin/bash
xhost +local:root
sudo docker run --name ros_custom \
	-e DISPLAY \
       	-e QT_X11_NO_MITSHM=1 \
       	-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
	-v /home/firefly/ros/ros_dockers/ros_melodic_custom:/home/firefly/code \
	--user firefly \
	--ipc=host \
	--net=host \
	--privileged \
	-v /dev/bus/usb:/dev/bus/usb \
	-v /dev:/dev \
	--rm \
	-it \
	ros_melodic_custom
xhost -local:root

