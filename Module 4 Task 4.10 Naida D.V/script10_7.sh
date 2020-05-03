#!/bin/bash

while true
do

copyfile=/home/denis/exmpl.txt
origfile=/etc/passwd
if [ -f $copyfile ]
then 
echo ""
else
sudo cat /etc/passwd > /home/denis/exmpl.txt
fi

if [ "$origfile" !=  "$copyfile" ]
then
diff /home/denis/exmpl.txt /etc/passwd | awk -F ":" '{print $1, $3}' | sed -e '1,1d' | tr -d ">" | awk '{print $1, $2}' >> /home/denis/userlist.txt
sudo cat /etc/passwd > /home/denis/exmpl.txt
else
echo ""
fi

sleep 180

done

exit 0
