#!/bin/bash

DIR_PATH="$HOME/ArenaLogs"
log_file="$HOME/changes.log"

inotifywait -m -e create -e modify -e delete "$DIR_PATH" | while read event;
do
    timestamp="$(date "+%Y-%m-%d %H:%M:%S")"
    echo "$timestamp - $event" >> "$log_file"
done