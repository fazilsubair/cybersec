#!/bin/sh
echo -e "Content-Type: application/html\n"
CMD=`echo "$QUERY_STRING" | cut -d '=' -f2`
if [ 'acl' = $CMD ]; then 
	ret=`/userfs/bin/tcapi get ACL_Common IdleEntryIndex`
	echo $ret
fi
