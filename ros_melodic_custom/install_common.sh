#!/bin/bash

apt-get update
apt-get upgrade
apt-get install --no-install-recommends \
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
	wget \
	bash-completion
