FROM node:latest

RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade awscli && \
    rm -rf /var/lib/apt/lists/*
