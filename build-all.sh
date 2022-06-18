#!/bin/bash

VERSION=(
    "1.8"
    "1.8.3"
    "1.8.8"
    "1.9"
    "1.9.2"
    "1.9.4"
    "1.10.2"
    "1.11"
    "1.11.1"
    "1.11.2"
    "1.12"
    "1.12.1"
    "1.12.2"
    "1.13"
    "1.13.1"
    "1.13.2"
    "1.14"
    "1.14.1"
    "1.14.2"
    "1.14.3"
    "1.14.4"
    "1.15"
    "1.15.1"
    "1.15.2"
    "1.16.1"
    "1.16.2"
    "1.16.3"
    "1.16.4"
    "1.16.5"
    "1.17"
    "1.17.1"
    "1.18"
    "1.18.1"
    "1.18.2"
    "1.19"
    "latest"
)

for REV in "${VERSION[@]}"
do
    echo -e "\e[1m\e[36mAttempting to build \e[31m$REV\e[90m"
	FILE="build-$REV.sh"
    if test -f "$FILE"; then
        /bin/bash $FILE $1
    else
        echo -e "\e[1m\e[33mBuild script for \e[31m$REV\e[33m not found, skipping!\e[0m"
    fi
    echo -e "\e[1m\e[32mFinished building \e[31m$REV\e[0m"
done