FROM node:11.9-alpine

WORKDIR /app
COPY . ./

RUN yarn install

CMD ["yarn", "start"]
