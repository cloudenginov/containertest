#!/bin/sh

apk add --no-cache git

cat /src/hello.txt

echo "Hello from inside container" > /src/container.txt

mkdir -p /root/src/proj

cd /root/src/proj
git clone https://github.com/cloudenginov/containertest.git
