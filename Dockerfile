FROM node:8
MAINTAINER yk2220s
EXPOSE 3000
ENV HOST 0.0.0.0
WORKDIR /usr/src/app
RUN apt update
RUN apt install -y vim
CMD ["yarn", "dev"]
