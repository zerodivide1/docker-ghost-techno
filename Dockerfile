# Blog dockerfile w/Techno Theme

FROM dockerfile/ghost
MAINTAINER Sean Payne <seantpayne@gmail.com>

ADD index.replace.js /ghost/index.js
ADD default-settings.json /ghost/core/server/data/default-settings.json

RUN \
  cd /ghost/content/themes && \
  git clone https://github.com/mronemous/ghost-theme-techno.git && \
  cd /ghost && \
  useradd ghost --home /ghost && \
  rm -f /ghost-start

ADD start.bash /ghost-start

ENV NODE_ENV production

VOLUME ["/data", "/ghost-override"]

WORKDIR /ghost

CMD ["bash", "/ghost-start"]

EXPOSE 2368
