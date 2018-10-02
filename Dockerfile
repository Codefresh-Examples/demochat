FROM node:9.6.1-alpine
MAINTAINER test@.com 
RUN npm install -g mocha
RUN npm install -g gulp

COPY ./package.json /src/package.json
RUN cd /src && npm install
COPY  ./ /src

WORKDIR /src

CMD ["npm", "start"]
