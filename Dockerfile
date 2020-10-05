FROM node:14.12.0-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
