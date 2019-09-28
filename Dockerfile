FROM node:12

LABEL maintainer = "leafiy <t@leafiy.com>"
RUN apt-get update && apt-get install -y apt-transport-https
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn
RUN npm install -g pm2



