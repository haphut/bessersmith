FROM node:10.3-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
