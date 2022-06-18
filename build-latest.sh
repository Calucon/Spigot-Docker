#!/bin/bash 

# Attempting to stay up2date with BuildTools
REV="1.18.2"
JDK="18-jdk"
JRE="18-alpine"

docker build --rm \
    --build-arg REV="$REV" \
    --build-arg JDK="$JDK" \
    --build-arg JRE="$JRE" \
    -t calucon/spigot:latest .

REV="latest"
source build-push.sh $1