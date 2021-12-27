FROM node:12-alpine
# Adding build tools to make yarn install work on Apple silicon / arm64 machines
RUN echo -e "http://nl.alpinelinux.org/alpine/v3.11/main\nhttp://nl.alpinelinux.org/alpine/v3.11/community" > /etc/apk/repositories
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]