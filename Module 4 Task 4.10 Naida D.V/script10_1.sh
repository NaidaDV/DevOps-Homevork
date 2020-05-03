#!/bin/bash
var1=""
echo "Would you be so kind to enter your word?"
until [ "$var1" = "quit" ]
do 
read var1
if [ "$var1" = "quit" ]
then
echo "Now, when you entered $var1 it's finaly over!"
else
echo "Wrong word!"
fi
done
exit 0
