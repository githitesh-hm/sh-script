`#!/bin/bash

filename="$1"

if [[ ! -f "$filename" ]]
then
   echo "Eroor : file does not exists!!!"
    exit 1 
else
    echo "file exists ..."
fi

#counting no of line,words,char from file

line_count=$(wc -l < "$filename")
word_count=$(wc -w < "$filename")
char_count=$(wc -m < "$filename")

echo "lines:$line_count"
echo "wors:$word_count"
echo "char:$char_count"




