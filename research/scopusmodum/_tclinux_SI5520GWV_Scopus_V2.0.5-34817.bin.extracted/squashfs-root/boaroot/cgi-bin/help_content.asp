<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv=Content-Script-Type content=text/javascript>
<script language="javascript" src="/JS/util.js"></script>
<link rel="stylesheet" href="/JS/stylemain.css" type="text/css">
<script language="JavaScript" type="text/javascript">
var sptUserName = '0'; 
var sysUserName = '1';
var curUserName = "<%tcWebApi_get("WebCurSet_Entry","CurrentAccess","s")%>";
var isCZGDSupport = "<%tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "s")%>";
function FormLoad()
{
with (document.forms[0])
{
	manageEquip_LOG.style.display = "none";
	
if (curUserName == sysUserName)
{
statusEquip.style.display = "";
statusNetwork.style.display = "";
if(isCZGDSupport == 'Yes')
	getElement('statusNetwork_1').innerText = 'Display connection information and PON information。 Connection Information shows the IP address, subnet mask, default gateway, DNS server information of each PVC.PON Information shows the link status of the PON.';
else
getElement('statusNetwork_1').innerText = 'Display connection information and PON information. Connection information shows the LAN status and IP address, subnet mask, default gateway, DNS server information or each PVC;PON information shows the link connection status of the PON, link performance statistics, and optical module information. ';
statusUser.style.display = "";
getElement('statusUser_1').innerText ='<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>Display WLAN interface，<% end if %>Ethernet interface<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then %>and USB interface<% end if %>。<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>The WLAN interface shows the wireless network connection status, channel, statistical information of SSID_1, authentication mode, and encryption status；<% end if %>Ethernet interface shows the gateway IP address, MAC address, status of each LAN port；<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then %>USB interface show information of each connected USB device <% end if %>';
statusACS.style.display = "none";
statusACS_1.style.display = "none";
<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) <> "Yes" then %>
ntwk.style.display = "none";
<% end if %>
var network = getElementByName("ntwk_cfgWan");
for (i = 0; i < network.length; i++)
{
network[i].style.display = "none";
}
ntwk_cfgBind.style.display = "none";
ntwk_cfgBind_1.style.display = "none";
if(isCZGDSupport != 'Yes')
{
ntwk_cfgDHCP.style.display = "none";
ntwk_cfgDHCP_1.style.display = "none";
}
ntwk_cfgWLAN.style.display = "";
ntwk_cfgWLAN_2.style.display = "none";
ntwk_cfgWLAN_3.style.display = "none";
ntwk_cfgWLAN_4.style.display = "none";
ntwk_cfgWLAN_5.style.display = "none";
ntwk_cfgWLAN_7.style.display = "none";
ntwk_cfgWLAN_8.style.display = "none";
ntwk_cfgWLAN_9.style.display = "none";
ntwk_cfgRemoteManage.style.display = "none";
ntwk_cfgRemoteManage_1.style.display = "none";
ntwk_cfgRemoteManage_2.style.display = "none";
ntwk_cfgRemoteManage_3.style.display = "none";
ntwk_cfgRemoteManage_4.style.display = "none";
<% tcWebApi_set("dynDisp_Entry", "CurPage", "2")%>
var v_cfgRemote = '<% tcWebApi_get("dynDisp_Entry","CurMaskBit4","s") %>';
if ( v_cfgRemote == '1' )
{
	var item_idx = 1;
	<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %> 
	item_idx ++;
	<% end if %>
	if(isCZGDSupport == 'Yes')
		item_idx ++;
	ntwk.style.display = '';
	ntwk_cfgRemoteManage.style.display = '';
	ntwk_cfgRM01.innerHTML = item_idx + '.TR069<a name=TR069 id="TR069"></a>';
	ntwk_cfgRemoteManage_3.style.display = '';
	ntwk_cfgRM03.innerHTML = '&nbsp;(1).Operation';
	ntwk_cfgRemoteManage_4.style.display = '';
	ntwk_cfgRM04.innerHTML = '<ul><li><% if tcwebApi_get("WebCustom_Entry","isCTJOYME2Supported","h") = "Yes" then %>Broadband identification authentication<% else %>OLT certification and registration<% end if %></li></ul>';
}
ntwk_cfgQoS.style.display = "none";
ntwk_cfgQoS_1.style.display = "none";
ntwk_cfgSNTP.style.display = "none";
ntwk_cfgSNTP_1.style.display = "none";
ntwk_cfgSNTP_2.style.display = "none";
ntwk_cfgSNTP_3.style.display = "none";
ntwk_cfgSNTP_4.style.display = "none";
ntwk_cfgRoute.style.display = "none";
ntwk_cfgRoute_1.style.display = "none";
ntwk_cfgRoute_2.style.display = "none";
ntwk_cfgRoute_3.style.display = "none";
ntwk_cfgRoute_4.style.display = "none";
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYJXSupported","h") = "Yes" then %>
ntwk_dslimit.style.display = "none";
ntwk_dslimit_1.style.display = "none";
ntwk_dslimit_2.style.display = "none";
<% end if %>
securityURL.style.display = "";
securityFirewall.style.display = "";
getElement('securityFirewall_1').innerHTML ='Firewall:Firewall Level';
securityMAC.style.display = "";
securityPort.style.display = "none";
securityPort_1.style.display = "none";
securityPort_2.style.display = "none";
securityPort_3.style.display = "none";
securityPort_4.style.display = "none";
appDDNS.style.display = "none";
appDDNS_1.style.display = "none";
appDDNS_2.style.display = "none";
appDDNS_3.style.display = "none";
appDDNS_4.style.display = "none";
if(isCZGDSupport != 'Yes')
{
appAdnat.style.display = "none";
appAdnat_1.style.display = "none";
appAdnat_2.style.display = "none";
appAdnat_3.style.display = "none";
appAdnat_4.style.display = "none";
}
else
{
	appAdnat_2_alg.style.display = "none";
	appAdnat_2_alg_s.style.display = "none";
	appAdnat_2_dmz.style.display = "none";
	appAdnat_2_dmz_s.style.display = "none";
	appAdnat_4_alg.style.display = "none";
	appAdnat_4_dmz.style.display = "none";
}
appUPNP.style.display = "none";
appUPNP_1.style.display = "none";
appUPNP_2.style.display = "none";
appUPNP_3.style.display = "none";
appUPNP_4.style.display = "none";
appVoip.style.display = "none";
appVoip_1.style.display = "none";
appVoip_2.style.display = "none";
appVoip_3.style.display = "none";
appVoip_4.style.display = "none";
appIGMP.style.display = "none";
appIGMP_1.style.display = "none";
appIGMP_2.style.display = "none";
appIGMP_3.style.display = "none";
appIGMP_4.style.display = "none";
<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) <> "Yes" then %>
apptitle.style.display = "none";
appDaily.style.display = "none";
appDaily_1.style.display = "none";
appDaily_3.style.display = "none";
<% end if %>
appDaily_5.style.display = "none";
appDaily_6.style.display = "none";
manageUser.style.display = "";
manageUser_1.style.display = "none";
manageUser_2.style.display = "none";
manageUser_3.style.display = "none";
manageEquip_LOG.style.display = "none";
<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then %>
manageEquip_USB.style.display = "none";
<% end if %>
if(isCZGDSupport != 'Yes')
{
manageEquip_2.style.display = "none";
}
if(isCZGDSupport == 'Yes')
{
manageSyslog_1_1.style.display = "none";
manageSyslog_1_3.style.display = "none";	
}
else
{
manageSyslog.style.display = "none";
manageSyslog_1.style.display = "none";
}
netDiag.style.display = "none";
networkDiag.style.display = "none";
networkDiag_1.style.display = "none";
<% if TCWebApi_get("WebCustom_Entry","isCTJOYMESupported","h" ) = "Yes" then %>
serviceDiag.style.display = "none";
serviceDiag_1.style.display = "none";
<% end if %>
<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) <> "Yes" then %>
	getElement("secuiText").innerHTML="II Security";     
	<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) <> "Yes" then %>
		getElement("manText").innerHTML="III Maintenance";
	<%else%>
		getElement("appText").innerHTML="III Application";
		getElement("manText").innerHTML="IV Maintenance";
	<% end if %>
<% end if %>
}
}
}
</script>
</head>
<body onLoad="FormLoad()">
<form name=test>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id=tab name=tab>
<tr><td class="topHelpTitle" colspan="2">H&nbsp;E&nbsp;L&nbsp;P</td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td class="tabHelpdata" colspan=2 bgcolor=#CCCCCC>I Status<a name=Status></a></td></tr>
<tr name=statusEquip id=statusEquip >
<td width=20>&nbsp;</td>
<td class="tabdataleft">1.Device<a name="DeviceStatus"></a></td>
</tr>
<tr>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li>Display device model, device identification number, hardware version, software version, etc.</li>
</ul>
</td>
</tr>
<tr name=statusNetwork id=statusNetwork >
<td width=20>&nbsp;</td>
<td class="tabdataleft">2.WAN<a name=WANStatus id="WAN"></a></td>
</tr>
<tr>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li id=statusNetwork_1>Display connection information and PON information. Connection information shows the LAN status and IP address, subnet mask, default gateway, DNS server information or each PVC;PON information shows the link connection status of the PON, link performance statistics, and optical module information. </li>
</ul>
</td>
</tr>
<tr name=statusUser id=statusUser>
<td width=20>&nbsp;</td>
<td class="tabdataleft">3.LAN<a name=LANStatus id="LAN"></a></td>
</tr>
<tr>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li id=statusUser_1><% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>Display WLAN interface information, Ethernet interface information  The WLAN interface information shows the wireless network connection status, channel, statistical information of each SSID, SSID, authentication mode, and encryption status；Ethernet interface information shows the gateway IP address, MAC address, status of each LAN port, number of packets sent and received, and number of bytes.<% else %>Ethernet interface information shows the gateway IP address, MAC address, status of each LAN port, number of packets sent and received, and number of bytes.<% end if %></li>
</ul>
</td>
</tr>
<% if tcwebApi_get("WebCustom_Entry","isCTPONNOVOIP","h") <> "Yes" then %>
<tr name=statusVoip id=statusVoip>
<td width=20>&nbsp;</td>
<td class="tabdataleft">4.VoIP<a name=VoIPStatus id="VoIPStatus"></a></td>
</tr>
<tr>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li id=statusVoip_1>VoIP information including service registration status and phone number;Service status includes status such as registered and unregistered; phone number show registered phone number.</li>
</ul>
</td>
</tr>
<% end if %>
<tr name=statusACS id=statusACS>
<td width=20>&nbsp;</td>
<% if tcwebApi_get("WebCustom_Entry","isCTPONNOVOIP","h") = "Yes" then %>
<td class="tabdataleft">4.TR069<a name=TR069Status id="TR069Status"></a></td>
<% else %>
<td class="tabdataleft">5.TR069<a name=TR069Status id="TR069Status"></a></td>
<% end if %> 
</tr>
<tr>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li id=statusACS_1>The interaction establishment status and the service configuration delivery status are displayed. The interaction establishment includes the active reporting of the Inform and the acceptance of the ITMS connection request.</li>
</ul>
</td>
</tr>
<tr name=ntwk id=ntwk>
<td class="tabHelpdata" colspan=2 bgcolor=#CCCCCC>II Network<a name=Network></a></td>
</tr>
<tr name=ntwk_cfgWan id=ntwk_cfgWan>
<td>&nbsp;</td>
<td class="tabdataleft">1.WAN<a name=WANSet></a></td>
</tr>
<tr name=ntwk_cfgWan id=ntwk_cfgWan>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=ntwk_cfgWan id=ntwk_cfgWan>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Internet Connection</li>
</ul></td>
</tr>
<tr name=ntwk_cfgWan id=ntwk_cfgWan>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=ntwk_cfgWan id=ntwk_cfgWan>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>WAN:You can set relevant parameters for wan connection</li>
<ul>
<li>WAN Connection:click “NEW” to add a WAN connection;click "Delete" to delete this WAN connection.</li>
<li>Enable:enable this PVC</li>
<li id=ntwk_cfgWan_1>Enable Port Binding:Bind each LAN port, each SSID, to the corresponding WAN port.</li>
<li>Mode:it has two ways of Route and Bridge.There are three connection modes in Route mode.DHCP (IP address obtained from ISP),Static (provided by ISP),PPPoE.Bridge mode configures the device as a bridge device between the LAN and the ISP and it allows communication between two or more networks to be on the same physical LAN connection</li>
<li>link method:Including the establishment of links through IP and the establishment of links through PPP,Choose how to establish a link based on actual network needs。</li>
<li>IP protocol version:set the ip version used by the wan connection,IPv4 is generally selected while IPv6 is iptional.If IPv4/v6 selected,both IPv4 and IPv6 worked.</li>
<li>PPPoE:ISP will provide account，fill in the information as follows:username,password and service name,then configure the dialing mode.IP address will be obtained dynamically through PPPoE. </li>
<li>DHCP:The device will automatically obtain an IP from the ISP via DHCP.</li>
<li>Static:Configure a static IP address provided by the ISP.The information that needs to be input includes: IP address, subnet mask, preferred DNS server, and alternate DNS server,IP address must be entered in the correct format，IP address seperated by &quot;.&quot;(x.x.x.x)，e.g. 192.168.0.100。</li>
<li id=ntwk_cfgWan_2>Support 802.1q、802.1p、NAT、IGMP Proxy。</li>
<li id=ntwk_cfgWan_3>Service type:UBR Without PCR、UBR With PCR、CBR、Non-Real Time VBR、Realtime VBR。</li>
<li>Method to acquire IPv6 WAN information:You can obtain the IPv6 address dynamically through DHCP or SLAAC. You can also statically set the IPv6 address and set it according to the specific network conditions.</li>
</ul>
</ul></td>
</tr>
<tr name=ntwk_cfgBind id=ntwk_cfgBind>
<td>&nbsp;</td>
<td class="tabdataleft">2.Binding<a name=Binding id="Binding"></a></td>
</tr>
<tr name=ntwk_cfgBind_1 id=ntwk_cfgBind_1>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Binding settings can be used to set the binding mode of the user's LAN port and WAN port.Support port binding and 'port + VLAN' binding methods.If mode is set to port binding,then packets go to bingding wan interface from corresponding port.If mode is set to 'port + VLAN'binding,then only packets with specify vlan tag can go to binding wan interface from corresponding port.'port + vlan'binding is configured in the m1/n1 VLAN pair mode, where m1 represents the VLAN of LAN and n1 represents the VLAN of the WAN interface,multiple vlans are seperated by ';'.</li>
</ul></td>
</tr>
<tr name=ntwk_cfgDHCP id=ntwk_cfgDHCP>
<td>&nbsp;</td>
<script language="JavaScript" type="text/javascript">
if((curUserName == sysUserName) && (isCZGDSupport == 'Yes'))
document.write( '<td class="tabdataleft">1.LAN<a name=LAN id="LAN"></a></td>');
else
document.write( '<td class="tabdataleft">3.LAN<a name=LAN id="LAN"></a></td>');
</script>
</tr>
<tr name=ntwk_cfgDHCP_1 id=ntwk_cfgDHCP_1>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>IPv4 Configuration:&quot;enable DHCP&quot;in default。You can set DHCP related parameters including lease time(1 minute,1 hour, 1 day, 1 week),DHCP mode(DHCP Server or DHCP Relay)</li>
<li>IPv6 Configuration:You can configure whether to enable the RA service on the LAN so that the LAN side device can obtain the IPv6 address through the RA , and also set the LAN to obtain the IPv6 address through DHCP.</li>
</ul></td>
</tr>
<tr name=ntwk_cfgWLAN id=ntwk_cfgWLAN <% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) <> "Yes" then %>style="display:none"<% end if %>>
<td>&nbsp; </td>
<script language="JavaScript" type="text/javascript">
if (curUserName == sptUserName)
{
<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>
document.write( '<td class="tabdataleft" >4.WLAN<a name=WLAN id="WLAN"></a></td>');
<% end if %>
}
else if(curUserName == sysUserName)
{
<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>
if(isCZGDSupport == 'Yes')
document.write( '<td class="tabdataleft" >2.WLAN<a name=WLAN id="WLAN"></a></td>');
else
document.write( '<td class="tabdataleft" >1.WLAN<a name=WLAN id="WLAN"></a></td>');
<% end if %>
}
</script>
</tr>
<tr <% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) <> "Yes" then %>style="display:none"<% end if %>>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li id=ntwk_cfgWLAN_1>Wireless Enable:Enable or disable WLAN</li>
<li id=ntwk_cfgWLAN_2>Wireless Mode:choose <i><b>802.11b</b></i>,<i><b>802.11g</b></i>,<i><b>802.11n</b></i>,<i><b>802.11b/g mixed </b></i>or<i><b>802.11b/g/n mixed </b></i>mode</li>
<li id=ntwk_cfgWLAN_3>Wireless Channel:Select the appropriate channel from the list according to the network settings.To avoid signal interference,each <strong><em>AP</em></strong> should be assigned a different channel,it is recommended to use the automatic channel selection mode.</li>
<li id=ntwk_cfgWLAN_4>TX Power:set the tx power of wireless radio。 </li>
<li id=ntwk_cfgWLAN_5>SSID Index:set currently configured SSID Index</li>
<li id=ntwk_cfgWLAN_6>SSID: Set the SSID name.You can enter any character, the length can't exceed 32 characters, and it is case sensitive.</li>
<li id=ntwk_cfgWLAN_7>Rate: Select wireless working rate,The automatic rate automatically selects the appropriate maximum rate according to the channel environment.</li>
<li id=ntwk_cfgWLAN_8>Channel Bandwidth:Select the channel bandwidth of the wireless network in 802.11n mode</li>
<li id=ntwk_cfgWLAN_9>Guard Interval:Select the protection interval of the wireless network in 802.11n mode</li>
<li id=ntwk_cfgWLAN_10>SSID Enable:whether to use current SSID</li>
<li id=ntwk_cfgWLAN_11>Disable Broadcast SSID:If enabled, gateway would not broadcast SSID</li>
<li id=ntwk_cfgWLAN_12>Security Mode:Security parameters can be set for SSID,The gateway supports open system, WEP, WPA-PSK, WPA2-PSK, WPA-PSK/WPA2-PSK and other authentication methods and corresponding encryption methods.</li>
<li id=ntwk_cfgWLAN_13>WPA Pre-Shared Key:set the Pre-Shared Key。</li>
<li id=ntwk_cfgWLAN_14>WPA Encryption:select the encryption method。</li>
</ul></td>
</tr>
<tr name=ntwk_cfgRemoteManage id=ntwk_cfgRemoteManage>
<td>&nbsp;</td>
<td class="tabdataleft" name='ntwk_cfgRM01' id='ntwk_cfgRM01'><% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>5<% else %>4<% end if%>.TR069<a name=TR069 id="TR069"></a></td>
</tr>
<tr name=ntwk_cfgRemoteManage_1 id=ntwk_cfgRemoteManage_1>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=ntwk_cfgRemoteManage_2 id=ntwk_cfgRemoteManage_2>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>ITMS Server</li>
<li><% if tcwebApi_get("WebCustom_Entry","isCTJOYME2Supported","h") = "Yes" then %>Wan identification authentication<% else %>OLT Authentication<% end if %></li>
</ul></td>
</tr>
<tr name=ntwk_cfgRemoteManage_3 id=ntwk_cfgRemoteManage_3>
<td>&nbsp;</td>
<td class="tabdataleft" name='ntwk_cfgRM03' id='ntwk_cfgRM03'>&nbsp;(2).Operation</td>
</tr>
<tr name=ntwk_cfgRemoteManage_4 id=ntwk_cfgRemoteManage_4>
<td>&nbsp;</td>
<td class="tabdataleft" name='ntwk_cfgRM04' id='ntwk_cfgRM04'><ul>
<li>You can set the parameters as follows:the URL or IP address of the ITMS server, the username and password of the ITMS authentication gateway, and the username and password of the gateway authentication ITMS.You can also configure whether the gateway sends periodic reports and the period of the reported packets. In addition, you can enable or disable certificate authentication.</li>
<li><% if tcwebApi_get("WebCustom_Entry","isCTJOYME2Supported","h") = "Yes" then %>Broadband identification authentication<% else %>OLT certification and registration<% end if %></li>
</ul></td>
</tr>
<tr name=ntwk_cfgQoS id=ntwk_cfgQoS>
<td>&nbsp;</td>
<td class="tabdataleft"><% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>6<% else %>5<% end if%>.QoS<a name=QoS id="QoS"></a></td>
</tr>
<tr name=ntwk_cfgQoS_1 id=ntwk_cfgQoS_1>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>QoS Settings(only admin):The configuration template related to the service can be preset after restoring default settings, please configure it based on the template according to the specific service you used.</li>
</ul></td>
</tr>
<tr name=ntwk_cfgSNTP id=ntwk_cfgSNTP>
<td>&nbsp;</td>
<td class="tabdataleft"><% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>7<% else %>6<% end if%>.SNTP<a name=SNTP id="SNTP"></a></td>
</tr>
<tr name=ntwk_cfgSNTP_1 id=ntwk_cfgSNTP_1>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=ntwk_cfgSNTP_2 id=ntwk_cfgSNTP_2>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>enable or disable</li>
</ul></td>
</tr>
<tr name=ntwk_cfgSNTP_3 id=ntwk_cfgSNTP_3>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=ntwk_cfgSNTP_4 id=ntwk_cfgSNTP_4>
<td>&nbsp;</td>
<td class="tabdataleft"><ul><li>SNTP （Network time protocol） </li>
<ul>
<li>SNTP Settings:&quot;<strong>disable SNTP</strong>&quot;in default。Enable SNTP and set the parameters related to SNTP.</li>
<li>The server can set the domain name or the IP address.If you want to select an SNTP server other than the list box, select "Other" in the list box, and enter the domain name or IP address of the SNTP server later. </li>
<li>You can select the time zone or your location in the time zone list box</li>
</ul>
</ul></td>
</tr>
<tr name=ntwk_cfgRoute id=ntwk_cfgRoute>
<td>&nbsp;</td>
<td class="tabdataleft"><% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>8<% else %>7<% end if%>.Routing<a name="Routing" id="Routing"></a></td>
</tr>
<tr name=ntwk_cfgRoute_1 id=ntwk_cfgRoute_1>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=ntwk_cfgRoute_2 id=ntwk_cfgRoute_2>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Static Route</li>
</ul></td>
</tr>
<tr name=ntwk_cfgRoute_3 id=ntwk_cfgRoute_3>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operaetion</td>
</tr>
<tr name=ntwk_cfgRoute_4 id=ntwk_cfgRoute_4>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Static Route:Set the destination network address, subnet mask, gateway address, and interface. At least one of the gateway address and interface is selected.</li>
</ul></td>
</tr>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYJXSupported","h") = "Yes" then %>
<tr name=ntwk_dslimit id=ntwk_dslimit>
<td>&nbsp;</td>
<td class="tabdataleft"><% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then %>9<% else %>8<% end if%>.QoS<a name='QoS' id='QoS'></a></td>
</tr>
<tr name=ntwk_dslimit_1 id=ntwk_dslimit_1>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Supports uplink data rate limiting mode and downlink data rate limiting mode</td>
</tr>
<tr name=ntwk_dslimit_2 id=ntwk_dslimit_2>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Supports speed limit based on user port and user IP address</td>
</tr>
<% end if %>
<tr>
<td class="tabHelpdata" colspan=2 bgcolor=#CCCCCC id="secuiText">III Security<a name=安全></a></td>
</tr>
<tr name=securityURL id=securityURL>
<td>&nbsp;</td>
<td class="tabdataleft">1.URL Filter<a name="URLFilter" id="URLFilter"></a></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>enable or disasble</li>
<li>current filter mode</li>
</ul></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Configuration</li>
<ul>
<li>Enable URL Filter:enable or disable URL filter，“<strong>disable</strong> in default”. </li>
<li>Filter Mode:“<b>Black list</b> or “<b>White list</b>；click “Apply” to modify current filter mode</li>
<li>URL:input a correct URL and it will be added to filter list</li>
</ul>
<li>filter list:show filtered URL list</li>
<li>When the current filter list is blacklist, the URL request in the filter list will be filtered; when the current filter list is whitelist, only the URL request in the filter list is accepted.</li>
</ul></td>
</tr>
<tr name=securityFirewall id=securityFirewall>
<td>&nbsp;</td>
<td class="tabdataleft">2.Firewall<a name=Firewall></a></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li id=securityFirewall_1>Firewall:Firewall Level</li>
</ul></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operations</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Firewall Level:you can set firewall level to "<b>high</b>"，"<b>medium</b>"or"<b>low</b>".</li>
</ul></td>
</tr>
<tr name=securityMAC id=securityMAC>
<td>&nbsp;</td>
<td class="tabdataleft">3.MAC Filter<a name=MACFilter></a></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>enable or disable</li>
<li>Current filtering mode</li>
</ul></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Configuration</li>
<ul>
<li>Enable Mac Filter:Enable or disable MAC filter,“<strong>disable</strong>” in default.</li>
<li>Filtering Mode:“<b>Black list”</b>or“<b>White list”</b>:current filter mode will be modified.</li>
<li>MAC address:input a correct MAC address and it will be added to filter list</li>
</ul>
<li>Filtering list:show filtered MAC address</li>
<li>When the current filtering list is blacklisted, the PC with the MAC address in the filtering list cannot access the Internet. When the current filtering mode is whitelist, the PC with the MAC address in the filtering list can access the Internet. The PC on the LAN side can access the gateway in spite of the filter mode.</li>
</ul></td>
</tr>
<tr name=securityPort id=securityPort>
<td>&nbsp;</td>
<td class="tabdataleft">4.Port Filter<a name="PortFilter"></a></td>
</tr>
<tr name=securityPort_1 id=securityPort_1>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=securityPort_2 id=securityPort_2>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>enable or disable</li>
<li>current filter mode</li>
</ul></td>
</tr>
<tr name=securityPort_3 id=securityPort_3>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=securityPort_4 id=securityPort_4>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Configuration</li>
<ul>
<li>Enable Port Filter:Enable or disable Port filter,“<strong>disable</strong>” in default.</li>
<li>Filter Mode“<b>Black list</b>or“<b>White list</b>:current filter mode will be modified.</li>
<li>“Add”:add a filter rule to filter list；“Del”:del one ore more selected filter rule</li>
</ul>
<li>Filter list:Display current rule filter list</li>
<li>When the current filtering mode is blacklist, packets that match any rule in the filtering list cannot pass through the gateway. When the current filtering mode is whitelist, packets that meet the rules in the filtering list can pass through the gateway; The PC on the LAN side can access the gateway in spite of the filter mode.</li>
<li>Filter rules can set "filter name"，and also you can set the protocol, source IP start address, source IP end address, source port, destination IP start address, destination IP end address, and destination port as filter conditions.</li>
</ul></td>
</tr>
<tr id="apptitle">
<td class="tabHelpdata" colspan=2 bgcolor=#CCCCCC id="appText">IV Application<a name=Application></a></td>
</tr>
<tr name=appDDNS id=appDDNS>
<td width=20>&nbsp;</td>
<td class="tabdataleft">1.DDNS<a name=DDNS id="DDNS"></a></td>
</tr>
<tr name=appDDNS_1 id=appDDNS_1>
<td width=20>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=appDDNS_2 id=appDDNS_2>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li>DDNS</li>
<ul>
<li>DDNS Settings</li>
</ul>
</ul>	 		</td>
</tr>
<tr name=appDDNS_3 id=appDDNS_3>
<td width=20>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=appDDNS_4 id=appDDNS_4>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li>switch:enable or disable DDNS and the new status will be displayed in UI</li>
<li>DDNS settings:set DDNS related parameters and the new status will be displayed in UI</li>
</ul>	 	</td>
</tr>
<tr name=appAdnat id=appAdnat>
<td width=20>&nbsp;</td>
<script language="JavaScript" type="text/javascript">
if((curUserName == sysUserName) && (isCZGDSupport == 'Yes'))
document.write( '<td class="tabdataleft">1.Advanced NAT<a name="AdvancedNAT" id="AdvancedNAT"></a></td>');
else
document.write( '<td class="tabdataleft">2.Advanced NAT<a name="AdvancedNAT" id="AdvancedNAT"></a></td>');
</script>
</tr>
<tr name=appAdnat_1 id=appAdnat_1>
<td width=20>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=appAdnat_2 id=appAdnat_2>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li id='appAdnat_2_alg'>ALG</li>
<ul id='appAdnat_2_alg_s'>
<li>L2TP ALG Status</li>
<li>IPSec ALG Status</li>
<li>H.323 ALG Status</li>
<li>RTSP ALG Status</li>
<li>SIP ALG Status</li>
<li>FTP ALG Status</li>
<li>PPTP ALG Status</li>
</ul>
<li id='appAdnat_2_dmz'>DMZ</li>
<ul type="circle" id='appAdnat_2_dmz_s'>
<li>Status of DMZ settings</li>
</ul>
<%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then%>
<li>Virtual Server Settings</li>
<ul type="circle">
<li>Status of Virtual Server Settings</li>
</ul>
<% end if %>
</ul>	 	</td>
</tr>
<tr name=appAdnat_3 id=appAdnat_3>
<td width=20>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=appAdnat_4 id=appAdnat_4>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li id='appAdnat_4_alg'>ALG switch:enable or disable each ALG and the new status or each ALG will be displayed in UI</li>
<li id='appAdnat_4_dmz'>DMZ settings:set DMZ related parameters and the new status or DMZ will be displayed in UI</li>
<%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then%>
<li>Virtual Server Settings:It allows remote computers (for example, computers on the Internet) to connect to a specific computer or service within a private local-area network (LAN)</li>
<% end if %>
</ul>	 	</td>
</tr>
<tr name=appUPNP id=appUPNP>
<td width=20>&nbsp;</td>
<td class="tabdataleft">3.UPNP<a name="UPNP" id="UPNP"></a></td>
</tr>
<tr name=appUPNP_1 id=appUPNP_1>
<td width=20>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=appUPNP_2 id=appUPNP_2>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li>Display whether UPnP is enabled</li>
</ul>	 	</td>
</tr>
<tr name=appUPNP_3 id=appUPNP_3>
<td width=20>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=appUPNP_4 id=appUPNP_4>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li>enable or disable UPNP</li>
</ul>	 	</td>
</tr>
<% if tcwebApi_get("WebCustom_Entry","isCTPONNOVOIP","h") <> "Yes" then %>
<tr name=appVoip id=appVoip>
<td width=20>&nbsp;</td>
<td class="tabdataleft">4.VoIP<a name=VoIP id="VoIP"></a></td>
</tr>
<tr name=appVoip_1 id=appVoip_1>
<td width=20>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=appVoip_2 id=appVoip_2>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li>VoIP Basic</li>
<li>VoIP Advanced</li>
</ul>	 	</td>
</tr>
<tr name=appVoip_3 id=appVoip_3>
<td width=20>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=appVoip_4 id=appVoip_4>
<td width=20>&nbsp;</td>
<td class="tabdataleft">
<ul>
<li>Modify SIP Parameters:Click "Apply" button to save the configuration parameters。 </li>
<li>Outbound Server Address;The address of the outbound server provided by the ISP. If it is empty or 0.0.0.0, the outbound server will not be enabled.</li>
<li>Outbound Server Port:The UDP port of the SIP outbound server. If it is set to null or 0, the default value of 5060 will be used.</li>
<li>Secondary Outbound Server Address:The address of the secondary outbound server provided by the ISP. If it is empty or 0.0.0.0, the secondary outbound server will not be enabled.</li>
<li>Secondary Outbound Server Port:The UDP port of the SIP secondary outbound server, if set to null or 0, will use the default value of 5060.</li>
<li>Main server address:The address of the SIP server provided by the ISP. If it is empty or 0.0.0.0, the SIP proxy server will not be enabled.</li>
<li>Server Port：The UDP port of the SIP proxy server, if set to null or 0, will use the default value of 5060.</li>
<li>Secondary Server Address:The address of the SIP Secondary server provided by the ISP. If it is empty or 0.0.0.0, the SIP secondary server will not be enabled.</li>
<li>Secondary Server Port:The UDP port of the SIP standby proxy server, if set to null or 0, will use the default value of 5060.</li>
<li>Local Port: The UDP port number of the local SIP. The default is 5060.</li>
<li>Digitmap:Dial plan for voice service</li>
<li>Digit Map Match Mode:Contains maximum and minimum matches.</li>
<li>Country and region:Indicate the country and region of the current voice service.</li>
<li>Signaling port:Indicates the network port selected in the call signaling.</li>
<li>Media port:Indicates the network port selected in the calling media.</li>
</ul>	 	</td>
</tr>
<% end if %>

<tr name=appIGMP id=appIGMP>
<td>&nbsp;</td>
<% if tcwebApi_get("WebCustom_Entry","isCTPONNOVOIP","h") = "Yes" then %>
<td class="tabdataleft">
<% if tcwebApi_get("WebCustom_Entry","isIPv6Supported","h") ="Yes" then %>
	4.IGMP/MLD
<% else %>
	4.IGMP
<% end if %>
	<a name="IGMP" id="IGMP"></a></td>
<% else %>
<td class="tabdataleft">
<% if tcwebApi_get("WebCustom_Entry","isIPv6Supported","h") ="Yes" then %>
	5.IGMP/MLD
<% else %>
	5.IGMP
<% end if %>
	<a name="IGMP" id="IGMP"></a></td>
<% end if %> 
</tr>
<tr name=appIGMP_1 id=appIGMP_1>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=appIGMP_2 id=appIGMP_2>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<% if tcwebApi_get("WebCustom_Entry","isIPv6Supported","h") ="Yes" then %>
<li>IGMP/MLD Snooping Status</li>
<li>IGMP/MLD Proxy Status</li>
<% else %>
<li>IGMP Snooping Status</li>
<li>IGMP Proxy Status</li>
<% end if %>
</ul></td>
</tr>
<tr name=appIGMP_3 id=appIGMP_3>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=appIGMP_4 id=appIGMP_4>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<% if tcwebApi_get("WebCustom_Entry","isIPv6Supported","h") ="Yes" then %>
<li>IGMP/MLD Snooping setting:enable or disable IGMP/MLD Snooping and new status of IGMP/MLD Snooping will be show in UI</li>
<li>IGMP/MLD Proxy enable setting:enable or disable IGMP/MLD Proxy.</li>
<li>IGMP/MLD Proxy settings:enable or disable IGMP/MLD Proxy of each WAN connection.</li>
<% else %>
<li>IGMP Snooping setting:enable or disable IGMP Snooping and new status of IGMP/MLD Snooping will be show in UI</li>
<li>IGMP Proxy enable setting:enable or disable IGMP Proxy Proxy.</li>
<li>IGMP Proxy settings:enable or disable IGMP Proxy of each WAN connection.</li>
<% end if %>
</ul></td>
</tr>
<tr name=appDaily id=appDaily>
<td>&nbsp;</td>
<script language="JavaScript" type="text/javascript">
if (curUserName == sptUserName)
{
<% if tcwebApi_get("WebCustom_Entry","isCTPONNOVOIP","h") = "Yes" then %>
document.write( '<td class="tabdataleft" >5.Daily Application<a name="DailyApplication" id="DailyApplication"></a></td>');
<% else %>
document.write( '<td class="tabdataleft" >6.Daily Application<a name="DailyApplication" id="DailyApplication"></a></td>');
<% end if %> 
}
else if(curUserName == sysUserName)
{
if(isCZGDSupport == 'Yes')
document.write( '<td class="tabdataleft" >2.Daily Application<a name="DailyApplication" id="DailyApplication"></a></td>');
else
document.write( '<td class="tabdataleft" >1.Daily Application<a name="DailyApplication" id="DailyApplication"></a></td>');
}
</script>
</tr>
<tr name=appDaily_1 id=appDaily_1>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(1).Status</td>
</tr>
<tr name=appDaily_2 id=appDaily_2>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then %>
<li>FTP client configuration</li>
<% end if %>
<li id=appDaily_5>IPTV</li>
</ul></td>
</tr>
<tr name=appDaily_3 id=appDaily_3>
<td>&nbsp;</td>
<td class="tabdataleft">&nbsp;(2).Operation</td>
</tr>
<tr name=appDaily_4 id=appDaily_4>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then %>
<li>Through FTP client,users can access files stored in USB from lan or wan.It is allowed to download files to USB storage which connected to gatway in addtion.</li>
<% end if %>
<li id=appDaily_6>you can set IGMP VLAN of the specified wan interface</li>
</ul></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"></td>
</tr>
<tr>
<script language="JavaScript" type="text/JavaScript">
if (curUserName == sysUserName)
	document.write('<td id=manText class="tabHelpdata" colspan=2 bgcolor=#CCCCCC>V Maintenance<a name=Maintenance></a></td>');
else
	document.write('<td id=manText class="tabHelpdata" colspan=2 bgcolor=#CCCCCC>V Maintenance<a name=Maintenance></a></td>');
</script>
</tr>
<tr name=manageUser id=manageUser>
<td>&nbsp;</td>
<td class="tabdataleft">1.Account<a name=Account></a></td>
</tr>
<tr name=manageUser_1 id=manageUser_1>
<td>&nbsp;</td>
<td class="tabdataleft" >&nbsp;(1)admin</td>
</tr>
<tr name=manageUser_2 id=manageUser_2>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Administrator password configuration:As admin log in,you can modify useradmin password without verifying the old one</li>
</ul></td>
</tr>
<tr name=manageUser_3 id=manageUser_3>
<td>&nbsp;</td>
      <td class="tabdataleft">&nbsp;(2)useradmin</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
          <li>Useradmin password configuration:As useradmin log in,you can modify useradmin password after verifying the old one</li>
        </ul></td>
</tr>
<tr name=manageEquip id=manageEquip>
<td width=20>&nbsp;</td>
<td class="tabdataleft">2.Device<a name=Device id="Device"></a></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Device Rebooting:reboot the device</li>
<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then %>
<li id=manageEquip_USB>Back up the configuration file with USB:If any USB storage connected to gateway,you can click "Backup" to bakcup current configuration file to the USB device.The USB auto recovery which restore configuration file can be enabled to import existing configuration file to gateway.</li>
<% end if %>
<li id=manageEquip_LOG style="display:none">clear log file:clear all the log file</li>
<li id=manageEquip_2>Restore Default Settings:restore device settings to the default one</li>
</ul></td>
</tr>
<tr name=manageSyslog id=manageSyslog>
<td>&nbsp;</td>
<td class="tabdataleft">3.Log File<a name="LogFile" id="LogFile"></a></td>
</tr>
<tr name=manageSyslog_1 id=manageSyslog_1>
<td>&nbsp;</td>
<td class="tabdataleft"><ul><li id="manageSyslog_1_1">Log Level:enable or disable log file.You can set log level and display level if enabled.</li>
<li id="manageSyslog_1_2">Log:display log file content at the current log level</li>
<li id="manageSyslog_1_3">Maintain:When admin log in,push this button to inform ITMS updating admin passwd</li>
</ul></td>
</tr>
<tr name=netDiag id=netDiag>
<td id=diagText class="tabHelpdata" colspan=2 bgcolor=#CCCCCC>VI Diagnosis<a name=Diagnosis></a></td>
</tr>
<tr name=networkDiag id=networkDiag>
<td width=20>&nbsp;</td>
<td class="tabdataleft">1.Network Diagnosis<a name="NetworkDiagnosis" id="NetworkDiagnosis"></a></td>
</tr>
<tr name=networkDiag_1 id=networkDiag_1>
<td width=20>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>Ping Test:ping in specified wan connection and destionation address support both IP address and domain.</li>
<li>Tracert Test:tracert in specified wan connection and destionation address support both IP address and domain.</li>
<li>Inform Test:manually inform and display manually informing status correctly.</li>
</ul>	 	</td>
</tr>
<% if tcwebApi_get("WebCustom_Entry","isCTJOYMESupported","h") = "Yes" then %>
<tr name=serviceDiag id=serviceDiag>
<td width=20>&nbsp;</td>
<td class="tabdataleft">2.Business diagnosis<a name="Business diagnosis" id="Business diagnosis"></a></td>
</tr>
<tr name=serviceDiag_1 id=serviceDiag_1>
<td width=20>&nbsp;</td>
<td class="tabdataleft"><ul>
<li>External line voltage test:do external line voltage test and show result</li>
<li>Ringing impedance test:do ringing impedance test and show result</li>
<li>Simulated dialing test:enter specified test phone number and show line status and test result</li>
</ul>	 	</td>
</tr>
<% end if %>
</table>




</form>
</body>
</html>
