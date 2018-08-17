FROM node:10.9-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
