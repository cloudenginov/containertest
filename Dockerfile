FROM alpine:latest
WORKDIR /root/
COPY ./test.sh .
CMD ["./test.sh"]
