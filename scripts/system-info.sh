#!/bin/bash

mkdir -p logs
log_file="logs/system-info-$(date +%F-%H-%M-%S).log"

{
  echo "=== System Info ==="
  echo "User: $(whoami)"
  echo "Hostname: $(hostname)"
  echo "Current directory: $(pwd)"
  echo "Date: $(date)"
  echo
  echo "Uptime:"
  uptime
  echo
  echo "Disk usage:"
  df -h
  echo
  echo "Memory usage:"
  free -h
  echo
  echo "Kernel:"
  uname -r
  echo
  echo "This is my server running on AWS"
} | tee "$log_file"

echo
echo "Saved to $log_file"
# Delete logs older than 1 day
find logs -type f -mtime +1 -delete
