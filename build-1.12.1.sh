#!/bin/bash 

REV="1.12.1"
JDK="9-jdk"
JRE="9-jre-slim"

docker build --rm \
    --build-arg REV="$REV" \
    --build-arg JDK="$JDK" \
    --build-arg JRE="$JRE" \
    -t calucon/spigot:$REV .

source build-push.sh $1
