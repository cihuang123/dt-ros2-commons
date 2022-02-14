# dt-ros2-commons

## Docker Environment Setup

We 
There are a few Dockerfile building ROS2 Dashing to run in different platforms; 
* For PC
```
$ source pc_run.sh
```
* For KV260 (argnctu/dt-ros2-commons:arm64)
```
$ source kv260_run.sh
```
* For KV260 (argnctu/dt-ros-commons:daffy-arm64v8)
```
$ source dt_kv260_run.sh
```

TODO: rename argnctu/dt-ros2-commons:arm64-base-dt-ros-commons to argnctu/dt-ros-commons:daffy-arm64v8
(built on duckietown/dt-ros-commons:daffy-arm64v8)
https://github.com/ARG-NCTU/dt-ros2-commons/blob/main/Docker/kv260-base-dt-ros-commons/docker_run.sh

TODO: add dt_kv260_run.sh and dt_kv260_join.sh symbolic links

## Tutorials

1. [ros2-topics](https://github.com/ARG-NCTU/ros1-ros2-demo/blob/main/tutorials/01-ros2-topics.md)

2. [ros2-topics-multi-machine](https://github.com/ARG-NCTU/ros1-ros2-demo/blob/main/tutorials/02-ros2-topics-multi-machine.md)

3. [ros-bridge](https://github.com/ARG-NCTU/ros1-ros2-demo/blob/main/tutorials/03-ros-bridge.md)

4. [ros-bridge-multi-machine](https://github.com/ARG-NCTU/ros1-ros2-demo/blob/main/tutorials/04-ros-bridge-multi-machine.md)
