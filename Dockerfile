FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV WEBIDE_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/WebStorm-202.6948.73/bin/webstorm.sh"]

USER root

ADD https://download-cf.jetbrains.com/webstorm/WebStorm-2020.2.1.tar.gz /opt

RUN tar -xzf /opt/WebStorm-2020.2.1.tar.gz -C /opt && \
    ls -Allh /opt && \
    rm -rf /opt/WebStorm-*/jre64 /opt/WebStorm-2020.2.1.tar.gz

USER powerless
