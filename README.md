GEM_ws Docker Setup
This repository contains a Dockerfile to build a containerized environment for simulating the Polaris GEM e2 Electric Cart using ROS Noetic and Gazebo 11 in Ubuntu 20.04. The container includes all necessary dependencies and ROS packages for running the simulator and performing autonomous driving research.

Prerequisites
Before you begin, ensure you have the following installed on your system:
- Ubuntu 20.04 (WSL recommended)
- Docker (Follow the official Docker installation guide)
- Docker Compose (Optional, for running multi-container setups)

If Docker is not yet installed, you can install it with the following commands:
```bash
# Update package index
sudo apt update

# Install Docker
sudo apt install docker.io

# Add user to the Docker group (Optional)
sudo usermod -aG docker $USER
```

After installation, ensure Docker is running:
```bash
sudo systemctl start docker
sudo systemctl enable docker
```
Dockerfile Overview
The Dockerfile in this repository sets up a Docker container for simulating the Polaris GEM e2 vehicle. It installs the required ROS Noetic version and Gazebo 11, along with all necessary ROS packages for sensor integration and vehicle control.

Building the Docker Image
1. Clone this repository to your local machine:
```bash
git clone https://github.com/Sofoniasm/gem_ws.git
cd gem_ws
```
2. Build the Docker image using the Dockerfile in the repository:
```bash
docker build -t gem_ws_image .
```
This command will create a Docker image named gem_ws_image.

Running the Docker Container
After the image has been built, you can run the Docker container with the following command:
```bash
docker run -it --rm --name gem_ws_container gem_ws_image
```
This will start the container interactively. If you want to keep the container running in the background, you can omit the `-it` flag and use the `-d` flag to detach the process:
```bash
docker run -d --name gem_ws_container gem_ws_image
```

Accessing the Workspace Inside the Container
To access the container's file system, you can execute:
```bash
docker exec -it gem_ws_container bash
```
This will open a bash shell inside the container where you can run ROS and Gazebo commands.

ROS & Gazebo Simulation
Inside the container, you can source the ROS workspace and launch the simulator as follows:
1. Set up the ROS environment:
```bash
source /opt/ros/noetic/setup.bash
source ~/gem_ws/devel/setup.bash
```
2. Launch the Polaris GEM e2 simulation in Gazebo:
```bash
roslaunch polaris_gem_e2_simulator spawn_gem_e2.launch
```
This will spawn the Polaris GEM e2 vehicle model in the Gazebo simulation environment.

Customizing the Dockerfile
You can modify the Dockerfile to add more dependencies or services based on your needs. To rebuild the Docker image after editing the Dockerfile, simply run:
```bash
docker build -t gem_ws_image .
```

Contributing
Feel free to fork this repository, create a branch for your changes, and submit a pull request. Contributions are welcome!

License
This project is licensed under the MIT License - see the LICENSE file for details.

