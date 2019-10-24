FROM node:13.0.1-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
