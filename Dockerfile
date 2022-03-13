FROM node:12-alpine
WORKDIR /app
COPY . .
RUN yarn --version
RUN yarn install --production
CMD ["node", "/app/src/index.js"]