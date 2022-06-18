#!/bin/bash 

REV="1.16.3"
JDK="15-jdk"
JRE="15-alpine"

docker build --rm \
    --build-arg REV="$REV" \
    --build-arg JDK="$JDK" \
    --build-arg JRE="$JRE" \
    -t calucon/spigot:$REV .

source build-push.sh $1