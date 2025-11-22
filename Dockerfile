# Use a lightweight official Node.js image as the base
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the rest of the application code to the working directory
COPY package.json ./package.json

RUN npm install

COPY src/index.js ./index.js
# Expose the port your Node.js application listens on
EXPOSE 3000

# Define the command to run your application
CMD [ "node", "index.js" ]