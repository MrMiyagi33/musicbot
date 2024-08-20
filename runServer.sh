#!/bin/bash

botCode="$1"
echo "bot code: "$botCode
userID="$2"
echo "user id: "$userID
prefix="$3"
echo "user id: "$prefix

sed -i "s/BOT_TOKEN_HERE/$botCode/g" config.txt
sed -i "s/OWNER_ID/$userID/g" config.txt
sed -i "s/PREFIX/$prefix/g" config.txt

java -Dnogui=true -jar JMusicBot.jar