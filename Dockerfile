FROM node:12-alpine
WORKDIR /app
RUN git clone https://github.com/virtualmartire/party_whiteboard.git
COPY . .
RUN yarn install --production
CMD ["node", "/app/src/index.js"]