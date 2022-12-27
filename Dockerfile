FROM node:19-alpine

RUN apk --no-cache add --virtual native-deps g++ gcc libgcc libstdc++ linux-headers make python3

RUN npm config set unsafe-perm true
RUN npm install --quiet node-gyp -g
