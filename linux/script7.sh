#!/bin/bash
#Write a shell script to accept string from the user, then print numbers of characters count along with its letter>
#Ex:  String = password O/p=   p=1 a=1 s=2 w=1 o=1 r=1 d=1


read -p "Enter a string: " input
length=${#input}

for (( i=0; i<length; i++ ));
do
    char="${input:$i:1}"
    count=0


    for (( j=0; j<length; j++ ));
    do
        check="${input:$j:1}"
        if [[ "$char" == "$check" ]];
       	then
            ((count++))
        fi
    done

    
    if [[ "$input" == *"$char"* ]];
    then
        echo "$char=$count"
       
        temp=""
        for (( k=0; k<${#input}; k++ )); 
	do
            current="${input:$k:1}"
            if [[ "$current" != "$char" ]];
	    then
                temp+="$current"
            fi
        done
        input="$temp"
        length=${#input}
        ((i--))  
    fi
done
