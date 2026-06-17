#!/bin/bash

if [ -z "$1" ]; then
    exit 1
fi

FOLDER=$1

if [ ! -d "$FOLDER" ]; then
    echo "Error: $FOLDER doesn't exist"
    exit 1
fi


for file in "$FOLDER"/*; do
    
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        
        lines=$(wc -l < "$file")
        words=$(wc -w < "$file")
        chars=$(wc -m < "$file")
        
        echo "File: $filename"
        echo "  - Lines: $lines"
        echo "  - Words: $words"
        echo "  - Characters: $chars"
        echo "--------------------------------------------------"
    fi
done