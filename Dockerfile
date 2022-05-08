FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=prod
COPY . .
EXPOSE 3000
CMD [ "node", "app.js" ]
