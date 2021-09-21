FROM python:3.8.6-alpine3.14

RUN mkdir -p /usr/share/man/man1/ \
    && apk add --no-cache py-pip \
         openjdk8-jre \
    && rm -rf /var/cache/apk/*

RUN pip --no-cache-dir --disable-pip-version-check install html5validator

RUN apk del py-pip