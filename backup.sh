#!/bin/bash

backup_dir="$HOME/devops-week1/backups"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$backup_dir"
tar -czf "$backup_dir/project-data-$timestamp.tar.gz" "$HOME/devops-week1/project-data"
