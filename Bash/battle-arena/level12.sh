#!/bin/bash

CONFIG_FILE="$HOME/Config/settings.conf"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file does not exist."
    exit 1
fi

while IFS='=' read -r key value; do
    echo "Key: $key, Value: $value"
done < "$CONFIG_FILE"