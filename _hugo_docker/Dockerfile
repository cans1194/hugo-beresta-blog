FROM ubuntu:16.04

MAINTAINER Vladislav Nabilkov <cans1194fan@gmail.com>


# COPY ./build.sh /build.sh
ENV HUGO_VERSION=0.40
ENV GO_VERSION=1.10

#RUN ./sh ./build.sh
RUN apt-get install git gcc musl-dev
RUN apt-get openssh-client tar curl ca-certificates

RUN cd $HOME \
    && STR="Install golang and Hugo" \
    && echo $STR \
    && curl -0 https://storage.googleapis.com/golang/go1.10.linux-amd64.tar.gz \
    && tar -xvf go1.10.linux-amd64.tar.gz go/ \
    && mv go /usr/local/ \
    && export GOPATH=~/go \
    && echo "export GOPATH=~/go" >> ~/.profile \
    && export PATH=$PATH:$GOPATH/bin \
    && echo "export PATH=$PATH:$GOPATH/bin" >> ~/.profile 

RUN go get -v github.com/adnanh/webhook
COPY hooks.json /etc/webhook/hooks.json

COPY run.sh /run.sh
    # && mkdir -p /www/public

VOLUME /src
VOLUME /output

CMD ["/bin/sh", "./build.sh"]

EXPOSE 1313