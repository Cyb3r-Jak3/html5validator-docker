FROM python:3.8.6-alpine3.12

ARG GIT_URL=https://github.com/svenkreiss/html5validator.git

RUN mkdir -p /usr/share/man/man1/ \
    && apk add --no-cache py-pip \
         openjdk8-jre \
         git \
    && rm -rf /var/cache/apk/*

RUN pip --no-cache-dir --disable-pip-version-check install setuptools \
    && git clone ${GIT_URL} \
    && cd html5validator \
    && python setup.py install \
    && cd .. \
    && rm -rf html5validator \
    && pip uninstall --yes setuptools

RUN apk del git py-pip