#Build
FROM node:lts-alpine AS build-env
WORKDIR /App
COPY package*.json ./
RUN npm install

COPY . .

#Run
FROM nginx:stable-alpine
EXPOSE 80

CMD [ "node", "server.js" ]