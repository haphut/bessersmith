FROM node:11.13-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
