#!/bin/bash

for i in $@
do
	if test -f $i #or [ -f $i ]
	then
		echo $i is a file
	elif [ -d $i ] #test -d $i
	then 
		echo $i is a directory
	elif echo $i | grep -q "^[0-9]\+$"
	then
		echo $i is a number
	else 
		echo Nothing...
	fi
done

#example of running this exercise:
#./ex1.sh seminar.txt Lecture2.sh 12 a12 . ss
