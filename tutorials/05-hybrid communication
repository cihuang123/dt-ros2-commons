# ros1_bridge Multi-Machine Example
In this example, we use `ros1_bridge` package and **ROS_DOMAIN_ID** to bridge messages between ROS1 and ROS1 at different machines. 
Here we use laptop and KV260 for example.

## Method 1
## Laptop (ROS1)

### Terminal 1
Launch ROS1 master.
```
Laptop $ source pc_run.sh

Docker $ source ros1_environment.sh
Docker $ roscore
```

### Terminal 2
Run ROS1 publisher.
```
Laptop $ source pc_join.sh

Docker $ source ros1_environment.sh
Docker $ rosrun rospy_tutorials talker
```

### Terminal 3
Set ROS_DOMAIN_ID and run ros1_bridge.
```
Laptop $ source pc_join.sh

Docker $ source ros1_environment.sh
Docker $ source ros2_environment.sh
Docker $ export ROS_DOMAIN_ID=<your_domain_id>
```
### [Notice] Here. We have to have the argument "--bridge-all-topics" to set a fake ros2 node for publishing.
```
Docker $ ros2 run ros1_bridge dynamic_bridge --bridge-all-topics
```

## KV260 (ROS1)


### Terminal 1
Launch ROS1 master.
```
Laptop $ source pc_run.sh

Docker $ source ros1_environment.sh
Docker $ roscore
```

### Terminal 2
Set ROS_DOMAIN_ID and run ROS2 subscriber.
```
KV260 $ source kv260_run.sh

Docker $ source ros1_environment.sh
Docker $ rosrun demo_nodes_py listener
```

### Terminal 3
```
KV260 $ source kv260_join.sh

Docker $ source ros1_environment.sh
Docker $ source ros2_environment.sh

Docker $ export ROS_MASTER_URI=http://10.42.0.2:11311
Docker $ export ROS_IP=10.42.0.3
Docker $ export ROS_DOMAIN_ID=<your_domain_id>
```
### [Notice] Here. We have to have the argument "--bridge-all-topics" to set a fake ros2 node for subscribing.
```
Docker $ ros2 run ros1_bridge dynamic_bridge --bridge-all-topics
```

###  Other argument:
| argument     | Function           |
|-------------|--------------------|
|--show-introspection |Print output of introspection of both sides of the bridge.|
|--print-pairs        |Print a list of the supported ROS 2 <=> ROS 1 conversion pairs.|
|--bridge-all-topics  |Bridge all topics in both directions, whether or not there is a matching subscriber.|
|--bridge-all-1to2-topics|Bridge all ROS 1 topics to ROS 2, whether or not there is a matching subscriber.|
|--bridge-all-2to1-topics|Bridge all ROS 2 topics to ROS 1, whether or not there is a matching subscriber.|

