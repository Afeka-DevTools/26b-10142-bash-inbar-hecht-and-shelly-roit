#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Please provide a process name."
  echo "Usage: ./kill_by_name.sh <process_name>"
  exit 1
fi

PROCESS_NAME=$1

if pkill -9 "$PROCESS_NAME"; then
  echo "Successfully killed all processes named: $PROCESS_NAME"
else
  echo "No running processes found with the name: $PROCESS_NAME"
fi