FROM golang:1.9.3-alpine3.7
RUN apk add --no-cache supervisor
RUN go get github.com/widuu/goini
RUN go get github.com/mikemintang/go-curl
RUN go get github.com/tidwall/gjson
RUN go get github.com/urfave/cli
RUN go get github.com/lib/pq
RUN go get github.com/go-redis/redis
RUN go get github.com/kataras/iris
RUN go get github.com/satori/go.uuid
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
