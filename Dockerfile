FROM node:20-alpine

WORKDIR /usr/src/app

COPY package.json ./
COPY config/ ./
RUN npm install

RUN mkdir -p public/uploads
COPY . .
COPY .env .env

EXPOSE 1337

CMD ["npm", "run", "develop"]
