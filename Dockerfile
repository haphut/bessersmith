FROM node:11.14-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
