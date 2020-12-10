#!/bin/bash

apt update
apt upgrade
apt install --no-install-recommends \
	terminator \
	mc \
	tmux \
	vim \
	gedit \
	mousepad \
	openssh-client \
	htop \
	apt-utils \
	usbutils \
	dialog \
	wget
