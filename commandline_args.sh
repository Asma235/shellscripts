#!/bin/bash
: 'echo "total number of arguments :" $#
echo "script name :" $0
echo "first argument :" $1
echo "second argument :" $2
echo "all arguments seperately :" $@
echo "all arguments as a single string : $*" '


##   file processing ###


: 'if [ $# -eq 0 ] 
then 
	echo "please provide a file name"
	exit 1
fi
# process the file 
file=$1
echo "the processing file is $1" '

####     batch processing   ####

: 'for file in $*
do
echo "processing file: $file"
done ' 


####     multiple arguments with validations   #######
: 'if [ $# -lt 2 ]
then
	echo "please provide atleast 2 arguments ."
	exit 1
fi
for file in $@
do 
	echo "processing file : $file"
done '

##### get arguments from command line with names ########
: 'for arg in "$@"
do
	index=$(echo $arg | cut -f1 -d=)
	val=$(echo $arg | cut -f2 -d=)
	case $index in 
		X) 
		x=$val
		;;
		Y)
		y=$val
		;;
	*)
esac
done((result=x+y))
echo "X+Y=$result	
" '

####    file backup with timestamp #####


if [ $# -eq 0 ]
then
        echo " please provide a file name "
exit 1
fi
# create a backup of the file with the time stamp

file=$1
time=$(date "+%y-%m-%d %H:%M:%S")
backupfile=$file-$time
cp "$file" "$backupfile"
echo "backup created :"$backupfile
