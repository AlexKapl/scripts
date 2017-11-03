#!/bin/bash
if [ -n "$1" ]
then
	if [ -d ~/delete_me ]
	then
		rm -rf ~/delete_me > /dev/null
	fi
	git clone "$1" ~/delete_me
	echo "Clone in ~/delete_me"
	cd ~/delete_me
else
	rm -rf ~/delete_me > /dev/null
	echo "Cleared"
fi
