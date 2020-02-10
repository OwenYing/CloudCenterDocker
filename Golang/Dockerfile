FROM golang

# Set Environment Variables:
ENV GOPATH=/root
ENV GO111MODULE=auto
ENV GOPRIVATE=insidelabs-git.mathworks.com
ENV MICRO_REGISTRY=etcd
# GOROOT has auto-set by the base image

# Install the Go Micro Framework:
RUN go get -u google.golang.org/grpc
RUN go get -u github.com/golang/protobuf/protoc-gen-go