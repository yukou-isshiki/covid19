FROM node:10.24.0-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . ./app

EXPOSE 3000
ENV HOST 0.0.0.0

CMD ["yarn", "dev"]
