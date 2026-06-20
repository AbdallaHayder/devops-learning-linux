#!/bin/bash

dir_path="$HOME/ArenaLogs"
user_input="$1"

if [[ -z "$user_input" ]]; then
    echo "Enter a word or a phrase to search for."
    exit 1 
fi

for file in "$dir_path"/*.log
do
    if grep -q "$user_input" "$file"; then
        basename "$file"
    fi
done
