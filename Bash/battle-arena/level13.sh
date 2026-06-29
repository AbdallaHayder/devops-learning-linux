#!/bin/bash

source_directory="$1"
backup_destination="$2"

if [[ -z "$source_directory" || -z "$backup_destination" ]]
then
    echo "Enter <Source Directory> <Back Destination>"
    exit 1
fi

if [[ ! -d "$source_directory" ]];
then
    echo "Directory does not exist."
    exit 1
fi

mkdir -p "$backup_destination"

timestamp="$(date "+%Y%m%d_%H%M%S")"

directory_name="$(basename "$source_directory")"

backup_file_name="${directory_name}_${timestamp}"

backup_path="$backup_destination/$backup_file_name"

cp -r "$source_directory" "$backup_path"

echo "Backup created: $backup_path"

ls -1t "$backup_destination" | tail -n +6 | while read -r file
do
    rm -r "$backup_destination/$file"
    
done

echo "Backup rotation complete. Keeping the latest 5 backups."

ls -1 "$backup_destination" | wc -l