FROM alpine:3.9

RUN apk --update add --no-cache tini nodejs npm yarn
ENTRYPOINT ["/sbin/tini", "--"]


LABEL maintainer = "leafiy <t@leafiy.com>"
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN npm install -g pm2
RUN pm2 install pm2-logrotate



CMD ['tail','-f']