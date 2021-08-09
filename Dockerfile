# Dockerfile for quest app, image run with node 10 as a base image
FROM node:10-alpine

# Create app directory
WORKDIR /usr/app

# Copy the app resources here
COPY . .

RUN npm install

ENV SECRET_WORD TwelveFactor

# Expose app on port 3000 (specified in the 000.js file)
EXPOSE 3000

CMD [ "node", "src/000.js" ]
