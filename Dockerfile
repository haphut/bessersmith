FROM node:15.5.0-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
