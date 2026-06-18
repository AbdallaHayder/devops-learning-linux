#!/bin/bash

mkdir -p "$HOME/Battlefield"

touch $HOME/Battlefield/{knight,sorcerer,rogue}.txt

if [[ -f "$HOME/Battlefield/knight.txt" ]];
then
    mkdir -p "$HOME/Archive"
    mv "$HOME/Battlefield/knight.txt" "$HOME/Archive"
fi

echo "Battlefield:"
ls "$HOME/Battlefield"

echo 

echo "Archive:"
ls "$HOME/Archive"