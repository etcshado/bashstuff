
files=$( ls -S -r | head -5 )

for i in $files ; do
	
	if [ -f $i ] ; then
		echo "$i is a file"
	else
		echo "$i is a directory"
	fi

done

