#!/bin/bash

# Log Archival Script

# Generate timestamp in YYYYMMDD_HHMMSS format
timestamp=$(date '+%Y%m%d_%H%M%S')

# Rename the heart_rate_log.txt file with the timestamp
mv heart_rate_log.txt heart_rate_log.txt_$timestamp

# Output the new name of the archived log file
echo "Log file archived as heart_rate_log.txt_$timestamp"

