FROM amd64/ros:dashing-ros1-bridge-bionic

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV ROS_DISTRO melodic
ENV ROS2_DISTRO dashing

###################################### user #####################################

ENV SHELL=/bin/bash \
    USER=argnctu \
    UID=1000 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

ENV HOME=/home/${USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${UID} \
    ${USER} 

RUN echo "root:root" | chpasswd
RUN echo "${USER}:111111" | chpasswd

###################################### basic tools #####################################

RUN apt-get -o Acquire::ForceIPv4=true update && apt-get -yq dist-upgrade \
    && apt-get -o Acquire::ForceIPv4=true install -yq --no-install-recommends \
    locales \
    cmake \
    make \
    git \
    vim \
    gedit \
    wget \
    sudo \
    lsb-release \
    build-essential \
    net-tools \
    dirmngr \
    gnupg2 \
    mercurial \
    libcanberra-gtk-module \
    libcanberra-gtk3-module \
    libpcap-dev \
    libpython3-dev \
    python-gtk2 \
    python-gobject \
    python-tk \
    python3-pip \
    python3-setuptools \
    python3-opencv \
    python3-numpy \
    python3-empy  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

##################################### setting ###################################################
RUN chown -R ${USER}:${USER} ${HOME}/
RUN echo "${USER} ALL=(ALL)  ALL" >> /etc/sudoers

# Support of nvidia-docker 2.0
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all

WORKDIR ${HOME}
