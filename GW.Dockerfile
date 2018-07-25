FROM longvnit/centos7-node-dev:latest

# make app bin
RUN mkdir -p /app/bin

# Copy config
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates
COPY ./confd/conf.d/gateway.conf.toml /etc/confd/conf.d/gateway.conf.toml
COPY ./confd/templates/gateway.conf.tmpl /etc/confd/templates/gateway.conf.tmpl
COPY ./bin/* /app/bin/
RUN chmod +x /app/bin/*

ENTRYPOINT ["/app/bin/prepare.sh"]

EXPOSE 5000

CMD ["/app/bin/run.sh"]