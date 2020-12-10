FROM ubuntu:xenial
MAINTAINER xFirefly anunuparov@gmail.com

ARG USER_NAME
ARG USER_ID
ARG USER_GID

RUN apt update
RUN apt install sude
RUN useradd -ms /bin/bash $USER_NAME
RUN usermode -aG sudo $USER_NAME
RUN yes $USER_NAME | passwd $USER_NAME

RUN usermod -u $USER_ID $USER_NAME
RUN groupmod -g $USER_GID $USER_NAME

WORKDIR /home/$USER_NAME

# install common packages
COPY ./install_common.sh /tmp/install_common.sh
RUN yes "Y" | /tmp/install_common.sh

# install ros
COPY ./install_ros.sh /tmp/install_ros.sh
RUN yes "Y" /tmp/install_ros.sh

# change ownership of everything to our user
RUN cd $WORKDIR && chown $USER_NAME:$USER_NAME -R .

# terminator config
RUN mkdir -p .config/terminator 
COPY ./terminator.config .config/terminator/config
RUN chown $USER_NAME:$USER_NAME -R .config

# entrypoint for docker
ENTRYPOINT bash -c "source ~/code/docker/entrypoint.sh && /bin/bash"
