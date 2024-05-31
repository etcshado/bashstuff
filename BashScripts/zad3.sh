

if [ $# -ne 2 ] ; then
	echo "please enter a file to read from, and to save to"
else
	
	touch $2
	touch temp_file

	cat $1 | tail +5 | head -5 > temp_file


	while read -r line ; do

		if [ `echo "$line" | wc -c` -gt 1 ] ; then
			echo "$line" >> $2
		fi

	done < temp_file

fi
