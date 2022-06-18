#!/bin/bash 

REV="1.9.2"
JDK="8-jdk"
JRE="8-alpine"

docker build --rm \
    --build-arg REV="$REV" \
    --build-arg JDK="$JDK" \
    --build-arg JRE="$JRE" \
    -t calucon/spigot:$REV .

source build-push.sh $1