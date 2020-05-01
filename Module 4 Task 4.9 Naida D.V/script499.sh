#!/bin/bash
date | awk '{print $1, $3, $2, $4, $5}'
exit 0
