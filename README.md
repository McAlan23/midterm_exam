
[Screencast from 2022년 09월 20일 11시 37분 15초.webm](https://user-images.githubusercontent.com/91641488/191155034-4bfc8091-f171-49de-ab67-3c5d331a4abc.webm)

## Demo-video number one.

[Screencast from 2022년 09월 20일 11시 37분 15초.webm](https://user-images.githubusercontent.com/91641488/191156770-54a3151d-fb6f-46b7-a352-c63734b97730.webm)

## Demo-video number two.
![Screenshot from 2022-09-20 11-51-53](https://user-images.githubusercontent.com/91641488/191156784-c74f9729-ecff-4208-9d3e-e0f75eb34bbb.png)

>>Screenshot that shows how it works.

>>**The code should be the way:**

```
sudo apt install ros-foxy-turtlesim

>> [sudo] password for beka: >>insert your ROS password

>>Reading package lists... Done

>>Building dependency tree... Done

>>Reading state information... Done
```

```
beka@beka-virtual-machine:~$ ros2 pkg executables turtlesim


>>turtlesim draw_square

>>turtlesim mimic

>>turtlesim turtle_teleop_key

>>turtlesim turtlesim_node
```

```
ros2 run turtlesim turtlesim_node


>>Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.

>>[INFO] [1663738168.550771480] [turtlesim]: Starting turtlesim with node name /turtlesim

>>[INFO] [1663738168.560139707] [turtlesim]: Spawning turtle [turtle1] at x=[5.544445], y=[5.544445], theta >>[0.000000]

```

##The following picture shows how it goes

![Screenshot from 2022-09-21 14-29-45](https://user-images.githubusercontent.com/91641488/191421874-c85a4b2f-fbd7-46ab-8d29-43a3480b4a88.png)

```
ros2 run turtlesim turtle_teleop_key

>>Reading from keyboard

>>---------------------------

>>Use arrow keys to move the turtle.

>>Use G|B|V|C|D|E|R|T keys to rotate to absolute orientations. 'F' to cancel a rotation.

>>'Q' to quit.
```
## Open a new terminal and run the following code
```
sudo apt install ~nros-foxy-rqt*

[sudo] password for beka: 

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

```

```
rqt
```

```ros2 run turtlesim turtlesim_node

>>Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.

>>[INFO] [1663733476.577524905] [turtlesim]: Starting turtlesim with node name /turtlesim

>>[INFO] [1663733476.580853171] [turtlesim]: Spawning turtle [turtle1] at x=[5.544445], y=[5.544445], theta=[0.000000]

>>[INFO] [1663733538.414393359] [turtlesim]: Spawning turtle [tutrle123] at x=[10.000000], y=[3.000000], theta=[0.000000]

>>^C[INFO] [1663733561.194649277] [rclcpp]: signal_handler(signum=2)
```

```
ros2 node list
/my_turtle
/rqt_gui_py_node_12356
```

```
ros2 node info /my_turtle


>>7./my_turtle

>>8.Subscribers:
   
  >> /my_turtle/cmd_vel: geometry_msgs/msg/Twist
   
  >> /parameter_events: rcl_interfaces/msg/ParameterEvent
   
   >> /turtle1/cmd_vel: geometry_msgs/msg/Twist

>> 9.Publishers:
   
  >> /my_turtle/color_sensor: turtlesim/msg/Color
   
  >> /my_turtle/pose: turtlesim/msg/Pose
   
  >> /parameter_events: rcl_interfaces/msg/ParameterEvent
   
  >> /rosout: rcl_interfaces/msg/Log
   
  >> /turtle1/color_sensor: turtlesim/msg/Color
   
  >> /turtle1/pose: turtlesim/msg/Pose

>> 10. Service Servers:
   
  >> /clear: std_srvs/srv/Empty
   
  >> /kill: turtlesim/srv/Kill
   
  >> /my_turtle/describe_parameters: rcl_interfaces/srv/DescribeParameters
   
  >> /my_turtle/get_parameter_types: rcl_interfaces/srv/GetParameterTypes
   
  >> /my_turtle/get_parameters: rcl_interfaces/srv/GetParameters
   
  >> /my_turtle/list_parameters: rcl_interfaces/srv/ListParameters
   
  >> /my_turtle/set_parameters: rcl_interfaces/srv/SetParameters
   
  >> /my_turtle/set_parameters_atomically: rcl_interfaces/srv/SetParametersAtomically
   
  >> /my_turtle/set_pen: turtlesim/srv/SetPen
   
  >> /my_turtle/teleport_absolute: turtlesim/srv/TeleportAbsolute
   
  >> /my_turtle/teleport_relative: turtlesim/srv/TeleportRelative
   
 >>  /reset: std_srvs/srv/Empty
   
  >> /spawn: turtlesim/srv/Spawn
   
  >> /turtle1/set_pen: turtlesim/srv/SetPen
   
  >> /turtle1/teleport_absolute: turtlesim/srv/TeleportAbsolute
   
  >> /turtle1/teleport_relative: turtlesim/srv/TeleportRelative


>> 11. Service Clients:


>> 12.Action Servers:

>> /my_turtle/rotate_absolute: turtlesim/action/RotateAbsolute

>> /turtle1/rotate_absolute: turtlesim/action/RotateAbsolute

>> Action Clients:>
```
>> In the case that you want to see the graph you need to run in the same time through the different terminals 
>> teleop and turtlesim-key command in the same time 
>> After that open the RQT
>> Ther youu need to go through the #Plugins>Introspection>Node Graph
## The graph it will show the main code
![Screenshot from 2022-09-21 15-17-27](https://user-images.githubusercontent.com/91641488/191429209-288ff126-a50d-45ec-b5af-196ce5843995.png)

```
ros2 topic list

>>/my_turtle/cmd_vel

>>/my_turtle/color_sensor

>>/my_turtle/pose

>>/parameter_events

>>/rosout

>>/turtle1/cmd_vel

>>/turtle1/color_sensor

>>/turtle1/pose
```

```
ros2 topic list -t
>>/my_turtle/cmd_vel [geometry_msgs/msg/Twist]

>>/my_turtle/color_sensor [turtlesim/msg/Color]

>>/my_turtle/pose [turtlesim/msg/Pose]

>>/parameter_events [rcl_interfaces/msg/ParameterEvent]

>>/rosout [rcl_interfaces/msg/Log]

>>/turtle1/cmd_vel [geometry_msgs/msg/Twist]


>>/turtle1/color_sensor [turtlesim/msg/Color]

>>/turtle1/pose [turtlesim/msg/Pose]

```
## the following picture shows the active graph charts
>>To see the active graph chart at the graph part you need to change the graph type to the "Node/Topic(active)"
![Screenshot from 2022-09-21 15-31-50](https://user-images.githubusercontent.com/91641488/191431289-4b7801e6-e14d-4ca0-8859-998d917d66a6.png)


##week 5 
```
ros2 topic info /my_turtle/cmd_vel
>>Type: geometry_msgs/msg/Twist
>>Publisher count: 0
>>Subscription count: 2

```
#open a new terminal
```
ros2 run turtlesim turtlesim_node
Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.
[INFO] [1664243364.365419413] [turtlesim]: Starting turtlesim with node name /turtlesim
[INFO] [1664243364.373763712] [turtlesim]: Spawning turtle [turtle1] at x=[5.544445], y=[5.544445], theta=[0.000000]

```
#open a new terminnal
```
ros2 service type /clean
ros2 service list -t
/clear [std_srvs/srv/Empty]
/kill [turtlesim/srv/Kill]
/reset [std_srvs/srv/Empty]
/spawn [turtlesim/srv/Spawn]
/teleop_turtle/describe_parameters [rcl_interfaces/srv/DescribeParameters]
/teleop_turtle/get_parameter_types [rcl_interfaces/srv/GetParameterTypes]
/teleop_turtle/get_parameters [rcl_interfaces/srv/GetParameters]
/teleop_turtle/list_parameters [rcl_interfaces/srv/ListParameters]
/teleop_turtle/set_parameters [rcl_interfaces/srv/SetParameters]
/teleop_turtle/set_parameters_atomically [rcl_interfaces/srv/SetParametersAtomically]
/turtle1/set_pen [turtlesim/srv/SetPen]
/turtle1/teleport_absolute [turtlesim/srv/TeleportAbsolute]
/turtle1/teleport_relative [turtlesim/srv/TeleportRelative]
/turtlesim/describe_parameters [rcl_interfaces/srv/DescribeParameters]
/turtlesim/get_parameter_types [rcl_interfaces/srv/GetParameterTypes]
/turtlesim/get_parameters [rcl_interfaces/srv/GetParameters]
/turtlesim/list_parameters [rcl_interfaces/srv/ListParameters]
/turtlesim/set_parameters [rcl_interfaces/srv/SetParameters]
/turtlesim/set_parameters_atomically [rcl_interfaces/srv/SetParametersAtomically]

```
#here you can see the main output that shows the /clean service is actually shows the [std_srvs/srv/Empty]

```
ros2 service find std_srvs/srv/Empty
/clear
/reset

```

```
ros2 interface show std_srvs/srv/Empty.srv
'---'

```

```
ros2 interface show turtlesim/srv/Spawn
float32 x
float32 y
float32 theta
string name # Optional.  A unique name will be created and returned if this is empty
---
string name
```
```
ros2 service call /spawn turtlesim/srv/Spawn "{x : 2, y :  2, theta : 0.2, name: ''}"
requester: making request: turtlesim.srv.Spawn_Request(x=2.0, y=2.0, theta=0.2, name='')

response:
turtlesim.srv.Spawn_Response(name='turtle2')
```
## Understanding a parameters

# creating a simple service and client 

## first of all you need create a file for that you need to moove to the ros2_foxy source file, after that you can input the code that will create a file for cpp_srvcli


```
ros2 pkg create --build-type ament_python py_srvcli --dependencies rclpy example_interfaces
```
## The output has to be like this 
```
going to create a new package
package name: py_srvcli
destination directory: /home/beka/ros2_foxy/src
package format: 3
version: 0.0.0
description: TODO: Package description
maintainer: ['beka <bedboy383@gmail.com>']
licenses: ['TODO: License declaration']
build type: ament_python
dependencies: ['rclpy', 'example_interfaces']
creating folder ./py_srvcli
creating ./py_srvcli/package.xml
creating source folder
creating folder ./py_srvcli/py_srvcli
creating ./py_srvcli/setup.py
creating ./py_srvcli/setup.cfg
creating folder ./py_srvcli/resource
creating ./py_srvcli/resource/py_srvcli
creating ./py_srvcli/py_srvcli/__init__.py
creating folder ./py_srvcli/test
creating ./py_srvcli/test/test_copyright.py
creating ./py_srvcli/test/test_flake8.py
creating ./py_srvcli/test/test_pep257.py

[WARNING]: Unknown license 'TODO: License declaration'.  This has been set in the package.xml, but no LICENSE file has been created.
It is recommended to use one of the ament license identitifers:
Apache-2.0
BSL-1.0
BSD-2.0
BSD-2-Clause
BSD-3-Clause
GPL-3.0-only
LGPL-3.0-only
MIT
MIT-0

```

## After that you need to go the file that has been created and after that you need to create a new python file. To create a file you can use a "touch" function

```
touch server_member_function.py 
```
## and 
```
touch client_member_function.py
```
## After creating a file you need to coppy the code that has been given at the web-site.
## After copying the code you need to add an additional file that will run the ros2 functiomm and service function itself

```
colcon build --packages-select py_srvcli

```
##The output of this is following:

```
Starting >>> py_srvcli
--- stderr: py_srvcli                   
/usr/lib/python3/dist-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
---
Finished <<< py_srvcli [0.82s]

Summary: 1 package finished [1.00s]
  1 package had stderr output: py_srvcli
```
## Final step and to see that code is working you need to run the code that will show the main output
# at this step make sure that all the steps done as written in the example.

```
colcon build --packages-select py_srvcli

```
#The following function has to give a output like:

```
Starting >>> py_srvcli
--- stderr: py_srvcli                   
/usr/lib/python3/dist-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
---
Finished <<< py_srvcli [0.89s]

Summary: 1 package finished [1.05s]
  1 package had stderr output: py_srvcli
```
## For the next step you need to open another terminal
```
ros2 run py_srvcli service
```
## remark: Don't wait to see the output stright away after typing this code. To see the output it is necessary to open a new terminal.
```
ros2 run py_srvcli client 2 3
```
## When you see the following output:
```
[INFO] [1664878325.227472612] [minimal_client_async]: Result of add_two_ints: for 2 + 3 = 5
```
## open previous terminal to see the out put.
```
[INFO] [1664878325.216643058] [minimal_service]: Incoming request
a: 2 b: 3
```
## For the beginning of the task you need to open preveous task folder.
```
cd ros2_foxy/src/py_pubsub/py_pubsub
```
#by copying this you will add the publisher member function
```
wget https://raw.githubusercontent.com/ros2/examples/foxy/rclpy/topics/minimal_publisher/examples_rclpy_minimal_publisher/publisher_member_function.py
```
#at this stage you will see the differences ofd the files. Open the file folder and then you will see the new file at the py_pubsub file.
```
colcon build --packages-select py_pubsub
```
```
Starting >>> py_pubsub
[1.074s] WARNING:colcon.colcon_core.shell:The following packages are in the workspace but haven't been built:
- ament_lint
- ament_package
- ament_cmake_core
- ament_flake8
- ament_cmake_export_definitions
- ament_cmake_export_include_directories
- ament_cmake_export_libraries
- ament_cmake_export_link_flags
- ament_cmake_include_directories
- ament_cmake_libraries
- ament_cmake_python
- ament_cmake_version
- ament_pep257
- ament_cmake_export_dependencies
- ament_cmake_export_interfaces
- ament_cmake_export_targets
- ament_cmake_target_dependencies
- ament_cmake_test
- ament_copyright
- ament_cmake
- ament_cmake_gtest
- ament_cmake_pytest
- ament_index_python
- domain_coordinator
- ament_cmake_gmock
- rpyutils
- ament_cmake_ros
- fastrtps_cmake_module
- python_cmake_module
- rmw_implementation_cmake
- rosidl_adapter
- rosidl_typesupport_interface
- spdlog_vendor
- rosidl_parser
- rosidl_runtime_cpp
- tracetools
- rcutils
- rosidl_cmake
- rcpputils
- rosidl_runtime_c
- libyaml_vendor
- rcl_logging_spdlog
- rmw
- rosidl_generator_c
- rosidl_typesupport_introspection_c
- rcl_yaml_param_parser
- rosidl_typesupport_fastrtps_cpp
- rosidl_typesupport_introspection_cpp
- rosidl_typesupport_fastrtps_c
- rosidl_typesupport_c
- rosidl_generator_py
- rosidl_typesupport_cpp
- rosidl_default_runtime
- builtin_interfaces
- rmw_dds_common
- rcl_interfaces
- rmw_fastrtps_shared_cpp
- rosgraph_msgs
- statistics_msgs
- std_msgs
- rmw_fastrtps_cpp
- rmw_implementation
- rcl
- libstatistics_collector
- rclcpp
They are being used from the following locations instead:
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
- /opt/ros/humble
To suppress this warning ignore these packages in the workspace:
--packages-ignore ament_lint ament_package ament_cmake_core ament_flake8 ament_cmake_export_definitions ament_cmake_export_include_directories ament_cmake_export_libraries ament_cmake_export_link_flags ament_cmake_include_directories ament_cmake_libraries ament_cmake_python ament_cmake_version ament_pep257 ament_cmake_export_dependencies ament_cmake_export_interfaces ament_cmake_export_targets ament_cmake_target_dependencies ament_cmake_test ament_copyright ament_cmake ament_cmake_gtest ament_cmake_pytest ament_index_python domain_coordinator ament_cmake_gmock rpyutils ament_cmake_ros fastrtps_cmake_module python_cmake_module rmw_implementation_cmake rosidl_adapter rosidl_typesupport_interface spdlog_vendor rosidl_parser rosidl_runtime_cpp tracetools rcutils rosidl_cmake rcpputils rosidl_runtime_c libyaml_vendor rcl_logging_spdlog rmw rosidl_generator_c rosidl_typesupport_introspection_c rcl_yaml_param_parser rosidl_typesupport_fastrtps_cpp rosidl_typesupport_introspection_cpp rosidl_typesupport_fastrtps_c rosidl_typesupport_c rosidl_generator_py rosidl_typesupport_cpp rosidl_default_runtime builtin_interfaces rmw_dds_common rcl_interfaces rmw_fastrtps_shared_cpp rosgraph_msgs statistics_msgs std_msgs rmw_fastrtps_cpp rmw_implementation rcl libstatistics_collector rclcpp
[1.074s] ERROR:colcon.colcon_ros.task.ament_python.build:Failed to find the following files:
- /home/beka/ros2_foxy/src/install/cyclonedds/share/cyclonedds/package.sh
- /home/beka/ros2_foxy/src/install/fastcdr/share/fastcdr/package.sh
- /home/beka/ros2_foxy/src/install/gtest_vendor/share/gtest_vendor/package.sh
- /home/beka/ros2_foxy/src/install/gmock_vendor/share/gmock_vendor/package.sh
- /home/beka/ros2_foxy/src/install/foonathan_memory_vendor/share/foonathan_memory_vendor/package.sh
- /home/beka/ros2_foxy/src/install/connext_cmake_module/share/connext_cmake_module/package.sh
- /home/beka/ros2_foxy/src/install/fastrtps/share/fastrtps/package.sh
- /home/beka/ros2_foxy/src/install/rcl_logging_log4cxx/share/rcl_logging_log4cxx/package.sh
- /home/beka/ros2_foxy/src/install/rcl_logging_noop/share/rcl_logging_noop/package.sh
- /home/beka/ros2_foxy/src/install/rosidl_generator_dds_idl/share/rosidl_generator_dds_idl/package.sh
- /home/beka/ros2_foxy/src/install/rmw_connext_shared_cpp/share/rmw_connext_shared_cpp/package.sh
- /home/beka/ros2_foxy/src/install/rosidl_typesupport_connext_cpp/share/rosidl_typesupport_connext_cpp/package.sh
- /home/beka/ros2_foxy/src/install/rosidl_typesupport_connext_c/share/rosidl_typesupport_connext_c/package.sh
- /home/beka/ros2_foxy/src/install/rmw_connext_cpp/share/rmw_connext_cpp/package.sh
- /home/beka/ros2_foxy/src/install/rmw_cyclonedds_cpp/share/rmw_cyclonedds_cpp/package.sh
- /home/beka/ros2_foxy/src/install/rmw_fastrtps_dynamic_cpp/share/rmw_fastrtps_dynamic_cpp/package.sh
Check that the following packages have been built:
- cyclonedds
- fastcdr
- gtest_vendor
- gmock_vendor
- foonathan_memory_vendor
- connext_cmake_module
- fastrtps
- rcl_logging_log4cxx
- rcl_logging_noop
- rosidl_generator_dds_idl
- rmw_connext_shared_cpp
- rosidl_typesupport_connext_cpp
- rosidl_typesupport_connext_c
- rmw_connext_cpp
- rmw_cyclonedds_cpp
- rmw_fastrtps_dynamic_cpp
Failed   <<< py_pubsub [0.02s, exited with code 1]

Summary: 0 packages finished [0.81s]
  1 package failed: py_pubsub
```

```
beka@beka-virtual-machine:~/ros2_foxy/src/py_pubsub$ colcon build --packages-select py_pubsub
Starting >>> py_pubsub
--- stderr: py_pubsub                   
/usr/lib/python3/dist-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
---
Finished <<< py_pubsub [0.78s]

Summary: 1 package finished [0.93s]
  1 package had stderr output: py_pubsub
```
## From this point you can see that there is a new file named as py_pubsub
## Now run this code
```
ros2 run py_pubsub talker 

```
## Output for this will be.
```
[INFO] [1664850544.329996210] [minimal_publisher]: Publishing: "Hello World: 0"
[INFO] [1664850544.821959581] [minimal_publisher]: Publishing: "Hello World: 1"
[INFO] [1664850545.322347815] [minimal_publisher]: Publishing: "Hello World: 2"
[INFO] [1664850545.822956765] [minimal_publisher]: Publishing: "Hello World: 3"
[INFO] [1664850546.322339652] [minimal_publisher]: Publishing: "Hello World: 4"
[INFO] [1664850546.821889290] [minimal_publisher]: Publishing: "Hello World: 5"
[INFO] [1664850547.322529502] [minimal_publisher]: Publishing: "Hello World: 6"
[INFO] [1664850547.822593891] [minimal_publisher]: Publishing: "Hello World: 7"
[INFO] [1664850548.321717629] [minimal_publisher]: Publishing: "Hello World: 8"
[INFO] [1664850548.822190574] [minimal_publisher]: Publishing: "Hello World: 9"

```
## The next step is to show how listener.

```
ros2 run py_pubsub listener
```

```
[INFO] [minimal_subscriber]: I heard: "Hello World: 10"
[INFO] [minimal_subscriber]: I heard: "Hello World: 11"
[INFO] [minimal_subscriber]: I heard: "Hello World: 12"
[INFO] [minimal_subscriber]: I heard: "Hello World: 13"
[INFO] [minimal_subscriber]: I heard: "Hello World: 14"
```
# Using a parameters in a class (Python)
## At the beginning you need to move to the to the source file in the ros2 direction
## create a new file 
```
ros2 pkg create --build-type ament_python python_parameters --dependencies rclpy
```
< the output will be >
```
going to create a new package
package name: python_parameters
destination directory: /home/beka/ros2_foxy/src
package format: 3
version: 0.0.0
description: TODO: Package description
maintainer: ['beka <bedboy383@gmail.com>']
licenses: ['TODO: License declaration']
build type: ament_python
dependencies: ['rclpy']
creating folder ./python_parameters
creating ./python_parameters/package.xml
creating source folder
creating folder ./python_parameters/python_parameters
creating ./python_parameters/setup.py
creating ./python_parameters/setup.cfg
creating folder ./python_parameters/resource
creating ./python_parameters/resource/python_parameters
creating ./python_parameters/python_parameters/__init__.py
creating folder ./python_parameters/test
creating ./python_parameters/test/test_copyright.py
creating ./python_parameters/test/test_flake8.py
creating ./python_parameters/test/test_pep257.py

[WARNING]: Unknown license 'TODO: License declaration'.  This has been set in the package.xml, but no LICENSE file has been created.
It is recommended to use one of the ament license identitifers:
Apache-2.0
BSL-1.0
BSD-2.0
BSD-2-Clause
BSD-3-Clause
GPL-3.0-only
LGPL-3.0-only
MIT
MIT-0
```
<< At the parameters file you need to create a new file by using a "touch" function >>
```
touch python_parameters_node.py
```
## After creating a new file u need to add code as shown at the example.
```
colcon build --packages-select python_parameters
```
<< with the output in this setuation you will see the main output >>

```
Starting >>> python_parameters
--- stderr: python_parameters                   
/usr/lib/python3/dist-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
---
Finished <<< python_parameters [0.75s]

Summary: 1 package finished [0.91s]
  1 package had stderr output: python_parameters
```
## By openning a new terminal you will see a main output
```
. install/setup.bash
ros2 run python_parameters param_talker
```
## now you can see the specific output

```
[INFO] [1664882739.987161169] [minimal_param_node]: Hello world!
[INFO] [1664882741.980220512] [minimal_param_node]: Hello world!
[INFO] [1664882743.981279428] [minimal_param_node]: Hello world!
[INFO] [1664882745.980066608] [minimal_param_node]: Hello world!
[INFO] [1664882747.980920497] [minimal_param_node]: Hello world!
[INFO] [1664882749.981137762] [minimal_param_node]: Hello world!
[INFO] [1664882751.980063621] [minimal_param_node]: Hello world!
...
```

## In the new terminal
```
ros2 param list
```
```
/minimal_param_node:
  my_parameter
  use_sim_time
```
```
ros2 param set /minimal_param_node my_parameter earth
```
```
Set parameter successful
```
# Running a "ros2 doctor" function
```
ros2 doctor
```
```
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rviz_default_plugins has been updated to a new version. local: 11.2.2 < latest: 11.2.3
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rqt_graph has been updated to a new version. local: 1.2.1 < latest: 1.3.0
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rviz2 has been updated to a new version. local: 11.2.2 < latest: 11.2.3
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rqt_reconfigure has been updated to a new version. local: 1.0.8 < latest: 1.1.1
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: cv_bridge has been updated to a new version. local: 3.0.3 < latest: 3.2.1
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: image_geometry has been updated to a new version. local: 3.0.3 < latest: 3.2.1
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rqt_topic has been updated to a new version. local: 1.2.3 < latest: 1.5.0
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rviz_rendering has been updated to a new version. local: 11.2.2 < latest: 11.2.3
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rviz_assimp_vendor has been updated to a new version. local: 11.2.2 < latest: 11.2.3
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rqt_msg has been updated to a new version. local: 1.0.6 < latest: 1.2.0
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rviz_ogre_vendor has been updated to a new version. local: 11.2.2 < latest: 11.2.3
/opt/ros/humble/lib/python3.10/site-packages/ros2doctor/api/package.py: 112: UserWarning: rviz_common has been updated to a new version. local: 11.2.2 < latest: 11.2.3

All 5 checks passed


```
## In this case you might see that everything is passed which means that it is working well

# msg and srv


```
colcon build --packages-select tutorial_interfaces
```
## Opn another terminal

```
. install/setup.bash
ros2 interface show tutorial_interfaces/msg/Num
```
## the output will be:
```
int64 num
```
## the output shows that your code and all the step has been done properely 
```
ros2 interface show tutorial_interfaces/msg/Sphere
```
```
geometry_msgs/Point center
        float64 x
        float64 y
        float64 z
float64 radius
```

```
ros2 interface show tutorial_interfaces/srv/AddThreeInts
```

```
int64 a
int64 b
int64 c
---
int64 sum
```
# Action_tutorial_interfaces
## First you need create a package from the ROS
```
ros2 pkg create action_tutorials_interfaces
```
## Then after openning a new file at the >>action_tutorials_interfaces
```
mkdir action
```
## After making a changes at the files like "CMakeLists.txt" and "package.xml"
## you need to open a new terminal and got the ros2 working station
```
colcon build
```
```
0.584s] WARNING:colcon.colcon_core.package_identification:Failed to parse ROS package manifest in 'src/tutorial_interfaces': Error(s) in package 'src/tutorial_interfaces/package.xml':
The package "tutorial_interfaces" must not "build_depend" on a package with the same name as this package
The package "tutorial_interfaces" must not "build_export_depend" on a package with the same name as this package
The package "tutorial_interfaces" must not "exec_depend" on a package with the same name as this package
[0.899s] WARNING:colcon.colcon_core.package_selection:Some selected packages are already built in one or more underlay workspaces:
	'examples_rclpy_minimal_client' is in: /opt/ros/humble
	'ros2launch' is in: /opt/ros/humble
	'rosidl_default_generators' is in: /opt/ros/humble
	'rqt_srv' is in: /opt/ros/humble
	'dummy_robot_bringup' is in: /opt/ros/humble
	'rclcpp' is in: /opt/ros/humble
	'rosbag2_transport' is in: /opt/ros/humble
	'rclcpp_lifecycle' is in: /opt/ros/humble
	'rqt_graph' is in: /opt/ros/humble
	'examples_rclcpp_minimal_action_server' is in: /opt/ros/humble
	'launch_xml' is in: /opt/ros/humble
	'launch_yaml' is in: /opt/ros/humble
	'action_tutorials_py' is in: /opt/ros/humble
	'rqt_publisher' is in: /opt/ros/humble
	'examples_rclpy_executors' is in: /opt/ros/humble
	'qt_gui_cpp' is in: /opt/ros/humble
	'rqt_msg' is in: /opt/ros/humble
	'examples_rclcpp_multithreaded_executor' is in: /opt/ros/humble
	'rpyutils' is in: /opt/ros/humble
	'action_tutorials_cpp' is in: /opt/ros/humble
	'pluginlib' is in: /opt/ros/humble
	'rqt_py_console' is in: /opt/ros/humble
	'rqt_reconfigure' is in: /opt/ros/humble
	'ament_cmake_gtest' is in: /opt/ros/humble
	'sensor_msgs' is in: /opt/ros/humble
	'rqt_action' is in: /opt/ros/humble
	'examples_rclpy_minimal_subscriber' is in: /opt/ros/humble
	'rcutils' is in: /opt/ros/humble
	'geometry2' is in: /opt/ros/humble
	'ament_cmake' is in: /opt/ros/humble
	'pendulum_control' is in: /opt/ros/humble
	'class_loader' is in: /opt/ros/humble
	'quality_of_service_demo_cpp' is in: /opt/ros/humble
	'action_tutorials_interfaces' is in: /opt/ros/humble
	'launch_testing_ament_cmake' is in: /opt/ros/humble
	'rqt_console' is in: /opt/ros/humble
	'composition' is in: /opt/ros/humble
	'eigen3_cmake_module' is in: /opt/ros/humble
	'rqt_topic' is in: /opt/ros/humble
	'std_msgs' is in: /opt/ros/humble
	'image_tools' is in: /opt/ros/humble
	'sros2_cmake' is in: /opt/ros/humble
	'launch_testing_ros' is in: /opt/ros/humble
	'ament_lint_auto' is in: /opt/ros/humble
	'demo_nodes_py' is in: /opt/ros/humble
	'launch_testing' is in: /opt/ros/humble
	'rosbag2_compression' is in: /opt/ros/humble
	'rqt_gui_cpp' is in: /opt/ros/humble
	'dummy_map_server' is in: /opt/ros/humble
	'rosbag2' is in: /opt/ros/humble
	'ros2cli_common_extensions' is in: /opt/ros/humble
	'rosidl_default_runtime' is in: /opt/ros/humble
	'rqt_py_common' is in: /opt/ros/humble
	'examples_rclcpp_minimal_timer' is in: /opt/ros/humble
	'rqt_service_caller' is in: /opt/ros/humble
	'rqt_gui' is in: /opt/ros/humble
	'geometry_msgs' is in: /opt/ros/humble
	'dummy_sensors' is in: /opt/ros/humble
	'urdf' is in: /opt/ros/humble
	'launch' is in: /opt/ros/humble
	'rcl_interfaces' is in: /opt/ros/humble
	'sros2' is in: /opt/ros/humble
	'examples_rclcpp_minimal_composition' is in: /opt/ros/humble
	'launch_ros' is in: /opt/ros/humble
	'examples_rclpy_minimal_action_server' is in: /opt/ros/humble
	'zstd_vendor' is in: /opt/ros/humble
	'examples_rclpy_minimal_publisher' is in: /opt/ros/humble
	'message_filters' is in: /opt/ros/humble
	'examples_rclcpp_minimal_action_client' is in: /opt/ros/humble
	'robot_state_publisher' is in: /opt/ros/humble
	'ament_cmake_pytest' is in: /opt/ros/humble
	'common_interfaces' is in: /opt/ros/humble
	'examples_rclcpp_minimal_service' is in: /opt/ros/humble
	'ament_index_python' is in: /opt/ros/humble
	'ament_cmake_gmock' is in: /opt/ros/humble
	'intra_process_demo' is in: /opt/ros/humble
	'turtlesim' is in: /opt/ros/humble
	'rosidl_runtime_py' is in: /opt/ros/humble
	'rviz2' is in: /opt/ros/humble
	'pendulum_msgs' is in: /opt/ros/humble
	'lifecycle' is in: /opt/ros/humble
	'rosbag2_storage_default_plugins' is in: /opt/ros/humble
	'examples_rclcpp_minimal_publisher' is in: /opt/ros/humble
	'rcpputils' is in: /opt/ros/humble
	'demo_nodes_cpp_native' is in: /opt/ros/humble
	'examples_rclpy_minimal_service' is in: /opt/ros/humble
	'ros_environment' is in: /opt/ros/humble
	'examples_rclpy_minimal_action_client' is in: /opt/ros/humble
	'ament_index_cpp' is in: /opt/ros/humble
	'tlsf_cpp' is in: /opt/ros/humble
	'examples_rclcpp_minimal_subscriber' is in: /opt/ros/humble
	'rviz_default_plugins' is in: /opt/ros/humble
	'examples_rclcpp_minimal_client' is in: /opt/ros/humble
	'rosbag2_storage' is in: /opt/ros/humble
	'rqt_shell' is in: /opt/ros/humble
	'ament_cmake_auto' is in: /opt/ros/humble
	'rcl_lifecycle' is in: /opt/ros/humble
	'rosbag2_cpp' is in: /opt/ros/humble
	'builtin_interfaces' is in: /opt/ros/humble
	'rclpy' is in: /opt/ros/humble
	'ament_lint_common' is in: /opt/ros/humble
	'demo_nodes_cpp' is in: /opt/ros/humble
	'quality_of_service_demo_py' is in: /opt/ros/humble
	'rclcpp_action' is in: /opt/ros/humble
	'ament_cmake_ros' is in: /opt/ros/humble
	'rclcpp_components' is in: /opt/ros/humble
	'ament_cmake_core' is in: /opt/ros/humble
	'topic_monitor' is in: /opt/ros/humble
	'logging_demo' is in: /opt/ros/humble
	'tlsf' is in: /opt/ros/humble
	'rqt_plot' is in: /opt/ros/humble
	'kdl_parser' is in: /opt/ros/humble
If a package in a merged underlay workspace is overridden and it installs headers, then all packages in the overlay must sort their include directories by workspace order. Failure to do so may result in build failures or undefined behavior at run time.
If the overridden package is used by another package in any underlay, then the overriding package in the overlay must be API and ABI compatible or undefined behavior at run time may occur.

If you understand the risks and want to override a package anyways, add the following to the command line:
	--allow-overriding action_tutorials_cpp action_tutorials_interfaces action_tutorials_py ament_cmake ament_cmake_auto ament_cmake_core ament_cmake_gmock ament_cmake_gtest ament_cmake_pytest ament_cmake_ros ament_index_cpp ament_index_python ament_lint_auto ament_lint_common builtin_interfaces class_loader common_interfaces composition demo_nodes_cpp demo_nodes_cpp_native demo_nodes_py dummy_map_server dummy_robot_bringup dummy_sensors eigen3_cmake_module examples_rclcpp_minimal_action_client examples_rclcpp_minimal_action_server examples_rclcpp_minimal_client examples_rclcpp_minimal_composition examples_rclcpp_minimal_publisher examples_rclcpp_minimal_service examples_rclcpp_minimal_subscriber examples_rclcpp_minimal_timer examples_rclcpp_multithreaded_executor examples_rclpy_executors examples_rclpy_minimal_action_client examples_rclpy_minimal_action_server examples_rclpy_minimal_client examples_rclpy_minimal_publisher examples_rclpy_minimal_service examples_rclpy_minimal_subscriber geometry2 geometry_msgs image_tools intra_process_demo kdl_parser launch launch_ros launch_testing launch_testing_ament_cmake launch_testing_ros launch_xml launch_yaml lifecycle logging_demo message_filters pendulum_control pendulum_msgs pluginlib qt_gui_cpp quality_of_service_demo_cpp quality_of_service_demo_py rcl_interfaces rcl_lifecycle rclcpp rclcpp_action rclcpp_components rclcpp_lifecycle rclpy rcpputils rcutils robot_state_publisher ros2cli_common_extensions ros2launch ros_environment rosbag2 rosbag2_compression rosbag2_cpp rosbag2_storage rosbag2_storage_default_plugins rosbag2_transport rosidl_default_generators rosidl_default_runtime rosidl_runtime_py rpyutils rqt_action rqt_console rqt_graph rqt_gui rqt_gui_cpp rqt_msg rqt_plot rqt_publisher rqt_py_common rqt_py_console rqt_reconfigure rqt_service_caller rqt_shell rqt_srv rqt_topic rviz2 rviz_default_plugins sensor_msgs sros2 sros2_cmake std_msgs tlsf tlsf_cpp topic_monitor turtlesim urdf zstd_vendor

This may be promoted to an error in a future release of colcon-override-check.
[0.900s] ERROR:colcon:colcon build: Duplicate package names not supported:
- action_tutorials_interfaces:
  - src/action_tutorials_interfaces
  - src/ros2/demos/action_tutorials/action_tutorials_interfaces
```

## after running a colcon build you will need o run the other code that will be more useful in the case that you might need
```
. install/setup.bash
```
# remark
## if after running a ". install/setup.bash" code will show you an error
```
bash: install/setup.bahs: No such file or directory
```
## it means that you did not complite the code corectly

```
ros2 interface show action_tutorials_interfaces/action/Fibonacci
```
```
int32 order
---
int32[] sequence
---
int32[] partial_sequence
```
# action_tutorials_cpp

## First of all you need to go through your working space and after that creade the a package

```
os2 pkg create --dependencies action_tutorials_interfaces rclcpp rclcpp_action rclcpp_components -- action_tutorials_cpp
```
## after taht you need to follow the instraction according to the changes at the coding part of the Fibonacci_action_server.cpp and the visibility_control.h. If you can not find this files you might use the "touch" function to create that files and after that add the main coding parts that  you might need to use.
## after that you need to go to the working space and there you need to run the "colcon build" function and then you will run the other code that will help you to run the action
```
colcon buil
```

```
[0.594s] WARNING:colcon.colcon_core.package_identification:Failed to parse ROS package manifest in 'tutorial_interfaces': Error(s) in package 'tutorial_interfaces/package.xml':
The package "tutorial_interfaces" must not "build_depend" on a package with the same name as this package
The package "tutorial_interfaces" must not "build_export_depend" on a package with the same name as this package
The package "tutorial_interfaces" must not "exec_depend" on a package with the same name as this package
[0.925s] WARNING:colcon.colcon_core.package_selection:Some selected packages are already built in one or more underlay workspaces:
	'examples_rclpy_minimal_service' is in: /opt/ros/humble
	'std_msgs' is in: /opt/ros/humble
	'demo_nodes_cpp' is in: /opt/ros/humble
	'ament_cmake_auto' is in: /opt/ros/humble
	'examples_rclcpp_minimal_action_client' is in: /opt/ros/humble
	'rclcpp_action' is in: /opt/ros/humble
	'rosbag2_transport' is in: /opt/ros/humble
	'ros2launch' is in: /opt/ros/humble
	'rqt_action' is in: /opt/ros/humble
	'demo_nodes_cpp_native' is in: /opt/ros/humble
	'examples_rclcpp_multithreaded_executor' is in: /opt/ros/humble
	'quality_of_service_demo_cpp' is in: /opt/ros/humble
	'ament_index_cpp' is in: /opt/ros/humble
	'sros2_cmake' is in: /opt/ros/humble
	'rcpputils' is in: /opt/ros/humble
	'dummy_robot_bringup' is in: /opt/ros/humble
	'rqt_msg' is in: /opt/ros/humble
	'examples_rclpy_minimal_action_client' is in: /opt/ros/humble
	'ament_cmake_ros' is in: /opt/ros/humble
	'qt_gui_cpp' is in: /opt/ros/humble
	'rqt_graph' is in: /opt/ros/humble
	'rqt_gui' is in: /opt/ros/humble
	'launch_testing_ament_cmake' is in: /opt/ros/humble
	'examples_rclpy_executors' is in: /opt/ros/humble
	'lifecycle' is in: /opt/ros/humble
	'sros2' is in: /opt/ros/humble
	'rqt_py_console' is in: /opt/ros/humble
	'rqt_shell' is in: /opt/ros/humble
	'robot_state_publisher' is in: /opt/ros/humble
	'quality_of_service_demo_py' is in: /opt/ros/humble
	'eigen3_cmake_module' is in: /opt/ros/humble
	'common_interfaces' is in: /opt/ros/humble
	'rqt_srv' is in: /opt/ros/humble
	'pluginlib' is in: /opt/ros/humble
	'ros_environment' is in: /opt/ros/humble
	'rqt_topic' is in: /opt/ros/humble
	'tlsf_cpp' is in: /opt/ros/humble
	'rqt_reconfigure' is in: /opt/ros/humble
	'builtin_interfaces' is in: /opt/ros/humble
	'logging_demo' is in: /opt/ros/humble
	'rcutils' is in: /opt/ros/humble
	'action_tutorials_interfaces' is in: /opt/ros/humble
	'topic_monitor' is in: /opt/ros/humble
	'rviz_default_plugins' is in: /opt/ros/humble
	'launch_xml' is in: /opt/ros/humble
	'launch_ros' is in: /opt/ros/humble
	'turtlesim' is in: /opt/ros/humble
	'rclcpp' is in: /opt/ros/humble
	'rosidl_runtime_py' is in: /opt/ros/humble
	'image_tools' is in: /opt/ros/humble
	'message_filters' is in: /opt/ros/humble
	'rclcpp_components' is in: /opt/ros/humble
	'rqt_plot' is in: /opt/ros/humble
	'examples_rclcpp_minimal_action_server' is in: /opt/ros/humble
	'rpyutils' is in: /opt/ros/humble
	'examples_rclcpp_minimal_publisher' is in: /opt/ros/humble
	'urdf' is in: /opt/ros/humble
	'rqt_service_caller' is in: /opt/ros/humble
	'kdl_parser' is in: /opt/ros/humble
	'launch_testing' is in: /opt/ros/humble
	'rosbag2_cpp' is in: /opt/ros/humble
	'examples_rclpy_minimal_client' is in: /opt/ros/humble
	'examples_rclcpp_minimal_subscriber' is in: /opt/ros/humble
	'geometry2' is in: /opt/ros/humble
	'intra_process_demo' is in: /opt/ros/humble
	'launch' is in: /opt/ros/humble
	'rosidl_default_generators' is in: /opt/ros/humble
	'composition' is in: /opt/ros/humble
	'class_loader' is in: /opt/ros/humble
	'rcl_interfaces' is in: /opt/ros/humble
	'rclcpp_lifecycle' is in: /opt/ros/humble
	'rqt_gui_cpp' is in: /opt/ros/humble
	'demo_nodes_py' is in: /opt/ros/humble
	'ament_cmake_core' is in: /opt/ros/humble
	'rqt_publisher' is in: /opt/ros/humble
	'sensor_msgs' is in: /opt/ros/humble
	'examples_rclpy_minimal_publisher' is in: /opt/ros/humble
	'rviz2' is in: /opt/ros/humble
	'action_tutorials_py' is in: /opt/ros/humble
	'rcl_lifecycle' is in: /opt/ros/humble
	'action_tutorials_cpp' is in: /opt/ros/humble
	'ros2cli_common_extensions' is in: /opt/ros/humble
	'ament_cmake_pytest' is in: /opt/ros/humble
	'rqt_py_common' is in: /opt/ros/humble
	'pendulum_msgs' is in: /opt/ros/humble
	'rqt_console' is in: /opt/ros/humble
	'dummy_map_server' is in: /opt/ros/humble
	'examples_rclcpp_minimal_timer' is in: /opt/ros/humble
	'ament_cmake_gmock' is in: /opt/ros/humble
	'rosbag2' is in: /opt/ros/humble
	'dummy_sensors' is in: /opt/ros/humble
	'rclpy' is in: /opt/ros/humble
	'rosidl_default_runtime' is in: /opt/ros/humble
	'launch_testing_ros' is in: /opt/ros/humble
	'examples_rclpy_minimal_action_server' is in: /opt/ros/humble
	'rosbag2_compression' is in: /opt/ros/humble
	'ament_cmake' is in: /opt/ros/humble
	'examples_rclcpp_minimal_client' is in: /opt/ros/humble
	'ament_lint_common' is in: /opt/ros/humble
	'examples_rclcpp_minimal_service' is in: /opt/ros/humble
	'rosbag2_storage_default_plugins' is in: /opt/ros/humble
	'rosbag2_storage' is in: /opt/ros/humble
	'pendulum_control' is in: /opt/ros/humble
	'tlsf' is in: /opt/ros/humble
	'ament_lint_auto' is in: /opt/ros/humble
	'launch_yaml' is in: /opt/ros/humble
	'zstd_vendor' is in: /opt/ros/humble
	'examples_rclpy_minimal_subscriber' is in: /opt/ros/humble
	'ament_index_python' is in: /opt/ros/humble
	'geometry_msgs' is in: /opt/ros/humble
	'ament_cmake_gtest' is in: /opt/ros/humble
	'examples_rclcpp_minimal_composition' is in: /opt/ros/humble
If a package in a merged underlay workspace is overridden and it installs headers, then all packages in the overlay must sort their include directories by workspace order. Failure to do so may result in build failures or undefined behavior at run time.
If the overridden package is used by another package in any underlay, then the overriding package in the overlay must be API and ABI compatible or undefined behavior at run time may occur.

If you understand the risks and want to override a package anyways, add the following to the command line:
	--allow-overriding action_tutorials_cpp action_tutorials_interfaces action_tutorials_py ament_cmake ament_cmake_auto ament_cmake_core ament_cmake_gmock ament_cmake_gtest ament_cmake_pytest ament_cmake_ros ament_index_cpp ament_index_python ament_lint_auto ament_lint_common builtin_interfaces class_loader common_interfaces composition demo_nodes_cpp demo_nodes_cpp_native demo_nodes_py dummy_map_server dummy_robot_bringup dummy_sensors eigen3_cmake_module examples_rclcpp_minimal_action_client examples_rclcpp_minimal_action_server examples_rclcpp_minimal_client examples_rclcpp_minimal_composition examples_rclcpp_minimal_publisher examples_rclcpp_minimal_service examples_rclcpp_minimal_subscriber examples_rclcpp_minimal_timer examples_rclcpp_multithreaded_executor examples_rclpy_executors examples_rclpy_minimal_action_client examples_rclpy_minimal_action_server examples_rclpy_minimal_client examples_rclpy_minimal_publisher examples_rclpy_minimal_service examples_rclpy_minimal_subscriber geometry2 geometry_msgs image_tools intra_process_demo kdl_parser launch launch_ros launch_testing launch_testing_ament_cmake launch_testing_ros launch_xml launch_yaml lifecycle logging_demo message_filters pendulum_control pendulum_msgs pluginlib qt_gui_cpp quality_of_service_demo_cpp quality_of_service_demo_py rcl_interfaces rcl_lifecycle rclcpp rclcpp_action rclcpp_components rclcpp_lifecycle rclpy rcpputils rcutils robot_state_publisher ros2cli_common_extensions ros2launch ros_environment rosbag2 rosbag2_compression rosbag2_cpp rosbag2_storage rosbag2_storage_default_plugins rosbag2_transport rosidl_default_generators rosidl_default_runtime rosidl_runtime_py rpyutils rqt_action rqt_console rqt_graph rqt_gui rqt_gui_cpp rqt_msg rqt_plot rqt_publisher rqt_py_common rqt_py_console rqt_reconfigure rqt_service_caller rqt_shell rqt_srv rqt_topic rviz2 rviz_default_plugins sensor_msgs sros2 sros2_cmake std_msgs tlsf tlsf_cpp topic_monitor turtlesim urdf zstd_vendor

This may be promoted to an error in a future release of colcon-override-check.
[0.926s] ERROR:colcon:colcon build: Duplicate package names not supported:
- action_tutorials_cpp:
  - action_tutorials_cpp
  - ros2/demos/action_tutorials/action_tutorials_cpp
- action_tutorials_interfaces:
  - action_tutorials_interfaces
  - ros2/demos/action_tutorials/action_tutorials_interfaces
```
## and then you need to run the ros2 function

```
ros2 run action_tutorials_cpp fibonacci_action_client
```


