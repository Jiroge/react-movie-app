# Pull base image from Docker Hub
FROM node:18.20.4-alpine

# Set the working directory
WORKDIR /usr/app

# Copy the package.json file
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy code from host to container
COPY . .

# Build the app
RUN npm run build

# Expose port 5173 on localhost
# EXPOSE 5173

# Expose port 5173 on cloudhost
EXPOSE 4173


# Run the app
# CMD ["npm", "run", "dev"]
CMD ["npm", "run", "preview"]