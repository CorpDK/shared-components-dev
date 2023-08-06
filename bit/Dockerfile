ARG BIT_NODE_VERSION
ARG BIT_VERSION

FROM node:${BIT_NODE_VERSION}

RUN apk update && apk upgrade && apk add bash git && apk cache clean

SHELL ["bash", "-c"]

RUN npm i -g @teambit/bvm && bvm install ${BIT_VERSION} && npm r -g @teambit/bvm

ADD start.bash /
ADD bitstart.bash /
RUN chmod +x /start.bash && chmod +x /bitstart.bash

WORKDIR /code

ENTRYPOINT ["bash", "/start.bash"]
