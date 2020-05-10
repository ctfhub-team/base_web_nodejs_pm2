# 基础镜像 WEB NodeJs PM2

- L: Linux
- N: NodeJs
- P: PM2

## Example

TODO:

## Usage

### Conf

### ENV

- FLAG=ctfhub{base_web_nodejs_pm2}

You should rewrite flag.sh when you use this image.
The `$FLAG` is not mandatory, but i hope you use it!

### Files

- src 项目源码
  + app.js - Web 入口
  + ...etc
- Dockerfile
- docker-compose.yml
- meta.yml

### Dockerfile

```Dockerfile
FROM ctfhub/base_web_nodejs_pm2

COPY src /home/node/src

RUN yarn add xxx; yarn cache clean;
```
