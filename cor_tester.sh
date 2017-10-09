# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    x.sh                                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akaplyar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/09 20:22:02 by akaplyar          #+#    #+#              #
#    Updated: 2017/10/09 21:03:52 by akaplyar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
if [ -n "$1" ]
then
	for ((s = 100, i = 100; i <= 7000; i += 100 ))
	do
		./corewar -d $i $* | tail -n +$[$# + 2] > diff.my
		./champs/corewar -d $i $* | tail -n +$[$# + 2] > diff.li
		diff -b diff.my diff.li > tests/x_$i.txt 
		if test -s tests/x_$i.txt
		then
			if test -s tests/x_$s.txt
			then
				diff tests/x_$s.txt tests/x_$i.txt > temporary
				if test -s temporary
				then
					s=$i
				else
					rm tests/x_$i.txt
				fi
			else
				s=$i
			fi
		else
			rm tests/x_$i.txt
		fi
	done
	rm diff.my diff.li
	if test -s temporary
	then
		echo "Shit, check tests dir :("
		rm temporary
	else
		echo "Great! No diffs"
	fi
	exit 0
else
	echo "No args!!!!!"
	exit 0
fi
