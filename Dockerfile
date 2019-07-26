FROM node:12.7-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
