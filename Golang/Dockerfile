# How to use this
# 1. >> docker build -t cloud-center-golang:v1 .
# 2. >> docker run -dit -v ${PWD}:/usr/local/golang-workspace/src cloud-center-golang:v1







FROM golang

# Set Environment Variables:
ENV GOPATH=/usr/local/golang-workspace
ENV GO111MODULE=auto
ENV GOPRIVATE=insidelabs-git.mathworks.com
# GOROOT has auto-set by the base image

# Install the Go Modules:
RUN go get -u google.golang.org/grpc
RUN go get -u github.com/golang/protobuf/protoc-gen-go
RUN go get -u github.com/aws/aws-sdk-go-v2
RUN go get -u github.com/grpc-ecosystem/go-grpc-middleware
RUN go get -u github.com/grpc-ecosystem/go-grpc-prometheus
RUN go get -u github.com/opentracing/opentracing-go
RUN go get -u github.com/prometheus/...
RUN go get -u github.com/sirupsen/logrus
RUN go get -u github.com/t-tomalak/logrus-easy-formatter

#go get -u github.com/golang/protobuf/protoc-gen-go
#go get -u mathworks.com/cloud/props/propspb/v1/;propspb

# Install protoc command
# apt install sudo
# apt install curl
# apt install unzip
# PROTOC_ZIP=protoc-3.7.1-linux-x86_64.zip
# curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v3.7.1/$PROTOC_ZIP
# sudo unzip -o $PROTOC_ZIP -d /usr/local bin/protoc
# sudo unzip -o $PROTOC_ZIP -d /usr/local 'include/*'
# rm -f $PROTOC_ZIP

# go get -d github.com/envoyproxy/protoc-gen-validate
# apt install runit  --> this crashes the container

# put protoc-gen-go onto the path
# export PATH=/usr/local/golang-workspace/bin:$PATH 