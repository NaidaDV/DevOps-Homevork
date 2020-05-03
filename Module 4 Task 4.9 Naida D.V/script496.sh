#!/bin/bash
echo "$1+$2" 
echo "-----= `bc <<< "scale=3; ($1+$2)/$3"`"
echo "$3"
exit 0
