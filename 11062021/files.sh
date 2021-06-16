#! /bin/bash

for i in `ls *.fin` 
do
	name=`echo $i | cut -c1-5`
	echo $name
	mv -- "${name}.dat" "${name%}.sucess"
	rm $i
done
