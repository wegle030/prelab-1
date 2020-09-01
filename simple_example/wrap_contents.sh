#!/bin/bash

if [ $# -eq 3 ];then
	#Sets the contents of the files to variables to pipe them into the new file
	header=$(cat $2_header.html )
	footer=$(cat $2_footer.html)
	body=$(cat $1)
	#Creates new file with a correct name and contents
	cat > $3 <<- _EOF_
	$header
	$body
	$footer
	_EOF_
else 
	echo "wrong number of arguments"
fi
