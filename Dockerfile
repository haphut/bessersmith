FROM node:10.2-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
