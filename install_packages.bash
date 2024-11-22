#!/usr/bin/bash
mkdir -p ~/mugimaru-docker/ros2_ws/src
cd ~/mugimaru-docker/ros2_ws/src 
git clone -b feat/gnss-reset git@github.com:CIT-Autonomous-Robot-Lab/emcl2_ros2.git
git clone -b ros2 git@github.com:rt-net/raspicat_ros.git
git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/raspicat_slam_navigation.git
git clone -b mugimaru-2024/main git@github.com:CIT-Autonomous-Robot-Lab/gnss2map.git
git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/raspicat_description.git
git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/raspicat_sim.git
git clone -b master git@github.com:CIT-Autonomous-Robot-Lab/raspimouse2.git
git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/wall_tracking.git
git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/pointcloud_to_laserscan.git

mkdir -p ~/mugimaru-docker/ws_livox/src
cd ~/mugimaru-docker/ws_livox/src
git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/livox_ros_driver2.git 

mkdir -p ~/mugimaru-docker/nav2_ws/src
cd ~/mugimaru-docker/nav2_ws/src
git clone -b feat/tsukuba-challenge-2023-ex git@github.com:CIT-Autonomous-Robot-Lab/navigation2.git
cd navigation2
git reset b893e538ffc9667bf0a3ab0c99070439f5521718

mkdir -p ~/mugimaru-docker/gnss_driver_ws/src
cd ~/mugimaru-docker/gnss_driver_ws/src
git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/nmea_navsat_driver.git
git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/ros2-ublox-zedf9p.git
cd 
cd 
