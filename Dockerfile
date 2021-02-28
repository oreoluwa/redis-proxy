FROM golang:1.16-alpine

RUN apk add --no-cache bash \
                       curl \
                       git \
                       make \
                       build-base

WORKDIR /app
COPY . /app
RUN go build -mod=readonly -o redis-proxy cmd/redis-proxy/main.go
CMD ["redis-proxy"]