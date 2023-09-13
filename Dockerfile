# Extending image
FROM node:latest

# Create app directory
WORKDIR /app

# Copy Package to Working Directory
COPY package.json /app

# Install Dependencies in Package.json
RUN npm install

# Copy the rest of the files to the Working Directory
COPY . /app

# Port to listen on
EXPOSE 3000

# Main command that will run when the container starts
CMD ["npm", "run", "start"]
