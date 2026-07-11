#!/bin/bash

timestamp="$(date "+%Y-%m-%d_%H-%M-%S")"
log_file="$HOME/system_monitor_$timestamp.log"

while true
do

    clear

    echo "1. Check CPU usage"
    echo "2. Check memory usage"
    echo "3. Check disk usage"
    echo "4. Check top 5 processes by memory"
    echo "5. Exit"

    read -p "Choose an option: " choice

    case "$choice" in
        1)
            {
                echo
                echo "===== CPU Usage ====="
                echo "Recorded: $(date)"
                top -bn1 | grep "Cpu(s)" 
            } | tee -a "$log_file"

            read -p "Press Enter to continue..."
            ;;
        2)
            {
                echo
                echo "===== Memory Usage ====="
                echo "Recorded: $(date)"
                free -h
            } | tee -a "$log_file"

            read -p "Press Enter to continue..."
            ;;
        3)
            {
                echo
                echo "===== Disk Usage ====="
                echo "Recorded: $(date)"
                df -h
            } | tee -a "$log_file"

            read -p "Press Enter to continue..."
            ;;
        4)
            {
                echo
                echo "===== Top 5 Processes by Memory ====="
                echo "Recorded: $(date)"
                ps -eo user,pid,%cpu,%mem,comm --sort=-%mem | head -n 6
            } | tee -a "$log_file"

            read -p "Press Enter to continue..."
            ;;
        5)
            echo "Report saved to: $log_file"
            echo "Goodbye!"
            break
            ;;  
        *)
            echo "Invalid option"
            read -p "Press Enter to continue..."
            ;;
    esac
done