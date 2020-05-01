#!/bin/bash
echo "Bash pass is $SHELL."
RES=$(echo $SHELL | awk -F "/" '{print $3}')
SER=$(ps | grep $RES)
if [ "$SER" != "" ]
then
echo "It works!"
else
echo "It doesn't works!"
fi
mkdir /home/denis/scriptdir
exit 0
