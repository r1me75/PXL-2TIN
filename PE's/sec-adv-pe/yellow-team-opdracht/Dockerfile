#Build
FROM node:lts-alpine
WORKDIR /App
COPY package*.json ./
RUN npm install

COPY . .

CMD [ "node", "server.js" ]
EXPOSE 4000