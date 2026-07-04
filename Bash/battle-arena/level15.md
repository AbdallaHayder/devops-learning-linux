# Level 15 Explanation

## Mission

Create a menu script that can:

1. Check disk space
2. Show system uptime
3. Back up the Arena directory and keep the last 3 backups
4. Parse a `settings.conf` file and display the values

## Solution

```bash
#!/bin/bash

while true
do
    clear
    
    echo "1. Check disk space"
    echo "2. Show system uptime"
    echo "3. Back the Arena directory and keep the last 3 backups"
    echo "4. Read the settings file"
    echo "5. Exit"

    read -p "Choose an option: " choice

    case "$choice" in
        1)
            df -h
            read -p "Press Enter to continue..."
            ;;
        2)
            uptime
            read -p "Press Enter to continue..."
            ;;
        3)
            source_directory="$HOME/Arena_Boss"
            backup_destination="$HOME/Backups"

            if [[ ! -d "$source_directory" ]]; then
                echo "Source directory does not exist."
                read -p "Press Enter to continue..."
                continue
            fi

            mkdir -p "$backup_destination"

            timestamp="$(date "+%Y%m%d_%H%M%S")"
            directory_name="$(basename "$source_directory")"
            backup_file_name="${directory_name}_${timestamp}"
            backup_path="$backup_destination/$backup_file_name"

            cp -r "$source_directory" "$backup_path"

            echo "Backup created: $backup_path"

            ls -1t "$backup_destination" | tail -n +4 | while read -r file
            do
                rm -r "$backup_destination/$file"
            done

            echo "Backup rotation complete. Keeping the latest 3 backups."
            read -p "Press Enter to continue..."
            ;;
        4)
            settings_file="$HOME/settings.conf"

            if [[ ! -f "$settings_file" ]]; then
                echo "settings.conf does not exist."
                read -p "Press Enter to continue..."
                continue
            fi

            while IFS='=' read -r key value
            do
                echo "$key: $value"
            done < "$settings_file"

            read -p "Press Enter to continue..."
            ;;
        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option."
            read -p "Press Enter to continue..."
            ;;
    esac
done
```

## Takeaways

### Final Boss Combination

This level combined several previous levels:

* Level 11: Checking disk space with `df -h`
* Level 12: Reading a config file using `IFS='='`
* Level 13: Creating backups and rotating old backups
* Level 14: Building an interactive menu with `case`

### Menu Loop

```bash
while true
```

Keeps the menu running until the user chooses to exit.

### Case Statement

```bash
case "$choice" in
```

Runs different commands depending on the user's menu choice.

### Backup Rotation

```bash
ls -1t "$backup_destination" | tail -n +4
```

Keeps the latest 3 backups and selects older backups for deletion.

### Config File Parsing

```bash
while IFS='=' read -r key value
```

Reads a `KEY=VALUE` configuration file and splits each line into a key and value.

### Continue vs Exit

```bash
continue
```

Returns to the menu instead of closing the whole script when an option fails.

## Commands and Concepts Used

* `while true`
* `case`
* `df -h`
* `uptime`
* `cp -r`
* `date`
* `basename`
* `ls -1t`
* `tail -n +4`
* `rm -r`
* `IFS`
* `read -r`
* `continue`
* `break`

## Lessons Learned

* Learned how to combine multiple Bash concepts into one larger script.
* Practiced building a menu-driven Bash application.
* Reused backup rotation logic from Level 13.
* Reused config parsing logic from Level 12.
* Learned why `continue` is useful inside interactive menus.
* Completed the final Bash Battle Arena challenge.
