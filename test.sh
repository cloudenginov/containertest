#!/bin/sh

apk add --no-cache git

echo "$HOME"

cat $HOME/hello.txt

echo "Hello from inside container" > $HOME/src/container.txt

mkdir -p $HOME/src/proj

cd $HOME/src/proj
git clone https://github.com/cloudenginov/containertest.git

echo 'cont ls -lt'
ls -lt
