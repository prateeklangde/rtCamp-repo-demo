#!/bin/sh

case "$1" in
  "stop")
    docker-compose stop
    ;;
  "start")
    docker-compose up -d
    ;;
  *)
    echo "Invalid command. Usage: control.sh [stop|start]"
    exit 1
    ;;
esac

