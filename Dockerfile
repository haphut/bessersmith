FROM node:13.3.0-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
