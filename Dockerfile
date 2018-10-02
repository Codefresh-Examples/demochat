FROM node:10.3.0-alpine

RUN npm config set unsafe-perm true
RUN npm install -g mocha
RUN npm install -g gulp

COPY ./package.json /src/package.json
RUN cd /src && npm install
COPY  ./ /src

WORKDIR /src

CMD ["npm", "start"]
