#!/bin/bash

export IMAGE_NAME="influxdb2builder"

docker buildx version > /dev/null
if [ $? -eq 0 ]; then
   echo "buildx plugin is installed, continuing using buildx:"
   docker buildx build --load --no-cache -t ${IMAGE_NAME} .
else
   echo "buildx plugin not detected, ccontinuing without buildx:"
   docker build  --no-cache -t ${IMAGE_NAME} .
fi
