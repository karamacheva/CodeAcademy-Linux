
#! /bin/bash

if [ -z $1 ]
then
	echo No arguments on command line
	read FILENAMES
else
	FILENAMES="$@"
	for i in $FILENAMES 
	do
		touch $i
	done
fi
echo The following filenames have been provided $FILENAMES
