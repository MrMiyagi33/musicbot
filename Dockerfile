FROM ubuntu:24.10

ENV DEBIAN_FRONTEND=noninteractive

VOLUME [ "/musicbot" ]

WORKDIR /musicbot

ENV UID=1000
ENV GID=1000
ENV BOTCODE=''
ENV USERID=''

RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    wget \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/0.4.3/JMusicBot-0.4.3.jar \
    && wget https://github.com/MrMiyagi33/musicbot/raw/main/config.txt

USER ${UID}:${GID}

RUN chmod +rw config.txt

ENTRYPOINT sh runServer.sh "$BOTCODE" "$USERID"