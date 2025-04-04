#!/bin/sh

# udhcpc script edited by Tim Riker <Tim@Rikers.org>
[ -z "$1" ] && echo "Error: should be called from udhcpc" && exit 1
PROFILE_CFG=/userfs/profile.cfg
if [ -f $PROFILE_CFG ] ; then
	chmod 777 $PROFILE_CFG
	. $PROFILE_CFG
fi
if [ "$TCSUPPORT_DNSEACHPVC" != "" ] ;then
	RESOLV_CONF="/etc/resolv_"$interface".conf"
else
	RESOLV_CONF="/etc/resolv.conf"
fi
#GATEWAY_FILE="/etc/"$interface"_gateway.conf"
GATEWAY_FILE="/var/run/"$interface"/gateway"
STATUS_FILE="/var/run/"$interface"/status"
IP_FILE="/var/run/"$interface"/ip"
NETMASK_FILE="/var/run/"$interface"/netmask"

[ -n "$broadcast" ] && BROADCAST="broadcast $broadcast"
[ -n "$subnet" ] && NETMASK="netmask $subnet"

case "$1" in
	deconfig)
		#/sbin/ifconfig $interface down
		/sbin/ifconfig $interface 0.0.0.0
		
		echo "down" > $STATUS_FILE		
		/userfs/bin/tcapi commit WanInfo_Message_$interface/4		
		
		if [ -f $GATEWAY_FILE ]; then 
		rm $GATEWAY_FILE
		fi
		if [ -f $NETMASK_FILE ]; then		
		rm $NETMASK_FILE
		fi
		if [ -f $IP_FILE ]; then		
		rm $IP_FILE
		fi
		;;

	renew|bound)
		/sbin/ifconfig $interface $ip $BROADCAST $NETMASK		
		echo $ip > $IP_FILE
		echo $subnet > $NETMASK_FILE		
		
		if [ -n "$router" ] ; then
			echo "writing routers to file"
			for i in $router ; do
				echo $i > $GATEWAY_FILE
			done
		fi
		
		echo -n > $RESOLV_CONF
		[ -n "$domain" ] && echo search $domain >> $RESOLV_CONF
		#for i in $dns ; do
		#	echo adding dns $i
		#	echo nameserver $i >> $RESOLV_CONF
		#done

		echo "up" > $STATUS_FILE
		#/userfs/bin/tcapi set WanInfo_Message Type Up
		#/userfs/bin/tcapi set WanInfo_Message Interface $interface
    if [ "$TCSUPPORT_HENAN_CABLE" != "" ]; then
      if [ ! -z "$tftp" -a ! -z "$bootfile" ]; then
        /userfs/bin/tcapi set CM_Common tftpServer $tftp
        /userfs/bin/tcapi set CM_Common cmFile $bootfile
      fi
    fi
    /userfs/bin/tcapi commit WanInfo_Message_$interface/4
    
		;;
		
esac

exit 0
