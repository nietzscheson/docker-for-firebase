FROM node:14.15-alpine

RUN npm install -g firebase-tools@latest --ignore-engines

RUN mkdir -p /app/functions

COPY ./functions/package.json /app/functions

RUN yarn --cwd /app/functions install --ignore-engines
