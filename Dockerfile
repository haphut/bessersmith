FROM node:12.6-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
