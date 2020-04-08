#!/bin/sh

apk add --no-cache git

cat $HOME/hello.txt

echo "Hello from inside container" > /src/container.txt

mkdir -p /root/src/proj

cd $HOME/src/proj
git clone https://github.com/cloudenginov/containertest.git
