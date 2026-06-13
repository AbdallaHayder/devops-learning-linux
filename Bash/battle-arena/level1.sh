#!/bin/bash

mkdir -p ~/Arena

touch ~/Arena/{warrior,mage,archer}.txt

ls ~/Arena

# Takeways:
#    mkdir -p is better than plain mkdir 
#    This is called making a script idempotent which means:
#    "Running it multiple times produces the same desired state."

#    ~/Arena/{text1,text1,text3}.txt called a brace expansion.
#    A more neat representation which Bash expands into:
#    ~/Arena/text1.txt ~/Arena/text2.txt ~/Arena/text3.txt
