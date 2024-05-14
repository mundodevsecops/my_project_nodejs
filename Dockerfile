# Use Node 16 alpine as parent image
FROM node:16-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# Change the working directory on the Docker image to /app
WORKDIR /home/node/app

# Copy package.json and package-lock.json to the /app directory
COPY package* ./

USER node

# Install dependencies
RUN npm install

# Copy the rest of project files into this image
COPY --chown=node:node . .

USER root

# Expose application port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
