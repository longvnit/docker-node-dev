FROM longvnit/centos7-node-dev:latest

# make app bin
RUN mkdir -p /app/bin

# Copy config
COPY ./bin/* /app/bin/
RUN chmod +x /app/bin/*

ENTRYPOINT ["/app/bin/prepare.sh"]

EXPOSE 5000

CMD tail -f /dev/null