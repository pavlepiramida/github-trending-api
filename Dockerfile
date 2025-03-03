FROM node:12-alpine

RUN mkdir /root/github-trending-api
COPY . /root/github-trending-api
WORKDIR /root/github-trending-api

RUN yarn
RUN yarn build
CMD node ./dist/server.js

