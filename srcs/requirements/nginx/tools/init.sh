#!/bin/bash

cp /default.conf /etc/nginx/conf.d/default.conf
sleep 5;

nginx -g 'daemon off;'

tail -f