#!/bin/bash

while true
do
    clear

    echo "1. Check disk space"
    echo "2. Show uptime"
    echo "3. List users"
    echo "4. List logged-in users"
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
            cut -d: -f1 /etc/passwd
            read -p "Press Enter to continue..."
            ;;
        4)
            who
            read -p "Press Enter to continue..."
            ;;
        5)
            echo "Goodbye"
            break
            ;;
        *)
            echo "Invalid option:"
            read -p "Press Enter to continue..."
            ;;
    esac
done