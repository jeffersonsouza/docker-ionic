FROM node:alpine
MAINTAINER Jefferson Souza<hsinfo@gmail.com>

RUN apk add -U python2 --no-cache
RUN npm install -g node-sass cordova ionic@latest
RUN echo 'y' | cordova -v

RUN mkdir /ionic && \
    cd /ionic && \
    ionic start myapp sidemenu --no-interactive

# Default port
EXPOSE 8100

# Live Reload port
EXPOSE 35729

WORKDIR /ionic
