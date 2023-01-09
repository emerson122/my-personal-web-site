FROM node:18

RUN mkdir -p /usr/app/
WORKDIR /usr/app

COPY package*.json ./

COPY . .

RUN npm install
RUN npm run build

EXPOSE 9000
CMD ["npm","start"]