#!/bin/bash

##
# logs.sh
##

clear

MARIADB_PID=`docker ps | grep -v "grep" | grep "mariadb" | awk '{print $1}'`
NGINX_PID=`docker ps | grep -v "grep" | grep "nginx" | awk '{print $1}'`
WORDPRESS_PID=`docker ps | grep -v "grep" | grep "wordpress" | awk '{print $1}'`

echo '===== Maria DB =====' > logs.txt
echo `docker logs $MARIADB_PID` >> logs.txt
echo "" >> logs.txt

echo '===== Nginx =====' >> logs.txt
echo `docker logs $NGINX_PID` >> logs.txt
echo "" >> logs.txt

echo '===== Wordpress =====' >> logs.txt
echo `docker logs $WORDPRESS_PID` >> logs.txt