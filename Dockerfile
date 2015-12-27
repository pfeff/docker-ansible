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
RUN wget http://releases.ansible.com/ansible/ansible-2.0.0-0.8.rc3.tar.gz
RUN tar xvzf ansible-2.0.0-0.8.rc3.tar.gz 

WORKDIR /root/ansible-2.0.0
RUN python setup.py install

WORKDIR /work

