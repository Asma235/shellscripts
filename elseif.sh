#!/bin/bash
: 'echo "enter the score"
read n
if [ $n -eq 100 ]
then    
        echo "you got the first prize"
elif [ $n -eq 90 ]
then    
        echo "you got the second prize"
elif [ $n -eq 80 ]
then
        echo "you got the 3 rd prize "
else    
        echo "sorry try for the next time"
fi '

: 'read -p "enter username :" username
read -s -p "enter password :" password
echo 
if [ "$username" == "asma" ]&&[ "$password" == "password" ]
then
	echo " authentication successfull"
elif [ "$username" == "sana" ]&&[ "$password" == "password" ]
then 
	echo " authentication successfull"
else
	echo " authentication failed"
fi '

file="$1"
if [ -d "$file" ]
then
	echo "$file is a directory"
elif [ -f "$file" ]
then
	echo "$file is a regularfile"
elif [ -L "$file" ]
then
	echo "$file is a symbolic link"
else
	echo "$file is an unkown type"
fi


