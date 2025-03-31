iptables -F acl_chain_lan
iptables -F acl_chain_wan
#iptables -t filter -D INPUT -p ICMP --icmp-type 8 -j acl_chain
iptables -t filter -D ACL -i br0 -p TCP -m multiport --dport ftp,8023,http,https,ssh -j acl_chain_lan
iptables -t filter -D ACL -i br0 -p UDP -m multiport --dport ftp,8023,http,https,ssh -j acl_chain_lan
iptables -t filter -D ACL -p TCP -m multiport --dport ftp,8023,http,https,ssh -j acl_chain_wan
iptables -t filter -D ACL -p UDP -m multiport --dport ftp,8023,http,https,ssh -j acl_chain_wan
iptables -X acl_chain_lan
iptables -X acl_chain_wan
