#!/bin/bash

lin () {

typeset r
 
let r=3*$1+8*$2+$3
echo "r=3*$1+8*$2+$3=$r"
return
}

result=`lin $1 $2 $3`
echo "$result" 

exit 0
