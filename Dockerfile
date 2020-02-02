FROM node:latest

RUN apt-get update && \
    apt-get install -y python3-pip libpng-dev && \
    pip3 install --upgrade awscli && \
    rm -rf /var/lib/apt/lists/*
