FROM golang:1.9.3-alpine3.7
RUN apk add --no-cache supervisor
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
