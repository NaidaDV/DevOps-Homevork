#!/bin/bash
if [[ $# > 2 ]]
then 
echo "Error! Too much arguments!"
else
if [[ "$1" > "$2" ]]
then
echo "$1"
else
echo "$2"
fi 
fi
exit 0
