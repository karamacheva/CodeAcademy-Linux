if [ -z $1 ]
then
	echo "No arguments, please enter strings"
	read FIRST
else
	FIRST=$1
fi

if [ -z $2 ]
then
	echo "Please enter an string:"
	read SECOND
else
	SECOND=$2
fi

gcc ex15.c -o rez
echo `./rez $FIRST $SECOND` > output.txt

READ=$?
if [ "$READ" -ne "0" ]
then
	echo "Unsuccess test,please try again"
fi

#RESULT=${FIRST:0:$(($SECOND))}

[[ $(< output.txt) != $FIRST || $(< output.txt) != $SECOND]]
then
	echo "Function copy() doesn't work properly"
else
	echo "Successful test. Function copy() works!"
fi
