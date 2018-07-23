#!/bin/bash

cd $NGINX_DOCUMENT_ROOT

# Install Module
if [ ! -d "node_modules" ]; then
	npm install
fi

node main.js &
