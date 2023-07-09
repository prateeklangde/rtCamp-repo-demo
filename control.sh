#!/bin/bash

if [ "$1" = "stop" ]; then
  docker-compose down
elif [ "$1" = "start" ]; then
  docker-compose up -d
else
  echo "Invalid command. Usage: control.sh [stop|start]"
  exit 1
fi

