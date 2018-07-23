FROM node:8
MAINTAINER yk2220s
EXPOSE 3000
ENV HOST 0.0.0.0
WORKDIR /usr/src/app
RUN apt update -y && \
  apt install -y vim
RUN yarn global add vue-cli
ADD ./package.json /usr/src/app
RUN yarn
CMD ["yarn", "dev"]
