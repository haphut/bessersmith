FROM node:12.9-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
