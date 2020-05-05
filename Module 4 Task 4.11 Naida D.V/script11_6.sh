#!/bin/bash
echo "Enter what you want to find:"
read var1
echo "Enter where you want to find it:"
read var2
echo "Enter max number of matches:"
read var3
echo "Here is your result:"
grep -m "$var3" "$var1" $var2 | sort | cat -n
exit 0
