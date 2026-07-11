#!/bin/bash

timestamp="$(date "+%Y-%m-%d_%H-%M-%S")"
log_file="$HOME/system_monitor_$timestamp.log"

{ 
    echo "===== System Monitor Rerpot ====="
    echo "Generated: $(date)"

    echo
    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)"

    echo
    echo "Memory Usage:"
    free -h

    echo
    echo "Disk Usage:"
    df -h

    echo
    echo "Top 5 Processes by Memory:"
    ps -eo user,pid,%cpu,%mem,comm --sort=-%mem | head -n 6
} > "$log_file"

cat "$log_file"

echo
echo "Report saved to: $log_file"