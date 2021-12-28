FROM node:12-alpine
# Adding build tools to make yarn install work on Apple silicon / arm64 machines
RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*
RUN apk update
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]