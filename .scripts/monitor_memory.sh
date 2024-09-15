#!/bin/bash

# Function to find the PID based on the given port
find_pid() {
    local port=$1
    # Use lsof to find the PID
    pid=$(lsof -ti :$port)
    echo $pid
}

# Function to monitor memory usage
monitor_memory() {
    local pid=$1
    # Command to monitor memory usage in MB
    watch -n 1 "cat /proc/$pid/status | grep -E 'VmSize|VmRSS|VmSwap' | awk '{printf \"%s %d MB\n\", \$1, int(\$2/1024)}'"
}

# Main script execution
read -p "Enter the port number: " port
pid=$(find_pid $port)

if [ -n "$pid" ]; then
    echo "Monitoring memory usage for PID: $pid"
    monitor_memory $pid
else
    echo "No process found for the given port."
fi
