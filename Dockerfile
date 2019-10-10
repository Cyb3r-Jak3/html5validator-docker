From ubuntu:bionic

RUN apt-get -qq update && \
    apt-get install -y software-properties-common python-pip && \
    add-apt-repository ppa:openjdk-r/ppa && \
    apt-get -qq install -y openjdk-8-jre && \
    pip install html5validator
