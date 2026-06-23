#!/bin/bash

mkdir -p "$HOME/Arena_Boss"

for ((i=1; i<=5; i++));
do
    file="$HOME/Arena_Boss/file$i.txt"
    random_lines=$((RANDOM %11 + 10))

    > "$file"

    for ((d=1; d<=$random_lines; d++));
    do
        echo "Line $d" >> "$file"
    done
    
    echo "Created file$i.txt with $random_lines lines"
done

echo ""
ls -lh "$HOME/Arena_Boss"/*.txt | sort -k 5,5 -h  | awk '{print $5, $9}'
echo "Victory" >> "$HOME/Arena_Boss/file1.txt"
echo ""


for file in "$HOME/Arena_Boss"/*.txt
do
    if grep -q "Victory" "$file"; then
        mkdir -p "$HOME/Victory_Archive"
        mv "$file" "$HOME/Victory_Archive"
        ls -lh "$HOME/Victory_Archive"/*.txt | awk '{print $5, $9}'
        echo ""
    else
        echo "$file doesn't contain the word Victory"
    fi
done


