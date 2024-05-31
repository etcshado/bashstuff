

alfabet=(a b c d e f g h i j k l m n o p r s t w u x y z)

FILEZ=$(find . -type f -name "*.txt")
COUNTER=0
SUFFIX=""

for file in $FILEZ ; do

	echo "$file"

	SUFFIX+=${alfabet[COUNTER]}

	COUNTER=$(( $COUNTER+1 ))

	echo "$SUFFIX" >> $file

done

