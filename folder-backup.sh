#!/bin/bash

# Step 1: Validate argument
folder=$1
backup_dir="$HOME/ME/projects/learn_dev_ops/final-backups"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
log_file="$HOME/ME/projects/learn_dev_ops/backup.log"

# Step 2: Check if folder is passed
if [ -z "$folder" ]; then
    echo "❌ No folder name provided." | tee -a "$log_file"
    exit 1
fi

# Step 3: Check if folder exists
if [ ! -d "$folder" ]; then
    echo "❌ Folder '$folder' does not exist." | tee -a "$log_file"
    exit 1
fi

# Step 4: Create backup dir if needed
mkdir -p "$backup_dir"

# Step 5: Create backup archive
backup_file="$backup_dir/$(basename "$folder")-$timestamp.tar.gz"
tar -czf "$backup_file" "$folder"

# Step 6: Log success
echo "✅ [$timestamp] Backup of '$folder' -> $backup_file" | tee -a "$log_file"