#!/bin/bash

alias ssh-fujisaki="ssh ubuntu@10.42.0.89"
alias motor_power_on="ros2 service call /motor_power std_srvs/srv/SetBool '{data: true}'"
mkdir -p .gazebo/
cp -r ~/ros2_ws/src/raspicat_sim/raspicat_gazebo/models ~/.gazebo
sudo chmod 666 /dev/ttyACM0
source ~/gnss_driver_ws/install/setup.bash
