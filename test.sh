#!/bin/sh
set -x

apk add --no-cache git

echo 'echo $HOME'
echo "$HOME"

echo 'echo $PWD'
echo "$PWD"

ls -lt $HOME

cat $HOME/src/github.com/cloudenginov/containertest/hello.txt

echo "Hello from inside container" > $HOME/src/container.txt

mkdir -p $HOME/src/github.com/cloudenginov/containertest/proj

cd $HOME/src/github.com/cloudenginov/containertest/proj
git clone https://github.com/cloudenginov/containertest.git

echo 'cont ls -lt'
ls -lt $HOME/src/github.com/cloudenginov/containertest/proj/containertest
