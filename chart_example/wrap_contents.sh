#!/bin/bash

if [ $# -eq 3 ];then
	header=$(cat $2_header.html )
	footer=$(cat $2_footer.html)
	body=$(cat $1)
	cat > $3 <<- _EOF_
	$header
	$body
	$footer
	_EOF_
else 
	echo "wrong number of arguments"
fi
