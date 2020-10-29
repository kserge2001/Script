#!/bin/bash

##Description: Filter the access log file
#Date: October 2020
#Author: Serge K


> output.txt
STDATE=$(head -n 1 access.log | awk '{print $4}'|cut -f2 -d'[')
SDd=$(echo $STDATE | cut -f1 -d':')
SHh=$(echo $STDATE | cut -f2 -d':')
SMm=$(echo $STDATE | cut -f3 -d':')


EDATE=$(tail -n 1 access.log | awk '{print $4}'|cut -f2 -d'[')
EHh=$(echo $EDATE | cut -f2 -d':')

for x in `eval "echo {$SHh..$EHh}"` ; do
for i in `eval "echo {$SMm..59}"`; do
for code in 200 301 304 404 501 ; do

 echo "-----Connection in $SDd:$x:$i -------"
 COUNT=$(grep "$SDd:$x:$i" access.log |grep -c "HTTP/1.[0|1]\" "$code"")
 echo "----> Status Code $code = $COUNT"
 echo "$code  $COUNT" >> output.txt
 
done
 echo "#################################################################"

done
done

E2X=$(cat output.txt | awk  '$1 ~ /200/ {sum += $2} END {print sum}')
E31X=$(cat output.txt | awk '$1 ~ /301/ {sum += $2} END {print sum}')
E34X=$(cat output.txt | awk '$1 ~ /304/ {sum += $2} END {print sum}')
E4X=$(cat output.txt | awk  '$1 ~ /404/ {sum += $2} END {print sum}')
E5X=$(cat output.txt | awk  '$1 ~ /501/ {sum += $2} END {print sum}')
echo "*********************************"
echo "----------Total Request---------"
echo "Status 200 = $E2X"
echo "Status 301 = $E31X"
echo "Status 304 = $E34X"
echo "Status 404 = $E4X"
echo "Status 501 = $E5X"
echo "*********************************"
