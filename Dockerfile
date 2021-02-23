FROM node:14
ENV NODE_ENV=production
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production 

COPY . .
EXPOSE 8080

CMD ["node","index.js"]
