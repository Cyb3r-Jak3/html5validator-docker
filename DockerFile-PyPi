FROM python:3

LABEL AUTHOR Jacob White <jake@jwhite.network>

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.vcs-url="https://github.com/Cyb3r-Jak3/html5validator-docker.git" \
      org.label-schema.schema-version="1.0.0-rc1"

RUN apt-get -qq update && \
    apt-get install -y git python3-pip default-jre

RUN pip install html5validator