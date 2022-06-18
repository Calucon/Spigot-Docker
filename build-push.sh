#!/bin/bash

if [ "$1" == "--push" ]; then
    echo -e "\e[1m\e[36mPushing build \e[31m$REV\e[36m to DockerHub\e[90m"
    docker push calucon/spigot:$REV
    echo -e "\e[0m"
fi

docker image prune -f