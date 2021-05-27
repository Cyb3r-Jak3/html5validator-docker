FROM python:3.8.6-slim

RUN mkdir -p /usr/share/man/man1/ \
    && apt-get -qq update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qq python3-pip default-jre \
    && rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install html5validator

RUN DEBIAN_FRONTEND=noninteractive apt remove -y python3-pip \
    && apt autoremove -y