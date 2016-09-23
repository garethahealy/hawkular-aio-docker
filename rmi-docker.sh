#!/usr/bin/env bash

# Delete all exited containers
docker rm -f $(docker ps -a | grep Exited | awk '{print $1}')
docker rm -f $(docker ps -a | grep Dead | awk '{print $1}')

# remove dangling images (untageed)
docker rmi $(docker images -qaf 'dangling=true')
