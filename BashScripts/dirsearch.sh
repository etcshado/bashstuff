# /bin/bash

SPACES=""

HASDIR="TRUE"

STARTDIR="`pwd`"

LASTDIR=""

checkDir() {

	for i in * ; do
		HASDIR="FALSE"

		if [[ -f $i ]] ; then
			echo "$SPACES-$i"
		elif [[ -d $i  && ! $LASTDIR == $i ]] ; then
			echo "$SPACES+$i"
			cd $i
			LASTDIR="$i"
			HASDIR="TRUE"
			SPACES=" "
			break
		fi
	done
}

END="FALSE"

while [[ $END == "FALSE" ]] ; do

	if [[ "`pwd`" == "/home/kali/Desktop" ]] ; then
		break
	fi

	checkDir
	if [[ $HASDIR == "FALSE" ]] ; then
		cd ..
		HASDIR="TRUE"
		
	fi
done



