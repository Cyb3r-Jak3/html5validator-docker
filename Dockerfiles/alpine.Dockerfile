FROM python:3.12.4-alpine as base

RUN mkdir -p /usr/share/man/man1/ \
    && apk add --no-cache py-pip \
         openjdk8-jre \
    && rm -rf /var/cache/apk/*

FROM base as pypi

RUN pip --no-cache-dir --disable-pip-version-check install html5validator

RUN apk del py-pip

FROM base as source

ARG GIT_URL=https://github.com/svenkreiss/html5validator.git

RUN apk add --no-cache git

RUN pip --no-cache-dir --disable-pip-version-check install wheel setuptools \
    && git clone ${GIT_URL} \
    && cd html5validator \
    && python setup.py install \
    && cd .. \
    && rm -rf html5validator \
    && pip uninstall --yes wheel setuptools

RUN apk del py-pip git \
    && rm -rf /var/cache/apk/*
