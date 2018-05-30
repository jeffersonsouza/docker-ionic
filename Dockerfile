FROM node:6-alpine
MAINTAINER Jefferson Souza<hsinfo@gmail.com>

RUN apk add -U python --no-cache
RUN npm install -g yarn node-sass cordova ionic@latest
RUN echo 'y' | cordova -v

RUN mkdir /ionic

# Default port
EXPOSE 8100

# Live Reload port
EXPOSE 35729

WORKDIR /ionic
