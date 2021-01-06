FROM node:15.5.1-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
