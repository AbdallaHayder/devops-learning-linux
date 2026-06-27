#!/bin/bash

directory="$1"
threshold="$2"

if [[ -z "$directory" || -z "$threshold" ]];
then
    echo "Usage: ./level11.sh <directory> <threshold>"
    exit 1
fi

if [[ ! -d "$directory" ]];
then
    echo "Directory does not exist."
    exit 1
fi

usage=$(du -s "$directory" | awk '{print $1}')

if [[ "$usage" -gt "$threshold" ]];
then
    echo "Alert! Disk usage ($usage KB) exceeded the threshold of $threshold KB."
else
    echo "Disk usage ($usage KB) is within the threshold of $threshold KB."
fi
