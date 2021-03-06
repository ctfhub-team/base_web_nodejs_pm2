FROM node:12-stretch-slim

LABEL Organization="CTFHUB" Author="Virink <virink@outlook.com>"

ENV LANG="C.UTF-8"

RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    sed -i 's/# deb-src/deb-src/' /etc/apt/sources.list && \
    sed -i '/security/d' /etc/apt/sources.list && \
    apt-get update -y && \
    apt-get upgrade -y; \
    # yarn config
    yarn config set registry https://registry.npm.taobao.org -g; \
    yarn global add pm2; \
    # Clear
    yarn cache clean; \
    apt-get purge -y --auto-remove; \
    rm -rf /tmp/*;

# RUN yarn add express
COPY src /home/node/src
COPY _files /tmp/

RUN mv /tmp/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh && \
    mv /tmp/flag.sh /flag.sh && \
    mv /tmp/processes.json /home/node/processes.json

WORKDIR /home/node/src

EXPOSE 80
