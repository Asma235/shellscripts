#!/bin/bash
read -p "enter the operations :" operations
read -p "enter the number :" a
echo 
read -p "enter the number :" b
echo
: 'Add=$((a+b))
echo "$Add"
sub=$((a-b))
echo "$sub"
mul=$((a*b))
echo "$mul" '
case $operations in
     "+")
		echo "The addition of $a and $b is  $((a+b))"
        ;;
     "-")
	   echo " the subtraction of $a and $b is $((a-b))" 
        ;;
    "*")
	    echo " the multiplication of $a and $b is $((a*b))"
    	    ;;
    "/")
	echo "$the division of  $a and $b is  $((a/b))"
	;;	
    *)
        echo " operation doesnt match"
        ;;
esac

