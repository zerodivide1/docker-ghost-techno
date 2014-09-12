# Blog dockerfile w/Techno Theme

FROM dockerfile/ghost
MAINTAINER Sean Payne <seantpayne@gmail.com>

ADD index.replace.js /ghost/index.js
ADD default-settings.json /ghost/core/server/data/default-settings.json

RUN \
  cd /ghost/content/themes && \
  git clone -b prod https://github.com/zerodivide1/ghost-theme-techno.git && \
  cd /ghost && \
  rm -f /ghost-start && \
  $(useradd ghost --home /ghost || true)

ADD start.bash /ghost-start

ENV NODE_ENV production

VOLUME ["/data", "/ghost-override"]

WORKDIR /ghost

CMD ["bash", "/ghost-start"]

EXPOSE 2368
