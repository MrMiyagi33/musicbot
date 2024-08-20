FROM ubuntu:24.10

ENV DEBIAN_FRONTEND=noninteractive

VOLUME [ "/musicbot" ]

WORKDIR /musicbot

ENV BOTCODE=''
ENV USERID=''
ENV PREFIX='?'

RUN apt-get update && apt-get install -y \
    openjdk-11-jre-headless  \
    wget \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/0.4.3/JMusicBot-0.4.3.jar \
    && wget https://raw.githubusercontent.com/MrMiyagi33/musicbot/main/config.txt \
    && wget https://raw.githubusercontent.com/MrMiyagi33/musicbot/main/runServer.sh \
    && mkdir Playlists

ENTRYPOINT sh runServer.sh "$BOTCODE" "$USERID" "$PREFIX"
