FROM centos7-node-dev:latest

# make app bin
RUN mkdir -p /app/bin

# Copy config
COPY ./confd /etc/confd
COPY ./bin/* /app/bin/
RUN chmod +x /app/bin/*

ENTRYPOINT ["/app/bin/prepare.sh"]

EXPOSE 80
EXPOSE 443

CMD ["/app/bin/run.sh"]