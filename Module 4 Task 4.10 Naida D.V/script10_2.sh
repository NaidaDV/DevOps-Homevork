#!/bin/bash
while true
do
let var1=$(ps -A | wc -l)-1
echo "It's `date | awk '{print $2, $3, $4, $5}'` and there is $var1 runing processes." >> /home/denis/tmp/timeprocess.txt
sleep 60
done
exit 0
