#!/bin/bash

# Archival and Backup Script

# Define group number and the directory for archived logs
group_number=1  # Replace with your group number
archive_directory="archived_logs_group$group_number"

# Create the directory if it doesn't exist
mkdir -p $archive_directory

# Move all archived log files (heart_rate_log.txt_*) into the archive directory
mv heart_rate_log.txt_* $archive_directory/

# Define remote server details (replace with actual values)
remote_host="your-remote-host"
remote_user="your-remote-user"
remote_directory="/home/"

# Perform the backup using scp to the remote server
scp $archive_directory/* $remote_user@$remote_host:$remote_directory

# Output completion message
echo "Backup completed to $remote_host in directory $remote_directory"

