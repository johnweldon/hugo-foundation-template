#!/bin/bash

# run with sudo

HN=${1:-example.com}
REALPATH=$(readlink -e ./nginx_config/site.config)

ln -fs $REALPATH /etc/nginx/sites-available/$HN
ln -fs /etc/nginx/sites-available/$HN /etc/nginx/sites-enabled/$HN

service nginx configtest

echo "If the previous message indicated success you can run 'service nginx reload'"
