#!/bin/bash

all_ip=$@

printf "Please wait for result... \n IP \t PORT\n"
for ip in $all_ip
do
nc -vz -w 1 $ip 80 443 1>result_file 2>&1
result1=$(awk '{ print $NF }' result_file)
result2=$(echo $result1 | cut -d' ' -f2)
result1=$(echo $result1 | cut -d' ' -f2)
if [[ $result1 == 'succeeded!' ]]
then
echo $ip : 80
fi

if [[ $result2 == 'succeeded!' ]]
then
echo $ip : 443 
fi

done

rm result_file
