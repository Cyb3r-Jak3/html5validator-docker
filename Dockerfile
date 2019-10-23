FROM python:3

LABEL AUTHOR Jacob White <jake@jwhite.network>

ARG BUILD_DATE
ARG VCS_REF

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/jwhite1st/html5validator-docker.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1"

RUN apt-get -qq update && \
    apt-get install -y git python3-pip && \
    apt-get install default-jre && \
    pip3 install setuptools
RUN git clone https://github.com/jwhite1st/html5validator.git && ls && cd html5validator
RUN python setup.py install