#important are tail -5 (last 5 line) +5 (from line 5 to end)
# head -4 gets 4 lines of the output
# ls -S is size of files big -> small
# ls -r is size of files small -> big (reversed)
# $( commands | commands ) saves the output of a command
# [ "string" = "example" ] check if string is equal to example
# $(( 1+2 )) is arithmetic for saving the output of (( 1+2 ))
# expr length "example" checks for lenght of the string
# uniq -c counts number of occurances
# uniq -u prints only unique lines
# uniq -d prints only those who repeated
# find <dir> -type (f or d) -iname (case sensitive) -name (pattern) 
# bash script check if a file is readable or writable 
# if [ -r $FILE ] or if [ -w $FILE ]
# ls -t newwest > oldest


files=$( ls )

 

echo "$files"
