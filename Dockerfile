FROM node:10.4-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
