FROM node:8.14.0-alpine

RUN apk add --no-cache $PHPIZE_DEPS --update \
    curl

## RUN yarn global add nodemon firebase-tools firebase-functions@latest @google-cloud/functions-emulator --ignore-engines
RUN npm install --global nodemon firebase-tools@latest firebase-functions@latest @google-cloud/functions-emulator --ignore-engines

RUN mkdir /app

WORKDIR /app
