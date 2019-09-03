FROM amazonlinux

ENV GOPATH=/goofys   

RUN yum install -y git golang
RUN go get github.com/kahing/goofys
RUN go install github.com/kahing/goofys

RUN echo "goofys has been built"

