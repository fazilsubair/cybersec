#!/bin/sh

PROFILE_CFG=/userfs/profile.cfg
if [ -f $PROFILE_CFG ] ; then
    . $PROFILE_CFG
fi

if [ "$TCSUPPORT_NAT_LOOPBACK" = "" ]; then
	if [ $# != 3 ] ; then
		echo "usage: $0 [add/del] [interface name#] [Rule#]"
		exit 0
	fi
fi

if [ $1 = "add" ] ; then
        OPT=-I
elif [ $1 = "del" ] ; then
        OPT=-D
else
        echo "usage: $0 [add/del] [interface name#] [Rule#]"
        exit 0
fi

#PVC=$2
WAN_IF=$2
VS_CHAIN=VS_$WAN_IF
RULE=$3
if [ "$TCSUPPORT_NAT_LOOPBACK" != "" ]; then
	[ $# = 4 ] && VS_CHAIN=VS_LOOPBACK_$WAN_IF
fi

#VS_CONF=/etc/nat_pvc$PVC/vserver$RULE
VS_CONF=/var/run/$WAN_IF/vserver$RULE
if [ -f $VS_CONF ] ; then
        chmod +x $VS_CONF
        . $VS_CONF
else
	exit 0
fi

EXT_SPORT=$STARTPORT
EXT_EPORT=$ENDPORT
INT_IP=$LOCALIP
IP_PROTOCAL=$Protocal

# get ipmode (Single or Multiple)
#IPMODE_CONF=/etc/nat_pvc$PVC/ipmode
#if [ -f $IPMODE_CONF ] ; then
#        chmod +x $IPMODE_CONF
#        . $IPMODE_CONF
#fi
SERVER_IP="0.0.0.0"
if [ "$TCSUPPORT_NAT_LOOPBACK" != "" ]; then
	[ $# = 4 ] && SERVER_IP=$4
fi
#if [ "$IPMODE" = "Multiple" ] ; then
#	SERVERIP_CONF=/etc/nat_pvc$PVC/server_ip
#	if [ -f $SERVERIP_CONF ] ; then
#        	chmod +x $SERVERIP_CONF
#        	. $SERVERIP_CONF
#	fi
#fi

if [ "$SERVER_IP" = "0.0.0.0" ] ; then

echo "$IP_PROTOCAL" | grep -q "TCP" && iptables -t nat $OPT $VS_CHAIN -p tcp --dport $EXT_SPORT:$EXT_EPORT -i $WAN_IF -j DNAT --to $INT_IP

echo "$IP_PROTOCAL" | grep -q "UDP" && iptables -t nat $OPT $VS_CHAIN -p udp --dport $EXT_SPORT:$EXT_EPORT -i $WAN_IF -j DNAT --to $INT_IP

else

echo "$IP_PROTOCAL" | grep -q "TCP" && iptables -t nat $OPT $VS_CHAIN -p tcp --dport $EXT_SPORT:$EXT_EPORT -d $SERVER_IP -s 0/0  -j DNAT --to $INT_IP

echo "$IP_PROTOCAL" | grep -q "UDP" && iptables -t nat $OPT $VS_CHAIN -p udp --dport $EXT_SPORT:$EXT_EPORT -d $SERVER_IP -s 0/0  -j DNAT --to $INT_IP

fi

