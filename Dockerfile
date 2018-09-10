FROM node:10.10-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
