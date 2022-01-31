FROM node:10

# Create app dir
WORKDIR /usr/src/lafs-api

# install app dependencies
COPY package*.json ./

RUN npm install

# bundle app source
COPY . .

EXPOSE 3000

CMD ["node", "server/server.js"]

