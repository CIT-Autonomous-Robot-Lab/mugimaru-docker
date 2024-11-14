# mugimaru-docker

## Installation
+ Clone this package
    ```
    cd ~/
    git clone -b mugimaru-2024 git@github.com:CIT-Autonomous-Robot-Lab/mugimaru-docker.git
    ```
+ Clone requirements packages
    ```
    ./install_packages.bash
    ```
+ Create profile for livox (If you don't have a profile)
    ```
    bash $HOME/mugimaru-docker/ws_livox/src/livox_ros_driver2/scripts/livox-raspi_setup_profile.sh
    ```
+ Docker image build command
    ```
    ./build.sh
    ```
+ Run container command
    ```
    ./run_container
    ```
+ Build workspaces (In container)
    ```
    # nav2_ws
    cd ~/nav2_ws
    rosdep update
    rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO 
    colcon build --symlink-install --packages-select nav2_msgs nav2_rviz_plugins nav2_waypoint_follower
    
    # ros2_ws
    cd ~/ros2_ws 
    rosdep update
    rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO 
    colcon build --symlink-install
    
    # ws_livox
    cd ~/ws_livox/src/livox_ros_driver2 && ./build.sh humble
    cd ~/
    source ~/.bashrc
    ```
