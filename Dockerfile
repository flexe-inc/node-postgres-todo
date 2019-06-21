FROM node:12.4.0-stretch-slim

MAINTAINER 'Michael Lewis'

RUN mkdir -p /usr/share/app

COPY . /usr/share/app 

RUN cd /usr/share/app && npm install

WORKDIR /usr/share/app

ENTRYPOINT ['npm', 'run']
