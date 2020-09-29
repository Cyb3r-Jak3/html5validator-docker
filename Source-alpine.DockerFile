FROM python:3.8.6-alpine3.12
LABEL AUTHOR Cyb3r Jak3

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/Cyb3r-Jak3/html5validator-docker.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1"

RUN mkdir -p /usr/share/man/man1/ \
    && apk update \
    && apk upgrade \
    && apk add --no-cache py-pip\
         openjdk8-jre \
         git \
    && rm -rf /var/cache/apk/*
RUN pip3 --no-cache-dir install setuptools \
    && git clone https://github.com/svenkreiss/html5validator.git \
    && cd html5validator \
    && python setup.py install \
    && cd .. \
    && rm -rf html5validator
ENTRYPOINT [ "html5validator", "--help" ]
