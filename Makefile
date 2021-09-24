# ----------------------------------------------------------------------
#  Development Noetic
# ----------------------------------------------------------------------

#: Builds a Docker image from the current Dockerfile file
noetic.build:
	@docker build -t ros:robocupHome -f Dockerfile .

#: Create & Run Docker container using Nvidia
noetic.nvidia.run: 
	@rocker \
	--home \
	--user \
	--nvidia \
	--x11 \
	--volume /home/jose/Desktop/Roborregos/robocup-home-candidates-2021/catkin_ws:/catkin_ws -- \
	ros:robocupHome

#: Create & Run Docker container using Intel
noetic.intel.run: 
	@rocker \
	--home \
	--user \
	--x11 \
	--volume /dev/dri/:/dev/dri/ \
	--volume /home/jose/Desktop/Roborregos/robocup-home-candidates-2021/catkin_ws:/catkin_ws -- \
	ros:robocupHome

#: Create & Run Docker container without gpu (Rviz & Gazebo will not work)
noetic.run: 
	@docker run \
		-it -d \
		--device=/dev/dri \
		--env="DISPLAY" \
		--env="LIBGL_ALWAYS_INDIRECT=1" \
		--volume=/tmp/.X11-unix:/tmp/.X11-unix \
		--volume /home/jose/Desktop/Roborregos/robocup-home-candidates-2021/catkin_ws:/catkin_ws \
		--name ros-noetic \
		ros:robocupHome

# Fire up shell inside container.
noetic.shell:
	@docker exec -it ros-noetic bash

#: Stop the container.
noetic.down:
	@docker stop ros-noetic

#: Remove ros-noetic container. 
noetic.remove: noetic.down
	@docker container rm ros-noetic

# ----------------------------------------------------------------------
#  General Docker
# ----------------------------------------------------------------------

#: Show a list of containers.
list:
	@docker container ls -a

#: Show a list of containers.
listUp:
	@docker ps
