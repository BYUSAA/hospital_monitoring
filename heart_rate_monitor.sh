#!/bin/bash

# Heart Rate Monitoring Script

# Prompt for device name
echo "Enter the device name (e.g., Monitor_A):"
read device_name

# Log heart rate data to heart_rate_log.txt
while true
do
    # Generate timestamp, device name, and random heart rate (between 40 and 120)
    echo "$(date '+%Y-%m-%d %H:%M:%S') $device_name $((40 + RANDOM % 81))" >> heart_rate_log.txt
    sleep 1
done &
# Output the process ID (PID) of the script
echo "Heart rate monitoring started with PID: $!"

