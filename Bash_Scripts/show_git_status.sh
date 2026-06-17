#!/bin/bash

DIR=${1:-.}

if [ ! -d "$DIR" ]; then
  echo "Error: Directory '$DIR' not found."
  exit 1
fi

for d in "$DIR"/*/; do
  if [ -d "${d}.git" ]; then
    echo "=== $d ==="
    git -C "$d" status
    echo
  fi
done