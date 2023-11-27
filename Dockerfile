FROM node:21-alpine

RUN apk --no-cache add --virtual native-deps g++ gcc libgcc libstdc++ linux-headers make python3

RUN npm install --quiet node-gyp -g
