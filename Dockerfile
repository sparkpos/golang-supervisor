FROM golang:alpine
RUN apk add --no-cache supervisor
ADD supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
