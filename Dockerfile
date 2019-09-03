FROM amazonlinux:2

ENV GOPATH /goofys   


RUN yum install -y git gcc mercurial subversion 

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum --disablerepo=amzn2-core --enablerepo=epel install -y golang
RUN go get github.com/kahing/goofys
RUN go install github.com/kahing/goofys

RUN echo "goofys has been built in /goofys/bin/goofys"

