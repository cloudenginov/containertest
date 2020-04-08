FROM alpine:latest
WORKDIR /root/
COPY ./test.sh .
#CMD ["sh ./test.sh"]
CMD echo $PWD \
    && echo 'ls -lt / && ls -lt / \
    && echo' ls -lt /root' && ls -lt /root \
    && echo 'ls -lt $HOME/src/' && ls -lt $HOME/src/ \
    && echo '/bin/sh ./test.sh' && /bin/sh ./test.sh
