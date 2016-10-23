FROM mhart/alpine-node:6.5

# Attach files to container
ADD index.js /node-app/index.js
ADD package.json /node-app/package.json
ADD README.md /node-app/README.md

# Set working directory
WORKDIR /node-service/

# Install all dependencies
RUN npm install

# Ports
EXPOSE 4000

# Start
CMD ["npm", "start"]
