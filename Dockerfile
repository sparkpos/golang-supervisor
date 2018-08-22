FROM golang:alpine
RUN apk add --no-cache supervisor
RUN apk add --update coreutils && rm -rf /var/cache/apk/*
ADD supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
