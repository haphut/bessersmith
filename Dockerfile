FROM node:11.10-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
