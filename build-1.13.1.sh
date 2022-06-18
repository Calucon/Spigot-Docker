#!/bin/bash 

REV="1.13.1"
JDK="11-jdk"
JRE="11-jre-slim"

docker build --rm \
    --build-arg REV="$REV" \
    --build-arg JDK="$JDK" \
    --build-arg JRE="$JRE" \
    -t calucon/spigot:$REV .

source build-push.sh $1
