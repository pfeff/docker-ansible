from debian:jessie

RUN apt-get update && apt-get install -y \
        build-essential \
        git \
        libxml2-dev \
        libxslt-dev \
        python \
        python-dev \
        python-pip \
        wget \
        zlib1g-dev

RUN pip install lxml

WORKDIR /root

ENV VERSION 1.9.4
RUN wget http://releases.ansible.com/ansible/ansible-${VERSION}.tar.gz
RUN tar xvzf ansible-${VERSION}.tar.gz 

WORKDIR /root/ansible-${VERSION}
RUN python setup.py install

WORKDIR /work

