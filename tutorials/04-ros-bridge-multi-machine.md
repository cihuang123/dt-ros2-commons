# ros1_bridge Multi-Machine Example
In this example, we use `ros1_bridge` package and **ROS_DOMAIN_ID** to bridge messages between ROS1 and ROS2 at different machines.

## Method 1
-----
## Laptop 1 (ROS1 + ROS2)

### Terminal 1
Launch ROS1 master.
```
Laptop $ source docker_run.sh

Docker $ source ros1_environment.sh
Docker $ roscore
```

### Terminal 2
Run ROS1 publisher.
```
Laptop $ source docker_join.sh

Docker $ source ros1_environment.sh
Docker $ rosrun rospy_tutorials talker
```

### Terminal 3
Set ROS_DOMAIN_ID and run ros1_bridge.
```
Laptop $ source docker_join.sh

Docker $ source ros1_environment.sh
Docker $ source ros2_environment.sh
Docker $ export ROS_DOMAIN_ID=<your_domain_id>
Docker $ ros2 run ros1_bridge dynamic_bridge
```

## Laptop 2 (Pure ROS2)

### Terminal 1
Set ROS_DOMAIN_ID and run ROS2 subscriber.
```
Laptop $ source docker_run.sh

Docker $ source ros2_environment.sh
Docker $ export ROS_DOMAIN_ID=<your_domain_id>
Docker $ ros2 run demo_nodes_py listener
```

## Method 2 (Advanced)
-----
## Laptop 1 (Pure ROS1)

### Terminal 1
Set master IP and launch ROS1 master.
```
Laptop $ source docker_run.sh

Docker $ source ros1_environment.sh
Docker $ export ROS_MASTER_URI=http://10.42.0.2:11311
Docker $ export ROS_IP=10.42.0.2
Docker $ roscore
```

### Terminal 2
Set master IP and run ROS1 publisher.
```
Laptop $ source docker_join.sh

Docker $ source ros1_environment.sh
Docker $ export ROS_MASTER_URI=http://10.42.0.2:11311
Docker $ export ROS_IP=10.42.0.2
Docker $ rosrun rospy_tutorials talker
```

## Laptop 2 (ROS1 + ROS2)

### Terminal 1
Set master IP, ROS_DOMAIN_ID, and run ros1_bridge.
```
Laptop $ source docker_run.sh

Docker $ source ros1_environment.sh
Docker $ source ros2_environment.sh

Docker $ export ROS_MASTER_URI=http://10.42.0.2:11311
Docker $ export ROS_IP=10.42.0.3
Docker $ export ROS_DOMAIN_ID=<your_domain_id>

Docker $ ros2 run ros1_bridge dynamic_bridge
```

### Terminal 2
Set ROS_DOMAIN_ID and run ROS2 subscriber.
```
Laptop $ source docker_join.sh

Docker $ source ros2_environment.sh
Docker $ export ROS_DOMAIN_ID=<your_domain_id>
Docker $ ros2 run demo_nodes_py listener
```