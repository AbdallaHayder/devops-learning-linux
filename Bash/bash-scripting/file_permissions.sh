#!/bin/bash

read -p "Enter filename to check: " file_path

file_path="${file_path/#\~/$HOME}"

if [[ -f "$file_path" ]]
then
    echo "File '$file_path' exists."

    if [[ -r "$file_path" ]]
    then
        echo "✓ File is readable"
    else
        echo "x File is not readable"
    fi

    if [[ -w "$file_path" ]] 
    then
        echo "✓ File is writable"
    else
        echo "x File is not writable"
    fi

    if [[ -x "$file_path" ]]
    then
        echo "✓ File is executable"
    else
        echo "x File is not executable"
    fi
else
    echo "File '$file_path' does not exist."
fi
