#!/bin/bash
# archive_log.sh

# Generate the current timestamp
timestamp=$(date '+%Y%m%d_%H%M%S')

# Rename the log file by appending the timestamp
mv heart_rate_log.txt heart_rate_log.txt_$timestamp

# Create a new empty log file for future logging
touch heart_rate_log.txt

echo "Log file archived as heart_rate_log.txt_$timestamp"
