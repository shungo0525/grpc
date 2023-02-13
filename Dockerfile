# https://qiita.com/sugiyama404/items/9e4f34c6a21062b2746f

FROM golang:1.19.5-buster

ENV PROTOBUF_VERSION 3.17.3

RUN apt-get update \
    && apt-get install -y protobuf-compiler unzip --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /grpc
COPY . /grpc

## build時のみ使いたいので、runで実行。
## RUN chmod +x go_grpc/bin/go_starter && go_grpc/bin/go_starter

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
RUN go get google.golang.org/grpc/internal/channelz@v1.53.0