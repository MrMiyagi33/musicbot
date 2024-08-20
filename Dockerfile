FROM ubuntu:24.10

ENV DEBIAN_FRONTEND=noninteractive

VOLUME [ "/musicbot" ]

WORKDIR /musicbot

RUN apt-get update && apt-get install -y \
    openjdk11 \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/0.4.3/JMusicBot-0.4.3.jar

CMD ["java", "-Dnogui=true", "-jar", "JMusicBot.jar"]