#!/bin/bash

wget https://raw.githubusercontent.com/MrMiyagi33/musicbot/main/config.txt

wget https://raw.githubusercontent.com/MrMiyagi33/musicbot/main/runServer.sh

botCode="$1"
echo "bot code: "$botCode
userID="$2"
echo "user id: "$userID

sed -i "s/BOT_TOKEN_HERE/$botCode/g" config.txt
sed -i "s/OWNER_ID/$userID/g" config.txt

java -Dnogui=true -jar JMusicBot.jar