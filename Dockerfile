FROM kurron/docker-azul-jdk-8-build:latest

ARG VERSION=2019.3.3

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV WEBIDE_JDK /usr/lib/jvm/zulu-8-amd64

USER root

RUN mkdir /opt/webstorm \
    && curl -L "https://download.jetbrains.com/webstorm/WebStorm-${VERSION}.tar.gz" \
        | tar -xz --strip-components=1 -C /opt/webstorm

USER powerless

ENTRYPOINT ["/opt/webstorm/bin/webstorm.sh"]