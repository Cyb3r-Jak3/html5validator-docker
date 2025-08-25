FROM python:3.13-slim@sha256:27f90d79cc85e9b7b2560063ef44fa0e9eaae7a7c3f5a9f74563065c5477cc24 AS base

RUN mkdir -p /usr/share/man/man1/ \
    && apt-get -qq update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qq python3-pip default-jre

FROM base AS pypi

RUN --mount=type=cache,target=/root/.cache/pip pip --disable-pip-version-check install html5validator-2

RUN DEBIAN_FRONTEND=noninteractive apt remove -y python3-pip \
    && apt autoremove -y

FROM base AS source

ARG GIT_URL=https://github.com/Cyb3r-Jak3/html5validator.git

RUN apt-get install --no-install-recommends -y git

RUN --mount=type=cache,target=/root/.cache/pip pip install --disable-pip-version-check wheel setuptools \
    && git clone ${GIT_URL} \
    && cd html5validator \
    && pip install . \
    && cd .. \
    && rm -rf html5validator \
    && pip uninstall --yes wheel setuptools

RUN DEBIAN_FRONTEND=noninteractive apt-get purge -y git python3-pip