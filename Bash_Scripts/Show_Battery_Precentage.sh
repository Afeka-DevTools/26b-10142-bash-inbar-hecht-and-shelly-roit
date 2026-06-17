#!/bin/bash

BATTERY_PATH="/sys/class/power_supply/BAT0"

if [ ! -d "$BATTERY_PATH" ]; then
    BATTERY_PATH="/sys/class/power_supply/BAT1"
fi

if [ -d "$BATTERY_PATH" ]; then
    PERCENTAGE=$(cat "$BATTERY_PATH/capacity")
    STATUS=$(cat "$BATTERY_PATH/status")
    
    echo "Battery Precentage: ${PERCENTAGE}%"
    echo "Charging Status: ${STATUS}"
else
    echo "Error: No Battery Found"
fi