#!/bin/bash
set -e

source /opt/ros/noetic/setup.bash
source /simulation_ws/devel/setup.bash

exec "$@"
