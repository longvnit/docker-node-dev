FROM longvnit/centos7-node-dev:latest

# make app bin
RUN mkdir -p /app/bin

# Copy config
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates
COPY ./confd/conf.d/ui.conf.toml /etc/confd/conf.d/ui.conf.toml
COPY ./confd/templates/ui.conf.tmpl /etc/confd/templates/ui.conf.tmpl
COPY ./confd/conf.d/yarn.conf.toml /etc/confd/conf.d/yarn.conf.toml
COPY ./confd/templates/yarn.conf.tmpl /etc/confd/templates/yarn.conf.tmpl
COPY ./bin/* /app/bin/
RUN chmod +x /app/bin/*

ENTRYPOINT ["/app/bin/prepare.sh"]

EXPOSE 80
EXPOSE 443
EXPOSE 8000
EXPOSE 8800

CMD ["/app/bin/run.sh"]