#!/bin/bash

gnome-terminal --tab -- bash -c 'source /opt/ros/foxy/setup.bash;
                                source /home/$(whoami)/GalacticRacing/sim_ws/install/setup.bash;
                                cd /home/$(whoami)/GalacticRacing/sim_ws;
                                colcon build;
                                rviz2; exec bash'

sleep(2)

gnome-terminal --tab -- bash -c 'ros2 launch f1tenth_gym_ros gym_bridge_launch.py'