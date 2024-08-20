FROM ubuntu:24.10

ENV DEBIAN_FRONTEND=noninteractive

VOLUME [ "/musicbot" ]

WORKDIR /musicbot

ENV UID=1000
ENV GID=1000
ENV BOTCODE=''
ENV USERID=''

RUN apt-get update && apt-get install -y \
    openjdk-11-jre-headless  \
    wget \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/0.4.3/JMusicBot-0.4.3.jar \
    && wget https://raw.githubusercontent.com/MrMiyagi33/musicbot/main/runServer.sh

USER ${UID}:${GID}

ENTRYPOINT sh runServer.sh "$BOTCODE" "$USERID"