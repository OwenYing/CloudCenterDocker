FROM golang

# Set Environment Variables:
ENV GOPATH=/root
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