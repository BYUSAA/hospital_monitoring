#!/bin/bash
# backup_archives.sh

# Define your group number
group_number=1  # Replace with your actual group number

# Create a directory for archived logs if it doesn't exist
mkdir -p archived_logs_group$group_number

# Move all timestamped archived log files into the directory
mv heart_rate_log.txt_* archived_logs_group$group_number/

# Define the remote server details
remote_host="your-sandbox-host"  # Replace with actual remote host
remote_user="your-sandbox-username"  # Replace with actual remote username
remote_directory="/home/"  # Remote directory path

# Use scp to copy the files to the remote server securely
scp archived_logs_group$group_number/* $remote_user@$remote_host:$remote_directory

echo "Archived logs have been backed up to the remote server."
