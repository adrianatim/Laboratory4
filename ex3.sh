#!/bin/bash

F=""
while [ -z "$F" ] || [ ! -f "$F" ] || [ ! -r "$F" ]
do
	read -p "Filename: " F
done
