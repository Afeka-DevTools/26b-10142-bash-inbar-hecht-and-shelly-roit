#!/bin/bash

if ! command -v figlet &> /dev/null; then
  echo "Error: 'figlet' is required but not installed."
  echo "Install it using: sudo apt install figlet"
  exit 1
fi

while true; do
  clear
  date +"%H:%M:%S" | figlet
  sleep 1
done