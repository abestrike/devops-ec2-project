#!/bin/bash

echo "=== System Info ==="
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current directory: $(pwd)"
echo "Date: $(date)"
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
