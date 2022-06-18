#!/bin/bash 

REV="1.12.2"
JDK="10-jdk"
JRE="10-jre-slim"

docker build --rm \
    --build-arg REV="$REV" \
    --build-arg JDK="$JDK" \
    --build-arg JRE="$JRE" \
    -t calucon/spigot:$REV .

source build-push.sh $1
