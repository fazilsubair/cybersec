#!/bin/sh
echo -e "Content-Type: application/html\n"
INDEX=`echo "$QUERY_STRING" | cut -d '=' -f2`
ret=`/userfs/bin/tcapi set WebCurSet_Entry acl_id $INDEX`
echo $ret
