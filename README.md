# How to use this image

## config nginx port
```console
$ vi ./docker-compose.yml
...
        environment:
            NGINX_PORT: 80
            NGINX_SSL_PORT: 443
            NGINX_ACCESS_LOG: /var/log/access.log
            NGINX_ERROR_LOG: /var/log/error.log
            NGINX_DOCUMENT_ROOT: /var/www/html
            SERVER_NAME: _
            SERVICE_URL: http://127.0.0.1:5000
...
```

## start a Node instant

```console
$ git clone https://github.com/longvnit/docker-node-dev.git
$ cd docker-node-dev
$ docker-compose build
$ docker-compose -d up
```

## init node env

```console
$ vi ./www/html/init.sh 
```

```console
#!/bin/bash

cd $NGINX_DOCUMENT_ROOT

# Install Module
if [ ! -d "node_modules" ]; then
	npm install
fi

node main.js &
```



