#!/bin/bash

#Get process name from command line argument
process_name=$1

# find the PID of process using pgrep

pid=$(pgrep "$process_name")

#check process is running or not

if [[ ! "$pid" ]]
then 
   echo "Error: process '$process_name' is not Running.."
   exit 1
fi

# print process id

for id in $pid 
do
   echo "Process id: $id "

#memory usage
memory_usage=$(free -m | grep total | awk '{print $3}')
   echo "Memory usage: ${meomory_usage}KB"
done
