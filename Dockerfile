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
RUN wget http://releases.ansible.com/ansible/ansible-1.9.4.tar.gz
RUN tar xvzf ansible-1.9.4.tar.gz 

WORKDIR /root/ansible-1.9.4
RUN python setup.py install

WORKDIR /work

