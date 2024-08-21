#!/bin/bash

#define the output file

output_file="system_report.txt"

#cpu usage,Memory usage and disk usage

cpu_usage=$(top -bn 1 | grep "Cpu(s)" | awk '{print $2 + $4}')
memory_usage=$(free -m | grep Mem | awk '{print $3}')
disk_usage=$(df -h / | tail -1 | awk '{print $5}')

# Create output to the file System_report.txt
{
  echo "System Report.."
  echo ""
  echo "cpu usage"

  echo "$cpu_usage% used"
  echo ""
  echo "memory usage"
  echo "$memory_usage% used"
  echo " "
  echo "disk usage"
  echo "$disk_usage% used" 
} > "$output_file"

echo "System report saved to '$output_file'"

