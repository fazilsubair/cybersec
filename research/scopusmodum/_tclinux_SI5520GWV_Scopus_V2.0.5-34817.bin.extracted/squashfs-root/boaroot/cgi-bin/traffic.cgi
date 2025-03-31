#!/bin/sh

echo -e "Content-Type: application/json\n"
echo -e "[\c"
echo `/userfs/bin/bwc -i pon` 
echo "]"

 