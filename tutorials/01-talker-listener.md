# Talker_Listener Example
In this example, we use `ros1_bridge` package to bridge messages between ROS1 and ROS2.

![talker_listener](picture/talker_listener.png)

### Terminal 1
Launch ROS1 master.
```
Laptop $ source docker_run.sh

Docker $ source environment.sh
Docker $ source /opt/ros/melodic/setup.bash
Docker $ roscore
```

### Terminal 2
Running ROS1 talker.
```
Laptop $ source docker_join.sh

Docker $ source environment.sh
Docker $ source /opt/ros/melodic/setup.bash
Docker $ rosrun rospy_tutorials talker
```

### Terminal 3
Before using ros1_bridge package, we need to source ROS1 workspace first, and then source ROS2 workspace.
```
Laptop $ source docker_join.sh

Docker $ source environment.sh
Docker $ source /opt/ros/melodic/setup.bash
Docker $ source /opt/ros/dashing/setup.bash
Docker $ ros2 run ros1_bridge dynamic_bridge
```

### Ternimal 4
Running ROS2 listener.
```
Laptop $ source docker_join.sh

Docker $ source environment.sh
Docker $ source /opt/ros/dashing/setup.bash
Docker $ ros2 run demo_nodes_py listener
```

You can also use ROS2 to run talker node and use ROS1 to run listener node.