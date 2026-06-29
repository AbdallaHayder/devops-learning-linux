# Level 13 Explanation

## Mission

Create a script that backs up a directory to a specified location and keeps only the last 5 backups.

## Solution

```bash
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
```

## Takeaways

### Accepting Source and Destination

```bash
source_directory="$1"
backup_destination="$2"
```

The script accepts the directory to back up and the location where backups should be stored.

### Recursive Copy

```bash
cp -r "$source_directory" "$backup_path"
```

Copies the source directory and everything inside it.

### Timestamped Backup Name

```bash
timestamp="$(date "+%Y%m%d_%H%M%S")"
```

Creates a unique timestamp for each backup.

### Getting the Directory Name

```bash
directory_name="$(basename "$source_directory")"
```

Extracts only the directory name from the full source path.

### Building the Backup Path

```bash
backup_file_name="${directory_name}_${timestamp}"
backup_path="$backup_destination/$backup_file_name"
```

Creates a unique backup folder name and full backup path.

### Backup Rotation

```bash
ls -1t "$backup_destination" | tail -n +6
```

* `ls -1t` lists backups one per line, newest first.
* `tail -n +6` skips the latest 5 backups and returns the older ones.

### Removing Old Backups

```bash
rm -r "$backup_destination/$file"
```

Deletes backups older than the latest 5.

## Commands and Concepts Used

* Positional parameters (`$1`, `$2`)
* `cp -r`
* `date`
* `basename`
* `mkdir -p`
* `ls -1t`
* `tail -n +6`
* `while read -r`
* `rm -r`
* Variables
* Input validation
* Backup rotation

## Lessons Learned

* Learned how to create timestamped backups.
* Used `cp -r` to copy an entire directory.
* Learned how to keep only the latest 5 backups.
* Used `ls -1t` to sort backups by newest first.
* Used `tail -n +6` to select backups older than the latest 5.
* Learned the concept of backup rotation.
* Compared this approach with the course solution, which used `tar` and `sed`.
* Noted that `tar` creates compressed backup archives, while this solution creates full copied backup directories.
