
if [ $# -ne 2 ] ; then
	echo "Invalid number of arguments."
	exit 1
fi

FILE=$1
APPENDTO=$2

if [ -f $FILE -a -r $FILE ] ; then
	DATA=$(cat $FILE | tail +5 | head -4)

	for i in $DATA ; do
		echo "$i"

		NUM_OF_CHARS=$(echo "$i" | wc -c)

		if [ $NUM_OF_CHARS -gt 0 ] ; then
			echo "$i" >> $APPENDTO
		fi
	done
fi
