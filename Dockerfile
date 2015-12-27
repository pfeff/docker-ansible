from debian:jessie

RUN apt-get update && apt-get install -y \
    build-essential \
    python \
    python-dev \
    python-pip \
    git \
    wget

WORKDIR /root
RUN wget http://releases.ansible.com/ansible/ansible-2.0.0-0.8.rc3.tar.gz
RUN tar xvzf ansible-2.0.0-0.8.rc3.tar.gz 

WORKDIR /root/ansible-2.0.0
RUN python setup.py install

WORKDIR /work

