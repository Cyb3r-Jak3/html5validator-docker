FROM python:3.8.6-slim
LABEL AUTHOR Cyb3r Jak3

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/Cyb3r-Jak3/html5validator-docker.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1" \
      org.opencontainers.image.source="https://github.com/Cyb3r-Jak3/html5validator-docker"


RUN mkdir -p /usr/share/man/man1/ \
    && apt-get -qq update \
    && DEBIAN_FRONTEND=noninteractive apt-get install –no-install-recommends -qq python3-pip default-jre \
    && rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install html5validator