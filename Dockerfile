FROM node:11.12-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
