# Use an official Node.js runtime as a parent image. We use 'alpine' for a smaller size.
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
# This is done first to leverage Docker's layer caching.
COPY package*.json ./

# Install application dependencies inside the container
RUN npm install

# Copy the rest of the application source code
COPY . .

# Make port 3000 available to the outside world
EXPOSE 3000

# Define the command to run the app
CMD ["node", "index.js"]