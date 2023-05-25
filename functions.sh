#!/bin/bash
: 'greet()
{
	echo "hello $1 !"
}
greet asma '

####   returning values from the function ####

: 'add() {
    return $(( $1 + $2 ))
}

add 5 3
result=$?
echo "Result: $result" '

: 'multiplication()
{
	return $(( $1 * $2 ))
}
multiplication 5 2
result=$?
echo "result is : $result" '

####   returning the length of the string ####


length()
{
	string=$1  $2

	return ${#string}
}
length "hello" "world"
result=$?
echo "length :$result"






