#!/bin/bash

if [ -z "$1" ]; then
    exit 1
fi

FOLDER=$1

if [ ! -d "$FOLDER" ]; then
    echo "Error: '$FOLDER' doesn't exist"
    exit 1
fi

files_count=$(find "$FOLDER" -mindepth 1 -maxdepth 1 -type f | wc -l)
dirs_count=$(find "$FOLDER" -mindepth 1 -maxdepth 1 -type d | wc -l)
links_count=$(find "$FOLDER" -mindepth 1 -maxdepth 1 -type l | wc -l)

echo "Files:		$files_count"
echo "Directories:	$dirs_count"
echo "Symbolic Links:	$links_count"