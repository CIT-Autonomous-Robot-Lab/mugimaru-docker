#!/bin/bash -e
# SPDX-FileCopyrightText: 2024 nacky823 youjiyongmu4@gmail.com
# SPDX-License-Identifier: Apache-2.0

## Installation of Autoware Universe
mkdir -p $HOME/ros2_ws/src/
cd $HOME/ros2_ws/src
git clone -b feat/gnss-reset https://github.com/CIT-Autonomous-Robot-Lab/emcl2_ros2.git
git clone -b mugimaru-2024/main https://github.com/CIT-Autonomous-Robot-Lab/gnss2map.git
git clone -b mugimaru-2024 https://github.com/CIT-Autonomous-Robot-Lab/raspicat_slam_navigation.git
git clone -b mugimaru-2024 https://github.com/CIT-Autonomous-Robot-Lab/wall_tracking.git

cd $HOME/ros2_ws
rosdep update
sudo apt-get update
rosdep install -r -y --from-paths src --ignore-src --rosdistro humble
colcon build --symlink-install

## Installation of Raspicat-related
mkdir -p $HOME/raspicat_ws/src && cd $HOME/raspicat_ws/src
git clone -b ros2 https://github.com/rt-net/raspicat_ros.git
#git clone -b mugimaru-2024/ros2 https://github.com/nacky823/raspicat_description.git
#git clone -b ros2 https://github.com/rt-net/raspicat_sim.git
git clone -b feat/gnss https://github.com/makotoyoshigoe/raspicat_description.git
git clone -b feat/gnss https://github.com/makotoyoshigoe/raspicat_sim.git
./raspicat_sim/raspicat_gazebo/scripts/download_gazebo_models.sh
cd $HOME/raspicat_ws
rosdep update
sudo apt-get update
rosdep install -r -y --from-paths src --ignore-src --rosdistro humble
colcon build --symlink-install

## Installation of Mugimaru-related
mkdir -p $HOME/mugimaru_ws/src && cd $HOME/mugimaru_ws/src
git clone -b mugimaru-2024/main https://github.com/nacky823/ros2_odometry_twist_converter.git
git clone -b master https://github.com/nacky823/mugimaru_navigation2.git
git clone -b master https://github.com/nacky823/mugimaru_launcher.git
cd $HOME/mugimaru_ws
rosdep update
sudo apt-get update
rosdep install -r -y --from-paths src --ignore-src --rosdistro humble
colcon build --symlink-install

echo "source $HOME/ros2_ws/install/setup.bash" >> $HOME/.bashrc
echo "source $HOME/raspicat_ws/install/setup.bash" >> $HOME/.bashrc
echo "source $HOME/mugimaru_ws/install/setup.bash" >> $HOME/.bashrc
echo "" >> $HOME/.bashrc
