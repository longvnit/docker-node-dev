#!/usr/bin/env bash

# run confd config 
if [ -d /etc/confd/conf.d ]; then 
	echo '> Run confd config'
	confd -onetime -backend env
fi

if [ -e "${SERVICE_INIT_SCRIPT}" ]; then
	echo '> Exec service init script ...'
	sh "${SERVICE_INIT_SCRIPT}"
fi

exec "$@"