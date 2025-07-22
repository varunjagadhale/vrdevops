#!/bin/bash

#Write a shell script to loop based on number of files in current directory.
file_count=0

for item in *;
do
    if [ -f "$item" ];
    then
        ((file_count++))
    fi
done

echo "Total files: $file_count"
echo "Looping through each file..."

counter=1
for file in *;
do
    if [ -f "$file" ];
    then
        echo "File $counter: $file"
        ((counter++))
    fi
done
