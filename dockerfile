# use official node js image as the base image
FROM node:21

# create and change to the working directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image
COPY package*.json ./

# install dependencies
RUN npm install

# Copy local code to the container image
COPY . .

# Expose ther port your app runs on
EXPOSE 8080

# run the application
CMD [ "node", "server.js" ]