# mugimaru-docker

## Installation
+ Clone packages
    ```
    ./install_packages.bash
    ```
+ Docker image build command
    ```
    ./build.sh
    ```
+ Run container command
    ```
    ./run_container
    ```
+ Build workspaces
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
