FROM node:10.6-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
