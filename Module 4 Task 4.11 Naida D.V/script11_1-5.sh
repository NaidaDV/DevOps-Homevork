#!/bin/bash
echo "Task 4.11.1"
find /usr -type f -size +20M
echo 

echo "Task 4.11.2"
var1=$(ls -l ~ | grep ^- | wc -l)
var2=$(ls -la ~ | grep ^- | wc -l)
echo "Home directory of the user $USER include $var1 normal files and `bc <<< $var2-$var1` hidden files."
echo

echo "Task 4.11.3"
echo "It's `date | awk '{print $2, $3, $4, $5}'`"
echo "My system has such users as:"
cat /etc/passwd | awk -F ":" '{print $1}'
echo "And my system's uptime is:"
uptime
echo

echo "Task 4.11.4"
echo "Number of user $USER processes is:"
ps U $USER | wc -l
echo "Number of user root processes is:"
ps U root | wc -l
echo

echo "Task 4.11.5"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6
echo

exit 0
