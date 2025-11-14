FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install


COPY . .

RUN npm test

EXPOSE 3000

CMD ["node", "index.js"]
