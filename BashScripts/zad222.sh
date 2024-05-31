
if [ $# -ne 2 ] ; then
	echo "Wrong number of arguments."
	exit 1
fi

DIRECTORY=$1
FILE=$2

if [ -r $DIRECTORY -a -d $DIRECTORY ] ; then

	PATH_TO_FILE=$(find $DIRECTORY -type f -iname $FILE)

	if [ -w $PATH_TO_FILE -a "$PATH_TO_FILE" != "" ] ; then

		rm $PATH_TO_FILE
		echo "PLIK $PATH_TO_FILE ZOSTAL USUNIETY" 

	fi	
	
fi
	
