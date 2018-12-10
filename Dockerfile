FROM node:11.4-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
