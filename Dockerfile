FROM node:latest

RUN echo "deb http://mirrors.kernel.org/ubuntu/ xenial main" | sudo tee -a /etc/apt/sources.list && sudo apt-get update && sudo apt install -y --allow-unauthenticated libpng12-0

RUN apt-get update && \
    apt-get install -y python3-pip libpng-dev && \
    pip3 install --upgrade awscli && \
    rm -rf /var/lib/apt/lists/*
