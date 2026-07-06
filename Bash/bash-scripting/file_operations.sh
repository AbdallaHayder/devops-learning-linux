#!/bin/bash

directory_name="bash_demo"
file_name="demo.txt"

mkdir -p "$HOME/$directory_name"

cd "$HOME/$directory_name" || exit 1

touch "$file_name"

timestamp="$(date)"

echo "This file was created by Bash script on $timestamp" > "$file_name"

echo "Directory '$directory_name' created. File '$file_name' created."

echo 
echo "File contents:"

cat "$file_name"