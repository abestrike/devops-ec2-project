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
  if hostnamectl | grep -qi "amazon\|aws"; then
    echo "Environment: AWS EC2"
  else
    echo "Environment: Local Ubuntu / Linux machine"
  fi
} | tee "$log_file"

echo
echo "Saved to $log_file"
# Delete logs older than 1 day
find logs -type f -name "system-info-*.log" | sort | head -n -5 | xargs -r rm --
