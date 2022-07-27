#!/bin/bash

##
#  clear.sh
##

docker rmi `docker images -aq`
docker network prune
docker volume rm `docker volume ls -q`