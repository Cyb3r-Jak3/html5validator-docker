FROM python:3-slim
LABEL AUTHOR Cyb3r Jak3

ENV DEBIAN_FRONTEND noninteractive
ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/Cyb3r-Jak3/html5validator-docker.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1"


RUN mkdir -p /usr/share/man/man1/ \
    && apt-get -qq update \
    && apt-get install -qq git python3-pip default-jre \
    && pip install html5validator