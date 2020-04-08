FROM alpine:latest
WORKDIR /root/
COPY ./test.sh .
CMD ["sh ./test.sh"]
