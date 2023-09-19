# Usage: bash solution2.sh -a H   Count the number of hydrogen atoms in all pdb fiiles 
#        bash solution2.sh -b     Count the number of nitrogen atoms in molecules starting with letter p

list="*.pdb"

if [[ $1 == "-a" ]]; then
	echo "the number of hydrogen atoms in all pdb fiiles:"
	for file in $list
	do
		echo -n "$file: "  && cat $file | grep -o " $2 " | wc -l
	done

fi

list="p*.pdb"

if [[ $1 == "-b" ]]; then
	echo "the number of nitrogen atoms in molecules starting with letter p:"
	for file in $list
	do
		echo -n "$file: "  && cat $file | grep -o " N " | wc -l
	done
fi
