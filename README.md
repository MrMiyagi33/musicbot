A simple docker container for JMusic Bot.

Download the docker file here or image on docker hub.

To run via docker compose, see example below:
 ```
services:
  bedrock:
    container_name: musicbot
    image: mrmiyagi33/jmusic-bot:latest
    environment:
      BOTCODE: BOT_CODE_HERE
      USERID: USER_ID_HERE
    volumes:
     -  music_bot:/musicbot
    restart: always
volumes:
  music_bot:
 ```
