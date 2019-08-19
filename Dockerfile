FROM node:12.8.1-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
