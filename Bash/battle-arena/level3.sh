#!/bin/bash

ARENA_DIR="$HOME/Arena"

if [[ -f $ARENA_DIR/hero.txt ]]; 
then
    echo "hero found!"
else
    echo "hero missing!"
fi