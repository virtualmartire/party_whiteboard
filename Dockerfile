FROM node:12-alpine
WORKDIR /app
COPY . .
RUN npm install -g syncyarnlock && syncyarnlock -s -k
RUN yarn install --production
CMD ["node", "/app/src/index.js"]