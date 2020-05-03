#!/bin/bash
for i in $@
do
result=$(bc <<< "scale=3;$i^2")
echo "$i^2=$result"
done
exit 0
