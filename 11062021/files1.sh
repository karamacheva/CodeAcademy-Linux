#! /bin/bash

while read DIR
do
	echo $DIR
	cd $DIR
	for i in `ls *.fin` 
	do
		name=`echo $i | cut -f 1 -d'.'`
		echo $name
		mv  "${name}.dat" "${name%}.sucess"
		rm $i
	done
done
