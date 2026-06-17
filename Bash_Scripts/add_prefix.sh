#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
        exit 1
fi

FOLDER=$1
PREFIX=$2

for file in "$FOLDER"/*.txt; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        mv "$file" "$FOLDER/${PREFIX}${filename}"
    fi
done