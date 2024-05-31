
if [ $# -ne 1 ] ; then
	echo "INVALID NUM OF ARGS"
	exit 1
fi

FILE=$1

FILEZ=$(ls -t)

NEW=0
OLD=0

WAS="FALSE"

for i in $FILEZ ; do
	if [ "$i" != "$FILE" -a "$WAS" == "FALSE" ] ; then
		NEW=$(( $NEW+1 ))
	fi

	if [ "$i" == "$FILE" ] ; then
	       WAS="TRUE"	
	fi

	if [ $WAS == "TRUE" ] ; then
		OLD=$(( $OLD+1 ))
	fi
done

echo "There are $NEW newer files than $i, and $OLD older files than $i"
exit 0
