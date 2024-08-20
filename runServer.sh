#!/bin/bash

botCode="$1"
echo "bot code: "$botCode
userID="$2"
echo "user id: "$userID


sed -i -e "s/\(^token = \).*/\1$botCode/" \
-e "s/\(^owner = \).*/\1$userID/" config.txt

java -Dnogui=true -jar JMusicBot.jar