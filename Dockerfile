FROM alpine:3.3

RUN apk update
RUN apk add python py-pip py-setuptools git ca-certificates
RUN pip install python-dateutil

RUN git clone https://github.com/s3tools/s3cmd.git /main
RUN ln -s /main/s3cmd /usr/bin/s3cmd

WORKDIR /main

RUN mkdir /main/src

ENTRYPOINT ["s3cmd"]