# ROS2 Topics Communication Example
In this example, we use the ROS2 built-in package, `turtlesim`, to demonstrate how ROS2 communicates via **topics** on laptop.

![turtlesim_node](pictures/turtlesim_node.png)

## ROS diagram
![ros2_topics](pictures/ros2_topics.png)

### Terminal 1
Run turtlesim node.
```
Laptop $ source pc_run.sh

Docker $ source ros2_environment.sh
Docker $ ros2 run turtlesim turtlesim_node
```

### Terminal 2
Run turtlesim teleop control.
```
Laptop $ source pc_join.sh

Docker $ source ros2_environment.sh
Docker $ ros2 run turtlesim turtle_teleop_key
```