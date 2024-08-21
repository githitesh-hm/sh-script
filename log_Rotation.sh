#!/bin/bash

logfile="$1"

if [[ ! -f "$logfile" ]]
then 
   echo "Log file does not exist in this Systen !!!"
fi

# Extract directory and filename from log file path

dirpath=$(dirname "$logfile")
basename=$(basename "$logfile")

# Getting Timestamp

timestamp=$(date +"%Y%m%d-%H%m%s")

# Define new Archive file with timestamp

Archive="$basename-$timestamp.gz"

#compress the log file

gzip -c "$logfile" > "$Archive"

# Delete the original file

rm "$logfile"

   echo "Succecfully Archivr '$logfile' to '$Archive'.."

# log the  operation details to Rotation.log

logfile_rotation="$dirpath/Rotation.log"


