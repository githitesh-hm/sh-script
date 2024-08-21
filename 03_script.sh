#!/bin/bash

read -p "what is your name?:::" name
read -p "what is your Age?:::" age

if [[ "$age" -le 1 ]]
then
    echo "Please provide valid Age...."
    exit 1
fi
    
if [[ "$age" -lt 18 ]]
then  
    echo "Your Name is :'$name' and your age is :'$age' And you are a minor "
else
    echo "Your Name is :'$name' and your age is : '$age' And you are a adult "
fi

