FROM node:20-alpine

WORKDIR /app

RUN npm update && \
    npm install --global serve

EXPOSE 5170
EXPOSE 5175