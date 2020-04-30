# Docker Image for Paper-Minecraft

FROM openjdk:11-jre

MAINTAINER Leon Filser <leon.filser@gmail.com>

ENV DIR /minecraft
ENV VERSION https://papermc.io/api/v1/paper/1.15.2/227/download
ENV EULA false
ENV XMS 2G
ENV XMX 16G

RUN mkdir $DIR
WORKDIR $DIR

RUN apt-get update \
    && apt-get install wget -y --no-install-recommends \
    && wget -O /server.jar $VERSION \
    && apt-get purge -y wget \
    && rm -rf /var/lib/apt/lists/* /var/cache/*

ADD ./entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]
