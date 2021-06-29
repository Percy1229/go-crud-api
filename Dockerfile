FROM golang:alpine AS builder

COPY . $GOPATH/src/github.com/Percy1229/crud-api

RUN cd $GOPATH/src/github.com/Percy1229/crud-api && go build -o /main main.go

FROM alpine

COPY --from=builder /main /main

ENTRYPOINT /main