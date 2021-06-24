#!/bin/bash

if [ -z $1 ]
then
	echo "No arguments, please enter int:"
	read FIRST
else
	FIRST=$1
fi

if [ -z $2 ]
then
	echo "No arguments, please enter float:"
	read SECOND
else
	SECOND=$2
fi

if [ -z $3 ]
then
	echo "No arguments, please enter string"
	read THIRD
else
	THIRD=$3
fi

gcc ex7.c -o rez
echo `./rez $FIRST $SECOND $THIRD` > output.txt

READ=$?
if [ "$READ" -eq "0" ]
then
	echo "Success test"
else
	echo "Unsuccess test,Please try again"
fi
