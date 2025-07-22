#!/bin/bash

echo -n "enter the filename:"
read filename

if [[ -f "$filename" ]];
then
	echo "analyzing  '$filename'..."

	lines=$(wc -l < "$filename")
	words=$(wc -w < "$filename")
        chars=$(wc -m < "$filename")
       
	echo "lines      :$lines"
	echo "words      :$words"
	echo "characters :$chars"
else

 echo "file '$filename' not found."
fi


