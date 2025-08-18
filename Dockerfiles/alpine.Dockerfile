FROM python:3.13.7-alpine@sha256:587df003ff48316a56a0ddac50e1e2b64dfeca281f0c071b91920895a65b12d2 AS base

RUN --mount=type=cache,target=/var/cache/apk,sharing=locked \
	--mount=type=cache,target=/var/lib/apk,sharing=locked \
    mkdir -p /usr/share/man/man1/ \
    && apk update \
    && apk upgrade \
    && apk add \
        py-pip \
        openjdk21 \
    && rm -rf /var/cache/apk/*

FROM base AS pypi

RUN --mount=type=cache,target=/root/.cache/pip pip --disable-pip-version-check install html5validator-2

RUN apk del py-pip

FROM base AS source

ARG GIT_URL=https://github.com/Cyb3r-Jak3/html5validator.git

RUN --mount=type=cache,target=/var/cache/apk,sharing=locked \
	--mount=type=cache,target=/var/lib/apk,sharing=locked \
    apk add --no-cache git

RUN --mount=type=cache,target=/root/.cache/pip pip --disable-pip-version-check install wheel setuptools \
    && git clone ${GIT_URL} \
    && cd html5validator \
    && pip install . \
    && cd .. \
    && rm -rf html5validator \
    && pip uninstall --yes wheel setuptools

RUN apk del py-pip git
