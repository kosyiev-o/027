#!/bin/bash

#files for backup
cd $1
files=$(find . -maxdepth 1 -mtime -1 -not -name .)
mkdir $2/$(date +%Y%m%d)
for source in $files
do
	cp -R $source $2/$(date +%Y%m%d)
done
