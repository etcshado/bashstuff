
if [ $# -ne 1 ] ; then
	echo "Invalid number of arguments."
	exit 1
fi

FILE=$1

if [ -f $FILE -a -r $FILE ] ; then
	OUTPUT=$(cat $FILE | tail -7 | sort | uniq -c)
	echo "$OUTPUT"
	exit 0
fi

echo "File does not exist."
exit 1
