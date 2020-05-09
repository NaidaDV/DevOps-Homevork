#!/bin/bash
exec >> /home/denis/memory/stat
echo "NEW LOG POINT"
date | awk '{print $2, $3, $4, $5}'
echo "__________________________________________"
var1=$(vmstat 3 11)
var2=$(echo "$var1" | tail -n -11 | awk '{print $12}' | grep "[0-9]")
echo "$var2" | while read var3
do
let "var4=$var4+$var3"
echo $var4 > fil.txt
done
var5=$(cat fil.txt)
rm fil.txt
let "var5=$var5/11"
echo "Current average kernel context switches per second = $var5"
echo "------------------------------------------------"
echo "Current load average in last 15 seconds: `uptime | awk '{print $10}'`"
echo "------------------------------------------------"
echo -e "Current swapfile status: full size is `free -m | tail -n -1 | awk '{print $2}'`M and free size is `free -m | tail -n -1 | awk '{print $2}'`M"
echo "------------------------------------------------"
echo -e "Current hard drive partition ststus:\n `df -h`"
echo
exit 0
