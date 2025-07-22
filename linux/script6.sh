#!/bin/bash
#Write a shell script to loop based on number of characters in a string.
 # Ex:- Accept a string(name) : varun
 #        loop supose excute from V to U (6 digits)
 
 read -p "enter a string (e.g., a name ):" name

 echo "looping though each chacter in '$name' ($length characters):"
 for (( i=0; i<$length; i++ ));
 do 
	char="${name:$i:1}"
	echo "Character $((i+1)): $char"
done	


