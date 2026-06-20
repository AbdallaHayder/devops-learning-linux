#!/bin/bash

dir_path="$HOME/Arena"

if [ ! -d "$dir_path" ]; then
    echo "Directory does not exist."
    exit 1
fi

find "$dir_path" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{print $5, $9}'