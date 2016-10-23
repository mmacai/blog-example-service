FROM mhart/alpine-node:6.5

# Attach files to container
COPY index.js /node-service/index.js
COPY package.json /node-service/package.json
COPY README.md /node-service/README.md

# Set working directory
WORKDIR /node-service/

# Install all dependencies
RUN npm install

# Ports
EXPOSE 4000

# Start
CMD ["npm", "start"]
