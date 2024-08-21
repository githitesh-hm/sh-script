#!/bin/bash

direc_path="$1"

if [[ ! -d "$direc_path" ]]
then
   echo "Error:Directoty  does not Exist......"
   exit 1
else
   echo "Directory exists in this System: you can proceed"
fi

#list the all file in dir and write it in file_list.txt

ls -p "$direc_path" > "$direc_path/file_list.txt"
    
    echo "All the files are successfully Written in file_list.txt file"

