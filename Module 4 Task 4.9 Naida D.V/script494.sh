#!/bin/bash
cd ~
var1=$(ls -Rl ~ | grep ^d | wc | awk '{print $1}')
var2=$(ls -Rl ~ | grep ^d | awk '{print $9}')
echo "In my home directory $var1 subdirectories:" 
echo "$var2"
exit 0


