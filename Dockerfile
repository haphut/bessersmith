FROM node:11.8-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
