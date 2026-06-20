#!/bin/bash

if [[ -z "$1" ]]; then
    echo "No File Provided."
    exit 1
fi

if [[ -f "$1" ]]; then
    file_count=$(wc -l < "$1")
    echo "The number of lines are: $file_count"
else
    echo "File not found."
    exit 1
fi