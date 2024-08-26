#!/bin/bash

cd "$(dirname "$0")" || exit

NO_DOCKER=false
if [ "$1" == "--no-docker" ]
then
  cmake -B buildtree
  cmake --build buildtree
  ./buildtree/Schedulix
  exit $?
fi

#docker build -t schedulix-cpp-dev .
docker ps | grep scheduldix-cpp-dev
IS_RUNNING=$?

if [ "$IS_RUNNING" == 0 ]
then
    echo "container is already running"
else
    echo "starting container"
    docker compose up --build
    echo "container stopped"
fi

docker ps
