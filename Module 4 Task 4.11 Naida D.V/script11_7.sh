#!/bin/bash
set -r
echo "Enter what you want to find:"
read var1
echo "Enter max number of matches:"
read var3
echo "Here is your result:"
grep -m "$var3" -r "$var1" /home/denis/*.* | sort | cat -n
exit 0
