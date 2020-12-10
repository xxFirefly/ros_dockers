#!/bin/bash
sudo docker build --build-arg USER_NAME=$USER --build-arg USER_ID=$UID --build-arg USER_GID=1000 -t ros_melodic_custom -f Dockerfile .
