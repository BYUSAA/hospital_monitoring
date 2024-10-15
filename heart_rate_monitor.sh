#!/bin/bash
# heart_rate_monitor.sh

# Prompt user for the device name
echo "Enter the device name (e.g., Monitor_A, Monitor_B): "
read device_name

# Start logging heart rate data every second
echo "Starting heart rate monitoring for $device_name..."

# Running infinite loop in the background
while true
do
    # Log the timestamp, device name, and simulated heart rate (random value between 40-120)
    echo "$(date '+%Y-%m-%d %H:%M:%S') $device_name $((40 + RANDOM % 81))" >> heart_rate_log.txt
    sleep 1  # Record every second
done &

# Display the background process ID (PID)
echo "Heart rate monitor started with PID: $!"

