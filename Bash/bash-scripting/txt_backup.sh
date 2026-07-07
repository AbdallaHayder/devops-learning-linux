#!/bin/bash

read -p "Enter source directory: " source_directory

if [[ ! -d "$source_directory" ]]
then
    echo "Directory does not exist!"
    exit 1
fi

backup_dir="$HOME/Backup_Files"

timestamp="$(date "+%Y-%m-%d_%H-%M")"
backup_name="backup_${timestamp}"
backup_path="$backup_dir/$backup_name"

mkdir -p "$backup_path"

echo "Backup directory created: $backup_path Copying .txt files..."

cp "$source_directory"/*.txt "$backup_path" 2>/dev/null

sleep 1

number_of_backedup_files="$(find "$backup_path" -type f -name "*.txt" | wc -l)"

echo "Backup complete! Files backed up: $number_of_backedup_files"