#!/bin/bash 

REV="1.16.1"
JDK="14-jdk"
JRE="14-alpine"

docker build --rm \
    --build-arg REV="$REV" \
    --build-arg JDK="$JDK" \
    --build-arg JRE="$JRE" \
    -t calucon/spigot:$REV .

source build-push.sh $1