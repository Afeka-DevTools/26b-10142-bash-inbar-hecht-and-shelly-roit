#!/bin/bash

DIR=${1:-.}

if [ ! -d "$DIR" ]; then
  echo "Error: Directory '$DIR' not found."
  exit 1
fi

du -h --max-depth=1 "$DIR" 2>/dev/null | sort -hr