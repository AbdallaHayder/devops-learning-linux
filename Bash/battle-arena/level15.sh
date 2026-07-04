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

            if [[ ! -d "$source_directory" ]]
            then
                echo "Soruce directory does not exist."
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

            echo "Backup rotation complete. Keeping the lastest 3 backups."
            read -p "Press Enter to continue..."
            ;;
        4)
            while IFS='=' read -r key value
            do
                echo "$key: $value"
            done < "$HOME/settings.conf"
            read -p "Press Enter to continue..."
            ;;
        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option:"
            read -p "Press Enter to continue..."
            ;;
    esac
done