#!/bin/bash

if [ ! -f "/etc/nginx/conf.d/default.conf" ]; then
	cp /default.conf /etc/nginx/conf.d/default.conf
	sleep 5;
fi
mkdir -p /var/run/nginx

nginx -g 'daemon off;'