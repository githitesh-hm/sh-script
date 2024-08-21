#!/bin/bash

source_dir="$1"
backup_dir="$2"

#Check two argument passed or not

if [[ "$#" -lt 2 ]]
then 
   echo "Error: please provide two Argumaents "
   exit 1
fi

#check source directory exist or not

if [[ ! -d "$source_dir" ]]
then
   echo "Error: Source directory '$source_dir' does not exist in this system "
   exit 1
fi 

#check backup dest directory provided or not

#if [[ ! -d '$backup_dir' ]]
#then
 #   echo "Error: BackWrite a shell script to back up a specified directory:
  #  exit 1
#fi

# Genrate the timestamp for backup direc

timestamp=$(date +"-%Y%m%d-%H%m%s")

#Define backup filename and file path

backup_file="backup-'$timestamp'.tar.gz"
backup_path="$backup_dir/$backup_file"

#perform backup using tar

tar -czf "$backup_path" -C "$backup_dir"

#check backup status

if [[ !? -eq 0 ]]
then
   status="Success"
else
   status="Failure"
fi

#log the backup

log_file="$backup_dir/backup.log"
echo "$(date +"-%Y-%m-%d:%H:%m:%s")-backup os '$source_dir' to 'backup_path' -'$status' " >> "$log_file"

#output result to user

if [[ "$status" = "Success" ]]
then 
   echo "Backup created Successfully: '$backup_pat' "
else
  echo "Please check your backup file"
fi







