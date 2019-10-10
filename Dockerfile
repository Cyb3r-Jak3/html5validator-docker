FROM ubuntu:bionic
ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/jwhite1st/html5validator-docker.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1"

RUN apt-get -qq update && \
    apt-get install -y software-properties-common python-pip && \
    add-apt-repository ppa:openjdk-r/ppa && \
    apt-get -qq install -y openjdk-8-jre
RUN pip install html5validator
