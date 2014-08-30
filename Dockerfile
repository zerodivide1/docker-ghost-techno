# Blog dockerfile w/Techno Theme

FROM dockerfile/ghost
MAINTAINER Sean Payne <seantpayne@gmail.com>

ADD index.replace.js /ghost/index.js

RUN \
  cd /ghost/content/themes && \
  git clone https://github.com/mronemous/ghost-theme-techno.git && \
  cd /ghost

WORKDIR /ghost

CMD ["bash", "/ghost-start"]

EXPOSE 2368
