FROM node:8.14.0-alpine

RUN apk add --no-cache $PHPIZE_DEPS --update \
    curl

RUN npm install --global firebase-tools@latest --ignore-engines

RUN mkdir /app

WORKDIR /app
