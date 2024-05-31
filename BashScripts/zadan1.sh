
if [ $# -ne 2 ] ; then
	echo "Wrong number or arguments."
	exit 1
fi

FILE=$1
SAVETO=$2

if [ -f $FILE ] ; then
	DATA=$(cat $FILE | tail +5 | head -5 | sort | uniq -u)
	echo "$DATA" > $SAVETO
	exit 0
fi

exit 1
