FROM node:13.10.1-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
