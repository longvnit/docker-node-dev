#!/usr/bin/env bash

set -e

# Start Nginx
/webserver/nginx/sbin/nginx -c /webserver/nginx/conf/nginx.conf -g "daemon off;"