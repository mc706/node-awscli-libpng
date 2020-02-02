FROM node:latest

RUN echo "deb http://mirrors.kernel.org/ubuntu/ xenial main" |  tee -a /etc/apt/sources.list &&  apt-get update &&  apt install -y --allow-unauthenticated libpng12-0

RUN apt-get update && \
    apt-get install -y python3-pip libpng-dev && \
    pip3 install --upgrade awscli && \
    rm -rf /var/lib/apt/lists/*
