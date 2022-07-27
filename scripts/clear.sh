#!/bin/bash

##
#  clear.sh
##

echo "# Clear Cntainers"
docker stop `docker ps -aq`
docker rm `docker ps -aq`
echo ""

echo "# Clear Images"
docker rmi `docker images -aq`
echo ""

echo "# Clear Volumes"
docker volume prune
echo ""

echo "# Clear Networks"
docker network prune
echo ""