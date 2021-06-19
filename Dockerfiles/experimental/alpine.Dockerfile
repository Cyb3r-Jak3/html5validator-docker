FROM python:3.8.6-alpine3.12

RUN mkdir -p /usr/share/man/man1/ \
    && apk add --no-cache py-pip \
         openjdk8-jre \
         git \
    && rm -rf /var/cache/apk/*

RUN pip3 --no-cache-dir --disable-pip-version-check install setuptools \
    && git clone https://github.com/Cyb3r-Jak3/html5validator.git \
    && cd html5validator \
    && python setup.py install \
    && cd .. \
    && rm -rf html5validator \
    && pip uninstall --yes setuptools

RUN apk del git py-pip