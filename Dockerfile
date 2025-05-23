FROM node:23.11.1-alpine3.21

WORKDIR /app

COPY graphserver.js .
COPY package.json .
COPY UScities.json .

RUN npm install

EXPOSE 4000

CMD ["node", "graphserver.js"]
