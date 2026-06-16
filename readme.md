# build notiec gazebo
```bash
cd ~/simulation_ws/src/
# docker build -f ros1_ci/Dockerfile -t tortoisebot-noetic-gazebo .
docker build -t tortoisebot-noetic-gazebo:latest .
```

# run gazebo through container
For CI testing purposes, the most useful thing is to run it headless and confirm the workspace sourcing works:
```bash
xhost +local:docker
docker run --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  tortoisebot-noetic-gazebo \
  roslaunch tortoisebot_gazebo tortoisebot_playground.launch
```

## docker push
build locally as
docker build -t tortoisebot-noetic-gazebo:latest .
then tag it and push it
docker tag tortoisebot-noetic-gazebo:latest tesarect/karthikeyanbalasubramanian-cp22:tortoisebot-noetic-gazebo-v1
docker push tesarect/karthikeyanbalasubramanian-cp22:tortoisebot-noetic-gazebo-v1

for later usage just pull it
docker pull tesarect/karthikeyanbalasubramanian-cp22:tortoisebot-noetic-gazebo-v1