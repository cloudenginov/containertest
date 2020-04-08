FROM alpine:latest
WORKDIR /root/
COPY ./test.sh .
#CMD ["sh ./test.sh"]
CMD echo $PWD && ls-lt / && ls -lt /root && /bin/sh ./test.sh
