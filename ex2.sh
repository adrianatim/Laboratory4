#!/bin/bash

a=$1
s=$2

find $a -type f | while read f; do
	n= ls -l $f | awk '{print $5}'
	if test $n -gt $s; then
		echo $f
	fi
done
