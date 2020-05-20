#!/bin/bash

#echo command: $0
#echo arguments: $1 $2 $3 $4 $5
#echo all args: $@
#echo arg count: $#

#shift
#echo args: $1

#shift 
#echo arg: $1

#for A in a b c d 
#do
#	echo Here is $A
#done

#for A in $@
#do
#	echo Arg A: $A
#done

#for A;
#do 
#	echo arg B: $A
#done

S=0
for F in 'find $1 -type f -name "*.c"'
do
	N='grep "[^ \t]" $F | wc -l'
	S='expr $S + $N'
done
echo $S
