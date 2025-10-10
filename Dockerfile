FROM node:24.10.0-alpine3.22

WORKDIR /app

COPY graphserver.js .
COPY package.json .
COPY UScities.json .

RUN npm install

EXPOSE 4000

CMD ["node", "graphserver.js"]
