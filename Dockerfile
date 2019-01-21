FROM node:11.7-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
