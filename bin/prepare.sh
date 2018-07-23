#!/usr/bin/env bash

# Re-config Nginx

echo '> Run confd ...'
confd -onetime -backend env

# Work with Node service
cd $NGINX_DOCUMENT_ROOT

# Run init script
if [ -e "$NGINX_DOCUMENT_ROOT/init.sh" ]; then
	chmod +x "$NGINX_DOCUMENT_ROOT/init.sh"
	sh "$NGINX_DOCUMENT_ROOT/init.sh"
fi

exec "$@"