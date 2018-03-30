FROM node:9.10-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
