ARG BIT_NODE_VERSION
ARG BIT_VERSION

FROM node:${BIT_NODE_VERSION}

RUN apk update && apk upgrade && apk add bash git sudo && apk cache clean
RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories && apk --no-cache add shadow && apk cache clean

SHELL ["bash", "-c"]

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH=$PATH:/home/node/.npm-global/bin

USER node

RUN npm i -g @teambit/bvm && bvm install ${BIT_VERSION} && npm r -g @teambit/bvm

USER root

ADD start.bash /
ADD bitstart.bash /
ADD nonroottasks.bash /
RUN chmod 777 /start.bash && chmod 777 /bitstart.bash && chmod 777 /nonroottasks.bash

WORKDIR /code

ENTRYPOINT ["bash", "/start.bash"]
