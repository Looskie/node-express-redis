FROM node:20-buster

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN apt-get update -y
RUN apt-get -y install curl

RUN chmod +x ./start.sh

CMD "./start.sh"