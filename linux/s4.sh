#!/bin/bash

echo -n "enter the file to search for:"
read filename

echo -n "enter the dir path to search(press enter to use '/' as defult):"
read dirpath

if [[ -z "dirpath" || ! -d "$dirpath" ]];
then 
	echo "invalid path. using root '/' as defualt."
	dirpath="/"
fi

echo "searching for '$filename' in '$dirpath'..."

found=$(find "$dirpath" -type f -name "$filename" 2>/dev/null)
if [[ -z "$found" ]];
then
	echo "file '$filename' not found in '$dirpath'."
else
	echo "found files(s):"
	echo "$found"
fi

