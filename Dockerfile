FROM node:15.10.0-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
