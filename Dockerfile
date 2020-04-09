FROM alpine:latest
WORKDIR /root/src/github.com/cloudenginov/containertest
#COPY ./test.sh .
#CMD ["sh ./test.sh"]
CMD echo $PWD \
    && echo 'ls -lt /' && ls -lt / \
    && echo 'ls -lt /root' && ls -lt /root \
    && echo 'ls -lt $HOME/src/' && ls -lt $HOME/src/ \
    && echo 'ls -l /root/src/github.com/cloudenginov/containertest' \
    && ls /root/src/github.com/cloudenginov/containertest \
    && echo '/bin/sh ./test.sh' && /bin/sh ./test.sh
