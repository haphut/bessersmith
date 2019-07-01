FROM node:12.5-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
