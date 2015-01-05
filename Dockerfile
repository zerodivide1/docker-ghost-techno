# Blog dockerfile w/Techno Theme

FROM dockerfile/ghost
MAINTAINER Sean Payne <seantpayne@gmail.com>

ADD default-settings.patch /ghost/core/server/data/default-settings.patch

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
