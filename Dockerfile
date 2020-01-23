FROM node:13.7.0-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
