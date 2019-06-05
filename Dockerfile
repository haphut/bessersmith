FROM node:12.4-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
