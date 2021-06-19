FROM python:3.8.6-slim

RUN mkdir -p /usr/share/man/man1/ \
    && apt-get -q update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y git python3-pip default-jre \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --disable-pip-version-check setuptools \
    && git clone https://github.com/svenkreiss/html5validator.git \
    && cd html5validator \
    && python setup.py install \
    && cd .. \
    && rm -rf html5validator \
    && pip uninstall --yes setuptools

RUN DEBIAN_FRONTEND=noninteractive apt-get purge -y git python3-pip \
    && apt autoremove -y