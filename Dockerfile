FROM node:11.2-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
