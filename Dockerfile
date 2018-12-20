FROM node:11.5-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
