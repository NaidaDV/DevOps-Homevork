#!/bin/bash
echo $PATH | grep -o '[/][^:]*$'
echo $PATH | awk -F ":" '{print $NF }'
echo `expr "$PATH" : '.*\(:/[[:print:]+]*\)'` | tr -d ":"
exit 0
