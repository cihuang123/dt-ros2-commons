#!/usr/bin/env bash

BASH_OPTION=bash

docker run \
    -it \
    -d \
    -v "/home/$USER/dt-ros2-commons:/home/argnctu/dt-ros2-commons" \
    --user root \
    --name argnctu \
    --network host \
    --privileged \
    --security-opt seccomp=unconfined \
    --restart always \
    argnctu/duckiepond:rpi-auto \
    $BASH_OPTION
