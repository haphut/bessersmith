FROM node:11.3-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
