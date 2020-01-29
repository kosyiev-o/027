#!/bin/bash

#variable with files for backup
files=$(find $1 -mtime -10) #scan files on 0 level
mkdir $2/$(date +%Y%m%d)
count=0
buffer=$HOME
for source in $files
do
	if [ $count -gt 0 ]
	then
		if [ ../$source != ../$buffer ]
		then
			cp -R $source $2/$(date +%Y%m%d) #and we can copy hidden files too
			count=$count+1
			buffer = $source
		fi
	else
		cp -R $source $2/$(date +%Y%m%d)
		count=$count+1
		buffer=$source
	fi
done
