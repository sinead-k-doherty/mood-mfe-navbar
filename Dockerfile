FROM node:lts-alpine3.13

RUN mkdir /navbar

ENV PATH /navbar/node_modules/.bin:$PATH

WORKDIR /navbar

COPY package.json yarn.lock ./

RUN yarn install --silent

COPY . .  