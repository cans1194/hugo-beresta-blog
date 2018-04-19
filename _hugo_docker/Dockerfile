FROM ubuntu:16.04

MAINTAINER Vladislav Nabilkov <cans1194fan@gmail.com>


COPY ./build.sh /build.sh
ENV HUGO_VERSION=0.40
ENV GO_VERSION=1.10

# RUN ./sh ./build.sh
RUN apk add --no-cache git gcc musl-dev
RUN apk add --no-cache openssh-client git tar curl

RUN apk add --update git \
    && apk upgrade \
    && apk add --no-cache ca-certificates

RUN cd $HOME \
    && STR="Install golang and Hugo" \
    && echo $STR \
    && curl -0 https://storage.googleapis.com/golang/go1.10.linux-amd64.tar.gz \
    && tar -xvf go1.10.linux-amd64.tar.gz go/ \
    && mv go /usr/local/ \
    && export GOPATH=~/go \
    && echo "export GOPATH=~/go" >> ~/.profile \
    && export PATH=$PATH:$GOPATH/bin \
    && echo "export PATH=$PATH:$GOPATH/bin" >> ~/.profile \
    && mkdir -p /www/public

VOLUME /src
VOLUME /output

CMD ["/bin/sh", "./build.sh"]

EXPOSE 1313