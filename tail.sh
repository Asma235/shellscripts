files=("mkdir.sh" "ifstmt-or.sh" "casestmt.sh" "elseif.sh")
num_lines=5
for file in "${files[@]}"
do
	echo "last $num_lines lines of $file :"
	tail -n $num_lines "$file"
	echo
done
