#!/bin/bash

cp /default.conf /etc/nginx/conf.d/default.conf
sleep 5;

mkdir -p /var/run/nginx

nginx -g 'daemon off;'