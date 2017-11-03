#!/bin/bash
if [ -n "$1" ]
then
	ps | grep "$1" | awk '{print $1}' | xargs leaks
else
	echo "Enter parameters"
fi
