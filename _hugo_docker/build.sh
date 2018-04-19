#!/bin/bash

cd $HOME
STR="Install go-lang 1.10 and Hugo"
echo $STR
curl - 0 https://storage.googleapis.com/golang/go1.10.linux-amd64.tar.gz
tar -xvf go1.10.linux-amd64.tar.gz go/
mv go /usr/local/
export GOPATH=~/go
echo "export GOPATH=~/go" >> ~/.profile
export PATH=$PATH:$GOPATH/bin
echo "export PATH=$PATH:$GOPATH/bin" >> ~/.profile