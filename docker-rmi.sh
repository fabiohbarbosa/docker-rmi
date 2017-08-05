#!/bin/bash
function isEmpty
{
  if [ -z "$1" ]
  then
    echo "No untagged images found"
    exit 0
  fi
}

IMAGES_ID=$(docker images | grep "<none>" | awk '{print $3}')

isEmpty $IMAGES_ID

for IMG in $IMAGES_ID
do
  echo "Removing image $IMG"
  CONTAINER_ID=$(docker ps -a | grep "$IMG" | awk '{print $1}')

  if [ -n "$CONTAINER_ID" ]
  then
    docker stop $CONTAINER_ID
    docker rm $CONTAINER_ID
  fi
  docker rmi $IMG
done
