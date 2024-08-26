FROM alpine

RUN apk add --update openssh gcc g++ clang gdb cmake make ninja autoconf automake dos2unix tar rsync python3 \
    bash git curl iputils poco-dev protobuf openssl openssl-dev libpq postgresql mysql unixodbc \
  && rm  -rf /tmp/* /var/cache/apk/*

CMD ["tail", "-f", "/dev/null"]