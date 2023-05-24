#!/bin/bash
: 'current_date=$(date +%y-%d-%m)
mkdir "rep- $current_date" '

####cretaing multiple directories with a prefix
: 'prefix="directory"
no_dir=5
for ((i=1; i<=$no_dir ; i++));
do
	directory_name="$prefix$i"
	mkdir "$directory_name"
done '

##############  creating directories based on the user input #############################
: 'read -p "enter directory name :" directory_name
mkdir "$directory_name" '

#mkdir -v "$directory_name"
#mkdir -m 577 "$directory_name" 

# mkdir command by using the case statement"
#
#
: 'read -p "enter directory name:" directory_name
case "$directory_name" in
	"docs")
		mkdir -v "Documents"
		;;
	"music")
		mkdir -v "music"
		;;
	"pics")
		mkdir -v "pictures"
		;;
	*)
		echo  "invalid directory options"
		;;
esac '

# mkdir command by using the if-elif-else
read -p "enter diretory name :" directory_name
if [ "$directory_name" == "docs" ]
then
mkdir -v "documents"
elif [ "$directory_name" == "pics"]
then
mkdir -v "pictures"
elif [ "$directory_name" == "music" ]
then
mkdir -v "music"
else
echo "invalid directory option"
fi




