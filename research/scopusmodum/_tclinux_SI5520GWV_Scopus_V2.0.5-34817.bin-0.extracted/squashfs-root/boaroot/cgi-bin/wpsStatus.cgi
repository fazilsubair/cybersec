#!/bin/sh
echo -e "Content-Type: application/html\n"
ret=`/userfs/bin/tcapi get Info_WLan wlanWPStimerRunning`
echo $ret
