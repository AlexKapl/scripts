# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    text.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akaplyar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/10 17:49:46 by akaplyar          #+#    #+#              #
#    Updated: 2017/10/26 13:31:08 by akaplyar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
camagru="/nfs/2016/a/akaplyar/PhpstormProjects/Camagru/images"
if [ -n "$1" ]
then
	for i in "$*"
	do
		xattr -cr $i
		mv $i $camagru
	done
else
	echo "Enter args"
fi
