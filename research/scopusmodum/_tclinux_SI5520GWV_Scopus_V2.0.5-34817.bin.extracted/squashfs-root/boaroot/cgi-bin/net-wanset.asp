<%
if Request_Form("Wan_Flag") = "1" then

	TCWebApi_unset("WanInfo_WanIF")
	TCWebApi_set("WanInfo_WanPVC","Action","OperatorStyle")
	if Request_Form("VLANMode") = "TAG" then
			TCWebApi_set("WanInfo_WanPVC", "VLANID", "vlan")
			TCWebApi_set("WanInfo_WanPVC", "DOT1P", "v8021P")
	elseif Request_Form("VLANMode") = "UNTAG" then
			TCWebApi_set("WanInfo_WanPVC", "VLANID", "vlanUNTAG")
			TCWebApi_set("WanInfo_WanPVC", "DOT1P", "vlanPriNone")
	elseif Request_Form("VLANMode") = "TRANSPARENT" then
			TCWebApi_set("WanInfo_WanPVC", "VLANID", "vlanTRANSPARENT")
			TCWebApi_set("WanInfo_WanPVC", "DOT1P", "vlanPriNone")
	end if
	TCWebApi_set("WanInfo_WanPVC","VLANMode","VLANMode")
	TCWebApi_set("WanInfo_WanPVC","ENCAP","EnCAPFlag")
	TCWebApi_set("WanInfo_WanIF","Active","WanActive")
	TCWebApi_set("WanInfo_WanIF","ServiceList","serviceList")
	TCWebApi_set("WanInfo_WanIF","BandActive","bindflag")
	TCWebApi_set("WanInfo_WanIF","LAN1","bindlan1")
	if TCWebApi_get("WebCustom_Entry","isCT1PORTSupported","h" ) <> "Yes" then
	TCWebApi_set("WanInfo_WanIF","LAN2","bindlan2")
	end if
	if TCWebApi_get("WebCustom_Entry","isCT2PORTSSupported","h" ) <> "Yes" then
	TCWebApi_set("WanInfo_WanIF","LAN3","bindlan3")
	    if TCWebApi_get("WebCustom_Entry","is3PORTSSupported","h" ) <> "Yes" then
	    TCWebApi_set("WanInfo_WanIF","LAN4","bindlan4")
        end if
	end if
	if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) = "Yes" then
	TCWebApi_set("WanInfo_WanIF","SSID1","bindwireless1")
	TCWebApi_set("WanInfo_WanIF","SSID2","bindwireless2")
	TCWebApi_set("WanInfo_WanIF","SSID3","bindwireless3")
	TCWebApi_set("WanInfo_WanIF","SSID4","bindwireless4")
	end if
	if TCWebApi_get("WebCustom_Entry","isWLanACSupported","h" ) = "Yes" then
	TCWebApi_set("WanInfo_WanIF","SSIDAC1","bindwirelessac1")
	TCWebApi_set("WanInfo_WanIF","SSIDAC2","bindwirelessac2")
	TCWebApi_set("WanInfo_WanIF","SSIDAC3","bindwirelessac3")
	TCWebApi_set("WanInfo_WanIF","SSIDAC4","bindwirelessac4")
	end if
	TCWebApi_set("WanInfo_WanIF","WanMode","wanMode")
	TCWebApi_set("WanInfo_WanIF","LinkMode","linkMode")
	if Request_Form("wanMode") = "Route" then
		TCWebApi_set("WanInfo_WanIF","MTU","MTU")
		if Request_Form("linkMode") = "linkPPP" then
			TCWebApi_set("WanInfo_WanIF","PPPGETIP","PPPGetIpFlag")
			TCWebApi_set("WanInfo_WanIF","CONNECTION","ConnectionFlag")
			TCWebApi_set("WanInfo_WanIF","USERNAME","pppUserName")
			TCWebApi_set("WanInfo_WanIF","PASSWORD","pppPassword")
			if tcWebApi_get("WebCustom_Entry", "isPPPServerNameSupported", "h") = "Yes"  then
			TCWebApi_set("WanInfo_WanIF","SRVNAME","pppServerName")
            end if
			TCWebApi_set("WanInfo_WanIF","PPPManualStatus","pppManualStatus_Flag")
			if tcWebApi_get("WebCustom_Entry", "isPPPoEOnDemandWEBUISupported", "h") = "Yes"  then
				tcWebApi_set("WanInfo_WanIF","CONNECTION","ppp_DialMethod")
				if Request_Form("ppp_DialMethod") = "Connect_on_Demand" then
					tcWebApi_set("WanInfo_WanIF","CLOSEIFIDLE","pppondemand_idletime")
				end if
			end if
		end if
	elseif Request_Form("wanMode") = "Bridge" then
			TCWebApi_set("WanInfo_WanIF","BridgeMode","bridgeMode")
			TCWebApi_set("WanInfo_WanIF","DHCPRealy","dhcprelay")
	end if
	
	TCWebApi_set("WanInfo_WanIF","IPVERSION","IPVersionValue")
	TCWebApi_set("WanInfo_WanIF","ISP","ISPTypeValue")
	
	TCWebApi_set("WanInfo_WanIF","VLANMode","VLANMode")
	TCWebApi_set("WanInfo_WanIF","dot1q","vlanId")
	if Request_Form("vlanId") = "Yes" then
		TCWebApi_set("WanInfo_WanIF","VLANID","vlan")
	end if
	TCWebApi_set("WanInfo_WanIF","dot1p","vlanPri")
	if Request_Form("vlanPri") = "Yes" then
		TCWebApi_set("WanInfo_WanIF","dot1pData","v8021P")
	end if
	if Request_Form("MulVIDUsed") = "Yes" then
		TCWebApi_set("WanInfo_WanIF","MulticastVID","MulticastVID")
	end if

	TCWebApi_set("WanInfo_WanIF","NATENABLE","nat")
	TCWebApi_set("WanInfo_WanIF","IGMPproxy","enblIgmp")
	
	if Request_Form("IPVersionValue") <> "IPv6" then
		if Request_Form("linkMode") = "linkIP" then
			if Request_Form("IpMode") = "Static" then
				TCWebApi_set("WanInfo_WanIF","IPADDR","wanIpAddress")
				TCWebApi_set("WanInfo_WanIF","NETMASK","wanSubnetMask")
				TCWebApi_set("WanInfo_WanIF","GATEWAY","defaultGateway")
				TCWebApi_set("WanInfo_WanIF","DNS","dnsPrimary")
				TCWebApi_set("WanInfo_WanIF","SecDNS","dnsSecondary")
			end if
		end if
	end if

	if Request_Form("IPVersionValue") <> "IPv4" then
			TCWebApi_set("WanInfo_WanIF","DHCPv6","pppv6Mode")
			TCWebApi_set("WanInfo_WanIF","GW6_Manual","Disable_Flag")
		if Request_Form("IdIpv6AddrType") = "Static" then
			TCWebApi_set("WanInfo_WanIF","IPADDR6","IdIpv6Addr")
			TCWebApi_set("WanInfo_WanIF","GATEWAY6","IdIpv6Gateway")
			if Request_Form("IdIpv6Gateway") <> "" then
				TCWebApi_set("WanInfo_WanIF","GW6_Manual","Enable_Flag")
			end if
			TCWebApi_set("WanInfo_WanIF","PREFIX6","IdIpv6PrefixLen")
			TCWebApi_set("WanInfo_WanIF","DNS6","IdIpv6Dns1")
			TCWebApi_set("WanInfo_WanIF","SecDNS6","IdIpv6Dns2")
		elseif Request_Form("IdIpv6AddrType") = "DHCP" then
			TCWebApi_set("WanInfo_WanIF","GATEWAY6","IdIpv6Gateway")
			if Request_Form("IdIpv6Gateway") <> "" then
				TCWebApi_set("WanInfo_WanIF","GW6_Manual","Enable_Flag")
			end if
		end if
	end if
	
	TCWebApi_set("WanInfo_WanIF","IFIdx","WanCurrIFIdx")
	if Request_Form("OperatorStyle") = "Add" then
		TCWebApi_set("Wan_Common","LatestIFIdx","WanCurrIFIdx")
		TCWebApi_set("WanInfo_WanPVC", "EPONEnable", "xponstate")
		TCWebApi_set("WanInfo_WanPVC", "GPONEnable", "xponstate")
	end if

	if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then
		if Request_Form("dsliteUsed") = "Yes" then
			TCWebApi_set("WanInfo_WanIF","DsliteEnable","enabledslite")
			TCWebApi_set("WanInfo_WanIF","DsliteMode","dslitemode")
			if Request_Form("dslitemode") = "1" then
					TCWebApi_set("WanInfo_WanIF","DsliteAddr","dsliteaddress")
			end if
		else
			TCWebApi_set("WanInfo_WanIF","DsliteEnable","dsliteDisabled")
		end if
	end if

	if Request_Form("PDUsed") = "Yes" then
		TCWebApi_set("WanInfo_WanIF","PDEnable","enablepd")
	else
		TCWebApi_set("WanInfo_WanIF","PDEnable","PDDisabled")
	end if

	if Request_Form("pdmodeUsed") = "Yes" then
		TCWebApi_set("WanInfo_WanIF", "DHCPv6PD", "pdmode")
		if Request_Form("pdmode") = "No" then
			TCWebApi_set("WanInfo_WanIF", "PDOrigin", "pdmodeStatic")			
			TCWebApi_set("WanInfo_WanIF", "PDPrefix", "pdprefix")
			TCWebApi_set("WanInfo_WanIF", "PrefixPltime", "pdprefixptime")
			TCWebApi_set("WanInfo_WanIF", "PrefixVltime", "pdprefixvtime")
		else
			TCWebApi_set("WanInfo_WanIF", "PDOrigin", "pdmodeAuto")
		end if
	else
		TCWebApi_set("WanInfo_WanIF", "DHCPv6PD", "pdmodeDisabled")
		TCWebApi_set("WanInfo_WanIF", "PDOrigin", "pdmodeNone")
	end if
	
	if tcwebApi_get("WebCustom_Entry","isCTDHCPPortFilterSupported","h" ) = "Yes" then
		TCWebApi_set("WanInfo_WanIF", "DHCPEnable", "enable_dhcp")
	end if
	
	if tcWebApi_get("WebCustom_Entry","isCTPONC9Supported","h" ) = "Yes" then
		tcWebApi_set("WanInfo_WanIF", "WanHWAddr", "wanhwaddress")
	end if

	if tcWebApi_get("WebCustom_Entry","isPPPoEProxySupported","h" ) = "Yes" then
		tcWebApi_set("WanInfo_WanIF","ProxyEnable","pppproxyDisabled")
		tcWebApi_set("WanInfo_WanIF","ProxyMaxUser","pppproxy_user_zero")
		tcWebApi_set("WanInfo_WanIF","BridgeInterface","pppbiDisabled")
		if Request_Form("ppp_proxy_biUsed") = "Yes" then
			tcWebApi_set("WanInfo_WanIF","pppProxyBiMode","ppp_proxy_bi_mode")
			if Request_Form("ppp_proxy_bi_mode") = "1" then
				tcWebApi_set("WanInfo_WanIF","ProxyEnable","pppproxyEnabled")
				tcWebApi_set("WanInfo_WanIF","ProxyMaxUser","pppproxy_user")
			elseif Request_Form("ppp_proxy_bi_mode") = "2" then
				tcWebApi_set("WanInfo_WanIF","BridgeInterface","pppbiEnabled")
			end if
		else
			tcWebApi_set("WanInfo_WanIF","pppProxyBiMode","ppp_proxy_bi_disable")
		end if
	else		
		if Request_Form("pppbiUsed") = "Yes" then
			TCWebApi_set("WanInfo_WanIF","BridgeInterface","enablepppbi")
		else
			TCWebApi_set("WanInfo_WanIF","BridgeInterface","pppbiDisabled")
		end if
	end if
	
	if Request_Form("OperatorStyle") <> "Add" then
		tcWebApi_set("WanInfo_WanIF","Option60Enable1","Option60Enable1")
		tcWebApi_set("WanInfo_WanIF","Option60Enable2","Option60Enable2")
		tcWebApi_set("WanInfo_WanIF","Option60Enable3","Option60Enable3")
		tcWebApi_set("WanInfo_WanIF","Option60Enable4","Option60Enable4")

		tcWebApi_set("WanInfo_WanIF","Option60Type1","Option60Type1")
		tcWebApi_set("WanInfo_WanIF","Option60Type2","Option60Type2")
		tcWebApi_set("WanInfo_WanIF","Option60Type3","Option60Type3")
		tcWebApi_set("WanInfo_WanIF","Option60Type4","Option60Type4")

		tcWebApi_set("WanInfo_WanIF","Option60ValueMode1","Option60ValueMode1")
		tcWebApi_set("WanInfo_WanIF","Option60ValueMode2","Option60ValueMode2")
		tcWebApi_set("WanInfo_WanIF","Option60ValueMode3","Option60ValueMode3")
		tcWebApi_set("WanInfo_WanIF","Option60ValueMode4","Option60ValueMode4")

		tcWebApi_set("WanInfo_WanIF","Option60Value1","Option60Value1")
		tcWebApi_set("WanInfo_WanIF","Option60Value2","Option60Value2")
		tcWebApi_set("WanInfo_WanIF","Option60Value3","Option60Value3")
		tcWebApi_set("WanInfo_WanIF","Option60Value4","Option60Value4")
	end if

	TCWebApi_commit("WanInfo_WanPVC")
	TCWebApi_save()
elseif Request_Form("Wan_Flag") = "2" then
	 TCWebApi_set("WanInfo_Common","CurIFIndex","curSetIndex")
	 TCWebApi_commit("WanInfo_Common")
elseif Request_Form("Wan_Flag") = "3" then
	 TCWebApi_set("WanInfo_WanPVC","Action","OperatorStyle")
	 TCWebApi_set("WanInfo_Common","CurIFIndex","curSetIndex")
	 TCWebApi_commit("WanInfo_WanPVC")
	 TCWebApi_set("WanInfo_Common","CurIFIndex","afterdeleteFlag")
	 TCWebApi_save()
elseif Request_Form("Wan_Flag") = "4" then
	 TCWebApi_set("WanInfo_WanIF","PPPManualStatus","pppManualStatus_Flag")
	 TCWebApi_commit("WanInfo_WanIF")
	 TCWebApi_save()
else
	 TCWebApi_set("WanInfo_Common","ErrCode","Wan_Flag")
end if
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>WAN Setting</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>

<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
<style type='text/css'>
.cus_help {
	width:150px;	
}
</style>
<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000 
leftMargin=0 topMargin=0 
onload="DisplayLocation(getElement('Selected_Menu').value);FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" 
onunload=DoUnload() marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width=1008 align=center 
border=0>
  <TBODY>
  <TR>
    <TD height=1>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
      <TABLE height=80 cellSpacing=0 cellPadding=0 width=1008 
      background=/img/framelogo.jpg border=0 style="background-repeat:no-repeat;">
<% else %>
<% if tcwebApi_get("WebCustom_Entry","isCTPONTYLOGOSupported","h") = "Yes" then %>
      <TABLE height=80 cellSpacing=0 cellPadding=0 width=808 
      background=/img/framelogo.jpg border=0>
<% else %>
      <TABLE height=117 cellSpacing=0 cellPadding=0 width=1008 
      background=/img/framelogo.jpg border=0 style="background-repeat:no-repeat;">
<% end if %> 
<% end if %>
        <TBODY>
        <TR>
          <TD>&nbsp;</TD>
          <TD vAlign=bottom align=right width=358>
            <TABLE id=table8 cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD vAlign=bottom align=right><SPAN class=curUserName>&nbsp; 
                  </SPAN></TD>
                <TD class=welcom vAlign=bottom align=middle width=120>Welcome! </TD>
                <TD vAlign=bottom width=50><A onclick=DoLogout() 
                  href="/cgi-bin/logout.cgi" target=_top><SPAN 
                  class=logout>Logout 
      </SPAN></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=table2 height=100 cellSpacing=0 cellPadding=0 width=1008 
border=0>
        <TBODY>
        <TR>
          <TD class=LocationDisplay id=LocationDisplay align=middle width=157 
          bgColor=#6acafc rowSpan=3></TD>
          <TD width=673 bgColor=#6acafc height=33>
            <P align=right><FONT face=Arial color=#ffffff><B><FONT face=Arial 
            color=#ffffff size=6><INPUT id=Selected_Menu type=hidden 
            value="Network->WAN" name=Selected_Menu> </FONT></B><SPAN 
            class=GatewayName>CPE Name:
            <SCRIPT 
            language=javascript>
document.write(top.gateWayName);
</SCRIPT>
             </SPAN></FONT></P></TD>
          <TD width=170 bgColor=#6acafc height=33>
            <P class=GatewayType align=center>Model:
            <SCRIPT language=javascript>			
document.write(top.ModelName);
</SCRIPT>
             </P></TD></TR>
        <TR>
          <TD id=MenuArea_L1 vAlign=bottom bgColor=#6acafc colSpan=2 
          height=43>&nbsp;</TD></TR>
        <TR>
          <TD id=MenuArea_L2 bgColor=#dff5ff colSpan=2 
      height=24></TD></TR></TBODY></TABLE>
      <SCRIPT 
      language=javascript>
MakeMenu(getElById ('Selected_Menu').value);
</SCRIPT>
    <TABLE id=table3 height=15 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD height=15 width=157 border=0 bgColor=#dff5ff></TD>
          <TD height=15 width=851 border=0 bgColor=#ffffff>
          </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=top>
      <SCRIPT language=JavaScript type=text/javascript>
	  
	var nEntryNum = "<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>";
	// num 0
	var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryName = vArrayStr.split(','); 
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","ValidIFIndex","s") %>";
	var vEntryIndex = vArrayStr.split(',');
	var vCurrentDHCPv6 = "<% tcWebApi_get("WanInfo_WanIF","DHCPv6","s") %>";
	var vBindStatus = "<% tcWebApi_get("WanInfo_Common","BindStatus","s") %>";
	var ppp_flag = 2;
	var manual_flag = 2;
	var vcurConnect = "<% tcWebApi_get("WanInfo_WanIF","CONNECTION","s") %>";
	if(vcurConnect == "Connect_Keep_Alive")
		ppp_flag = 0;
	else if(vcurConnect == "Connect_Manually")
		ppp_flag = 1;	
	vcurConnect = "<% tcWebApi_get("WanInfo_WanIF","PPPManualStatus","s") %>";
	if(vcurConnect == "connect")
		manual_flag = 0;
	else if((vcurConnect == "disconnect"))
		manual_flag = 1;
	<% tcWebApi_constSet("WanInfo_Common", "CycleJump", "19") %>
	// num 20
	var CycleV = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var IFIdxArray = CycleV.split(',');

	<% tcWebApi_constSet("WanInfo_Common", "CycleJump", "5") %>
	// num 26
	var CycleV = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var PPPBiArray = CycleV.split(',');

	var IFIdxStore = "<% tcWebApi_get("Wan_Common","LatestIFIdx","s") %>";

	<%if TCWebApi_get("WebCustom_Entry","isWanVlanDuplicateEnabled","h" ) <> "Yes" then%>

	var Num = "<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>";
	//0
	"<% tcWebApi_get("WanInfo_Common","CycleValue","h") %>";
	<% tcWebApi_constSet("WanInfo_Common", "CycleJump", "22") %>	
	//23
	var vlanId = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";

	var vlanSubArray = vlanId.split(',');
	var vlanAndWan=[];
	var j=0;
	for(var i=0;i<vlanSubArray.length-1;i++)
	{
			var loc =vlanSubArray[i].indexOf('/');
			if(isNaN(vlanSubArray[i].substring(0,loc))==false)
			{	
				//alert("vlan[i]="+vlanSubArray[i].substring(0,loc));
				vlanAndWan[j++] = vlanSubArray[i].substring(0,loc);
			}	
	}
	var cyc_vlan_mode=[];
	var Num = "<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>";
	
	<% tcWebApi_constSet("WanInfo_Common", "CycleJump", "28") %>

	var vlan_mode = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";	
	var cyc_vlan_mode = vlan_mode.split(',');

	<% end if %>
	function isPPPproxybiOn()
	{
<%if TCWebApi_get("WebCustom_Entry","isPPPoEProxySupported","h" ) = "Yes" then%>
		if ( 'none' != getElement('ppp_proxy_bi').style.display )
		{
			if ( 0 != getRadioVal("ppp_proxy_bi_mode") )
				return 1;
		}
<%else%>
		if ( 'none' != getElement('ppp_bi').style.display )
		{
			if ( getCheckVal('cb_enable_pppbi') == '1' )
				return 1;
		}
<%end if%>
		return 0;
	}
	function checkDupPPPBi()
	{
		var curIdx = "<% tcWebApi_get("WanInfo_Common","CurIFIndex","s") %>";
		var i = 0;
		
		if ( 1 == isPPPproxybiOn() )
		{
			for( i = 0; i < nEntryNum; i++ )
			{
				if ( curIdx == vEntryIndex[i] )
					continue;
					
				if ( 
<%if TCWebApi_get("WebCustom_Entry","isPPPoEProxySupported","h" ) = "Yes" then%>
					'0' != PPPBiArray[i] 
<%else%>
					'Yes' == PPPBiArray[i]
<%end if%>
					)
					return 1;
			}
		}

		return 0;
	}
	
	function getMaxIFIdx()
	{
		var IFIdxLen = IFIdxArray.length;
		var IFIdxStoreV = 0;
		var i = 0;
		var IFIdxV = 0;
		
		if ( isPlusInteger(IFIdxStore) )
			IFIdxStoreV = parseInt(IFIdxStore);
		
		IFIdxStoreV ++;
		
		for ( i = IFIdxStoreV; i <= 99; i ++ )
		{
			if (!isIdExist(i))
				return i;
		}
		
		for ( i = 1; i < IFIdxStoreV; i ++ )
		{
			if (!isIdExist(i))
				return i;
		}

		return 1; 
	}
	
	function isIdExist(ifIdx)
	{
		var i = 0;
		var IFIdxV = 0;
		var IFIdxLen = IFIdxArray.length;
		
		for ( i = 0; i < IFIdxLen; i ++ )
		{
			IFIdxV = parseInt(IFIdxArray[i]);

			if ( IFIdxV == ifIdx )
				return true;
		}
		
		return false;
	}
	
function WanIPConstruction(domain,conName,vlanId,vlanPri,vlanEnable,bindstr,ConnectionType, nat, enblService, wanIpAddress,serviceList,dnsstr,addrType,wanSubnetMask,defaultGateway,DHCPRelay,DhcpCode,xIpv4Enable,xIpv6Enable,xIpv6Status,xIpv6AddrType,xIpv6Addr,xIpv6PrefixLen,xIpv6Gateway,xIpv6Dns)
{
this.domain = domain;
var list = domain.split('.');
this.key =     '.' + list[4] + '.I.' + list[6];
this.wanConn = 'IPCon';
this.wanId = this.domain;
this.conName = conName;
this.vlanId = vlanId;
this.vlanPri = vlanPri;
this.vlanEnable = vlanEnable;
this.bind = bindstr;
this.multMode = 0;
this.bindflag = 1;
this.ConnectionType = ConnectionType;
this.nat = getBoolValue(nat);
this.enblService = getBoolValue(enblService);
this.wanIpAddress = wanIpAddress;
this.serviceList = serviceList;
var dns = dnsstr.split(',');
this.dnsPrimary = dns[0];
this.dnsSecondary = dns[1];
this.addrType = addrType;
this.wanSubnetMask = wanSubnetMask;
this.defaultGateway = defaultGateway;
this.atmVpi = '';
this.atmVci = '';
this.LinkType = '';
this.atmServiceCategory = '';
this.atmPeakCellRate = '';
this.atmSustainedCellRate = '';
this.atmMaxBurstSize = '';
this.encapMode = '';
this.DHCPRelay = DHCPRelay;
this.ProxyEnable = '';
this.Relating = ' ';
this.DhcpCode=DhcpCode;
this.xIpv4Enable = xIpv4Enable;
this.xIpv6Enable = xIpv6Enable;
this.xIpv6Status = xIpv6Status;
this.xIpv6AddrType = xIpv6AddrType;
this.xIpv6Addr = xIpv6Addr;
this.xIpv6PrefixLen = xIpv6PrefixLen;
if (this.xIpv6PrefixLen == '0')
{
this.xIpv6PrefixLen = '';
}
this.xIpv6Gateway = xIpv6Gateway;
var Ipv6DnsServer = xIpv6Dns.split(',');
this.xIpv6Dns1 = Ipv6DnsServer[0];
if (Ipv6DnsServer.length > 1)
{
this.xIpv6Dns2 = Ipv6DnsServer[1];
}
else
{
this.xIpv6Dns2 = '';
}
}
function WanPPPConstruction(domain,conName,vlanId,vlanPri,vlanEnable,bindstr,ConnectionType, nat,enblService, wanIpAddress,serviceList,dnsstr,RemoteIPAddress,pppUserName, pppPassword,CntTrigger,ProxyEnable,pppIdleTimeout,DHCPRelay, ConnectionStatus,xIpv4Enable,xIpv6Enable,xIpv6Status,xIpv6AddrType,xIpv6Addr,xIpv6PrefixLen,xIpv6Gateway,xIpv6Dns)
{
this.domain = domain;
var list = domain.split('.');
this.key = '.' + list[4] + '.P.' + list[6];
this.wanConn = 'PPPCon';
this.wanId = this.domain;
this.conName = conName;
this.vlanId = vlanId;
this.vlanPri = vlanPri;
this.vlanEnable = vlanEnable;
this.bind = bindstr;
this.multMode = 0;
this.bindflag = 1;
this.ConnectionType = ConnectionType;
this.nat = getBoolValue(nat);
this.enblService = getBoolValue(enblService);
this.wanIpAddress = wanIpAddress;
this.serviceList = serviceList;
var dns = dnsstr.split(',');
this.dnsPrimary = dns[0];
this.dnsSecondary = dns[1];
this.defaultGateway = RemoteIPAddress;
this.pppUserName = pppUserName;
this.pppPassword = pppPassword;
this.ProxyEnable = ProxyEnable;
this.pppIdleTimeout = pppIdleTimeout;
this.atmVpi = '';
this.atmVci = '';
this.LinkType = '';
this.atmServiceCategory = '';
this.atmPeakCellRate = '';
this.atmSustainedCellRate = '';
this.atmMaxBurstSize = '';
this.encapMode = '';
this.cntMode = CntTrigger;
this.Status = ConnectionStatus;
this.Relating = ' ';
this.DHCPRelay = DHCPRelay;
this.xIpv4Enable = xIpv4Enable;
this.xIpv6Enable = xIpv6Enable;
this.xIpv6Status = xIpv6Status;
this.xIpv6AddrType = xIpv6AddrType;
this.xIpv6Addr = xIpv6Addr;
this.xIpv6PrefixLen = xIpv6PrefixLen;
if (this.xIpv6PrefixLen == '0')
{
this.xIpv6PrefixLen = '';
}
this.xIpv6Gateway = xIpv6Gateway;
var Ipv6DnsServer = xIpv6Dns.split(',');
this.xIpv6Dns1 = Ipv6DnsServer[0];
if (Ipv6DnsServer.length > 1)
{
this.xIpv6Dns2 = Ipv6DnsServer[1];
}
else
{
this.xIpv6Dns2 = '';
}
}
function trimString(destStr, cTrim)
{
var i;
var j;
var retStr = '';
for (i = 0; i < destStr.length; i++)
{
if (destStr.charAt(i) != cTrim)
{
retStr += destStr.charAt(i);
}
}
return retStr;
}
function PvcConstruction(domain,atmPvc,atmQoS,atmPeakCellRate,LinkType,atmSustainedCellRate,atmMaxBurstSize,encapMode)
{
this.domain = domain;
var list = domain.split('.');
this.key =     '.' + list[4] + '.';
var realPvc = trimString(atmPvc, ' ');
if(realPvc.charAt(0) == 'P')
{
realPvc = realPvc.substr(4);
}
var pvc = realPvc.split('/');
this.atmVpi = pvc[0];
this.atmVci = pvc[1];
this.LinkType = LinkType;    
this.atmServiceCategory = atmQoS;
this.atmPeakCellRate = atmPeakCellRate;
this.atmSustainedCellRate = atmSustainedCellRate;
this.atmMaxBurstSize = atmMaxBurstSize;
this.encapMode = encapMode;
}
var pppUsrAccess = '|Subscriber,';
var pppUsrAccessArr = pppUsrAccess.split(",");
var pppPwdAccess = '|Subscriber,';
var pppPwdAccessArr = pppPwdAccess.split(",");
var WanPPP = new Array(null);
var WanIP = new Array(null);
var CntPvc = new Array(new PvcConstruction("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANDSLLinkConfig","PVC:0/35","UBR","0","EoA","0","0","LLC"),null);
if (WanIP.length > 1)
AssociateParam('WanIP','CntPvc','atmVpi|atmVci|atmServiceCategory|atmPeakCellRate|LinkType|atmSustainedCellRate|atmMaxBurstSize|encapMode');
if (WanPPP.length > 1)
AssociateParam('WanPPP','CntPvc','atmVpi|atmVci|atmServiceCategory|atmPeakCellRate|LinkType|atmSustainedCellRate|atmMaxBurstSize|encapMode');
function ipv6mode(domain, mode)
{
this.domain = domain;
this.mode = mode;
}
var ipv6enable = new Array(new ipv6mode("InternetGatewayDevice.DeviceInfo.X_CT-COM_IPProtocolVersion","3"),null);
var ipv6version = ipv6enable[0].mode;
var Wan = Array();
for (i = 0; i < WanIP.length-1; i++)
{
Wan[i] = WanIP[i];
}
for (j = 0; j < WanPPP.length-1; j++,i++)
{
Wan[i] = WanPPP[j];
}
var upRate = parseInt('0');
var pcrMax = 5500;
if (upRate != 0)
pcrMax = Math.floor((upRate * 1000) / (53 * 8));
var i = 0;
var AddFlag = false;
var SelWanIndex = -1;
var pvcByUseIndex = -1;
var pvcByUseCount = 0;
var wanList = '';
var changePVCFlag = true;

var msg = new Array(6);
msg[0] = "Successful operation!";
msg[1] = "Modification fails, a PVC can only be created under 8 Interface!";
msg[2] = "Modification fails, PVC is full, you can only create 8 PVC!";
msg[3] = "Creation fails, this already exists PVC 8 Interface!";
msg[4] = "Creation fails, PVC is full, you can only create 8 PVC!";
msg[5] = "Delete error, Interface does not exist!";

var oldIpVer;

function LoadFrame()
{
with (getElById('ConfigForm'))
{
	Wan_Flag.value = "0";
	var wanStatus = "<% tcWebApi_get("WanInfo_Common","ErrCode","s") %>";
	if((0 != parseInt(wanStatus)) && (wanStatus != "N/A"))
	{
		if(99 == parseInt(wanStatus))
		{
			alert(msg[5]);
		}
		else{
			alert(msg[parseInt(wanStatus)]);
		}
		document.ConfigForm.submit();
	}

	oldIpVer = getRadioVal("IpVersion");
	if ((CurWan.length-1) > 0)
	{
		WanModeChange();
		if (serviceList.value == "TR069" || serviceList.value == "VOICE" || serviceList.value == "TR069_VOICE" )
		{
			dhcpv6pdflag.value = "No";
			setDisplay('secBind',0);
			setDisplay('secNat',0);
			clearBindList();
		}
		else
		{
			var ipVer = getRadioVal("IpVersion");
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
			setDisplay('secBind',0);
<% else %>
<% if tcWebApi_get("WebCustom_Entry", "isCT1PORTSupported", "h") = "Yes"  then %>
			setDisplay('secBind',1);
<% else %>
			setDisplay('secBind',1);
<% end if %>
<% end if %>
			if((wanMode.value == "Bridge") || ("IPv6" == ipVer)) setDisplay('secNat',0);
			else setDisplay('secNat',1);
		}
		if(linkMode.value == "linkPPP")
			DialMethodChange();
		VLANModeChg();
		
		WanCurrIFIdx.value = getIFIdxvidDomain(getSelectVal('wanId'));
	}
	else
	{
		onChangeSvrList();
		ServiceListLoad(0);
	}
	var isCYE8SFUSupported="<% tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","s") %>";
	var wanuilimit="<% tcWebApi_get("WanInfo_Common","NOWANUILIMIT","s") %>";
	if("Yes" == isCYE8SFUSupported && "1" != wanuilimit){
	  btnAddCnt.style.display="none";
	  btnRemoveCnt.style.display="none";
	}
}

<% if tcwebApi_get("WanInfo_Common","NoGUIAccessLimit","h" ) <> "1" then %>
	LockTR69Node(1);
<% end if %>

<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
	setDisable('btnRemoveCnt',1);
	setDisable('btnAddCnt',1);
	setDisplay('btnOK', 0);
	setDisplay('btnCancel', 0);
<% end if
end if
end if %>
}

<% if tcwebApi_get("WanInfo_Common","NoGUIAccessLimit","h" ) <> "1" then %>
function LockTR69Node(isLock)
{
	var serviceType = '<% tcWebApi_get("WanInfo_WanIF","ServiceList","s") %>';
	var idx = 0;
	var frm = document.ConfigForm;

	if ( 1 == isLock )
	{
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
		if(getElement('wanId').selectedIndex<3)
<%else%>		
		if ( serviceType.indexOf('TR069') >= 0 )
<% end if%>
		{
			for ( idx = 0; idx < frm.elements.length; idx ++ )
			{
					if ( 'hidden' == frm.elements[idx].type
					|| 'btnAddCnt' == frm.elements[idx].id
<% if tcwebApi_get("WebCustom_Entry","isCTSFUC9Supported","h") <> "Yes" then %>		
					|| 'wanId' == frm.elements[idx].id 
<% end if %>
					)
						continue;
	
					frm.elements[idx].disabled = true;			
			}
			setDisplay('btnOK', 0);
			setDisplay('btnCancel', 0);
		}
	}
	else
	{
			for ( idx = 0; idx < frm.elements.length; idx ++ )
			{
					if ( 'hidden' == frm.elements[idx].type )
						continue;
	
					frm.elements[idx].disabled = false;			
			}
			setDisplay('btnOK', 1);
			setDisplay('btnCancel', 1);
	}
}
<% end if %>

function IpVersionChange()
{
	with (getElById('ConfigForm'))
	{
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") ="Yes" then  if tcwebApi_get("Sys_Entry","IPProtocolVersion","h") ="1" then %>
		IpVersion[1].disabled = true;
		IpVersion[2].disabled = true;
		if(IpVersion[0].checked == false)
		{
			alert("The current onu only supports IPv4 mode, please resave the wan connection!");
		IPVersionValue.value = "IPv4";
		setRadio("IpVersion", "IPv4");
		}
<% end if end if %> 		
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") ="Yes" then  if tcwebApi_get("Sys_Entry","IPProtocolVersion","h") ="2" then %>
		IpVersion[0].disabled = true;
		IpVersion[2].disabled = true;
		if(IpVersion[1].checked == false)
		{
			alert("The current onu only supports IPv4 mode, please resave the wan connection!");
			IPVersionValue.value = "IPv6";
			setRadio("IpVersion", "IPv6");
		}
<% end if end if %>		
		var ipVer = getRadioVal("IpVersion");
		var ConnType = getSelectVal('wanMode');
		var Serverlist = getSelectVal('serviceList');
		if (ConnType != 'Route')
		{
			setDisplay('divIpVersion', 1);
			setDisplay('secIPv6Div', 0);
			return;
		}
		setDisplay('divIpVersion', 1);
		setDisplay('secIPv6Div', 1);
		if ("IPv4" == ipVer)
		{
			if (Serverlist == "TR069"  || Serverlist == "VOICE" || Serverlist == "TR069_VOICE" )
			{
				setDisplay('secNat', 0);
				nat.value = "Disabled";
			}
			else
			{
				setDisplay('secNat', 1);
				if ( oldIpVer != ipVer )
				{
					nat.value = "Enable";
					setCheck('cb_nat', 1);
				}
			}
			if ('linkIP' == getSelectVal('linkMode'))
			{
				setDisplay('secDhcp', 1);
				setDisplay('secStatic', 1);
				setDisplay('secPppoeItems', 0);
				if (SelWanIndex != -1)
				{
					if ((Wan[SelWanIndex].addrType == 'DHCP') || (Wan[SelWanIndex].wanConn == "PPPCon"))
					{
						IpMode[0].checked = true;
					}
					else
					{
						IpMode[1].checked = true;
					}
				}
			}
			else
			{
				setDisplay('secDhcp', 0);
				setDisplay('secStatic', 0);
				setDisplay('secPppoeItems', 1);
			}
			setDisplay('secPppoe', 0);
			setDisplay('secPppoa', 0);
			setDisplay('secIpoa', 0);
			if(IpMode[1].checked && ("linkIP" == getSelectVal('linkMode')))
			{
				setDisplay('secStaticItems', 1);
			}
			else
			{
				setDisplay('secStaticItems', 0);
			}
			setDisplay('TrIpv6AddrType', 0);
			setDisplay('TrIpv6Addr', 0);
			setDisplay('TrIpv6Dns1', 0);
			setDisplay('TrIpv6Dns2', 0);
			setDisplay('TrIpv6Gateway', 0);
			setDisplay('TrIpv6GatewayInfo', 0);
		}
		else if ("IPv6" == ipVer)
		{
			setDisplay('secNat', 0);
			nat.value = "Disabled";
			setDisplay('secDhcp', 0);
			setDisplay('secStatic', 0);
			setDisplay('secPppoe', 0);
			setDisplay('secPppoa', 0);
			setDisplay('secIpoa', 0);
			setDisplay('secStaticItems', 0);
			setDisplay('TrIpv6AddrType', 1);
			var linkstr = getSelectVal('linkMode');
			if(linkstr == "linkIP")
				WriteIPv6List(1);
			else
				WriteIPv6List(0);
		}
		else
		{
			if (Serverlist == "TR069"  || Serverlist == "VOICE" || Serverlist == "TR069_VOICE")
			{
				setDisplay('secNat', 0);
				nat.value = "Disabled";
			}
			else
			{
				setDisplay('secNat', 1);
				if ( oldIpVer != ipVer )
				{
					nat.value = "Enable";
					setCheck('cb_nat', 1);
				}
			}
			if ('linkIP' == getSelectVal('linkMode'))
			{
				setDisplay('secDhcp', 1);
				setDisplay('secStatic', 1);
				setDisplay('secPppoeItems', 0);
				if (SelWanIndex != -1)
				{
					if ((Wan[SelWanIndex].addrType == 'DHCP') || (Wan[SelWanIndex].wanConn == "PPPCon"))
					{
						IpMode[0].checked = true;
					}
					else
					{
						IpMode[1].checked = true;
					}
				}
			}
			else
			{
				setDisplay('secDhcp', 0);
				setDisplay('secStatic', 0);
				setDisplay('secPppoeItems', 1);
			}
				setDisplay('secPppoe', 0);
				setDisplay('secPppoa', 0);
				setDisplay('secIpoa', 0);
				if (('linkIP' == getSelectVal('linkMode')) && IpMode[1].checked)
				{
					setDisplay('secStaticItems', 1);
				}
				else
				{
					setDisplay('secStaticItems', 0);
				}
				setDisplay('TrIpv6AddrType', 1);
				if('linkIP' == getSelectVal('linkMode'))
				{
					if(IpMode[0].checked)
					{
						WriteIPv6List(0);
					}
					else if(IpMode[1].checked)
						WriteIPv6List(2);
					else
						WriteIPv6List(0);
				}
				else
					WriteIPv6List(0);
			}
			oldIpVer = ipVer;
			
			dsliteShow();
			pdEnableShow();
			ppp_dialMethodChg();
	}
}
var changeflag = 1;
function onChangeSvrList()
{
with (getElById('ConfigForm'))
{
	if ((serviceList.value == 0) && (IpMode[2].checked == true) && (wanMode.value != "Bridge"))
	{
		changeflag = 0;
		secManualDial.style.display = "none";
		secIdleTime.style.display = "none";
	}
	else if((serviceList.value != 0) && (IpMode[2].checked == true) && (wanMode.value != "Bridge"))
	{
		if(changeflag == 0)
		{
			addOption(DialMethod,1,"Automatically connect when there is traffic");
			addOption(DialMethod,'Manual',"Manual Dial");
			changeflag = 1;
		}
	}
	if (serviceList.value == "TR069"   || serviceList.value == "VOICE" || serviceList.value == "TR069_VOICE" )
	{
		dhcpv6pdflag.value = "No";
		cb_nat.checked = false;
		nat.value = "Disabled";
		setDisplay('secBind',0);
		setDisplay('secNat',0);
		clearBindList();
	}
	else
	{
		dhcpv6pdflag.value = "Yes";
		cb_nat.checked = true;
		nat.value = "Enable";
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
		setDisplay('secBind',0);
<% else %>
<% if tcWebApi_get("WebCustom_Entry", "isCT1PORTSupported", "h") = "Yes"  then %>
			setDisplay('secBind',1);
<% else %>
		setDisplay('secBind',1);
<% end if %>
<% end if %>
		if(wanMode.value == "Bridge")
		{
			setDisplay('secNat',0);
			nat.value = "Disabled";
		}
		else
		{
			setDisplay('secNat',1);
		}
	}
	if (AddFlag == true)
	{
		if (serviceList.value == "OTHER" && wanMode.value == "Bridge")
		{
			cb_dhcprelay.checked = true;
		}
		else
		{
			cb_dhcprelay.checked = false;
		}
	}
	IpVersionChange();
	MTUDispChange();
	//MultiVIDDispChange();
	VLANModeChg();
	dsliteShow();
	pdEnableShow();
	dhcpEnableShow();
	pppoeProxyShow();
	ppp_dialMethodChg();
}
}
function onSelectSvrList()
{
	pdDefaultSel = 1;
	enabledhcpSel = 1;
	onChangeSvrList();
with (getElById('ConfigForm'))
{
	if ((serviceList.value == "OTHER" || serviceList.value == "INTERNET") && wanMode.value == "Bridge")
	{
		cb_dhcprelay.checked = true;
	}
	else
	{
		cb_dhcprelay.checked = false;
	}
}
}
function DialMethodChange()
{
<% if tcWebApi_get("WebCustom_Entry", "isPPPoEOnDemandWEBUISupported", "h") <> "Yes"  then %>
<% if TCWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
	setDisplay('secIdleTime',0);
	setDisplay('secManualDial',0);
<% else %>
	var cntMode = getSelectVal('DialMethod');
	if (cntMode == 'AlwaysOn')
	{
		setDisplay('secIdleTime',0);
		setDisplay('secManualDial',0);
		setText('ConnectionFlag', "Connect_Keep_Alive");
	}
	else if (cntMode == 'Manual')
	{
		setDisplay('secIdleTime',0);
		setDisplay('secManualDial',1);
		setText('ConnectionFlag', "Connect_Manually");
		if(0 == ppp_flag){
			setDisable('pppDialButton',1);
			setText('pppDialButton', 'Manual Dial');
		}
		else if(1 == ppp_flag){
			if(0 == manual_flag){
				setDisable('pppDialButton',0);
				setText('pppDialButton', 'disconnect');
				setText('pppManualStatus_Flag', 'disconnect');
			}
			else{
				setDisable('pppDialButton',0);
				setText('pppDialButton', 'Manual Dial');
				setText('pppManualStatus_Flag', 'connect');
			}
			
		}
		else
		{
			setDisable('pppDialButton',1);
			setText('pppDialButton', 'Manual Dial');
		}
	}
<% end if %>
<% end if %>
}
function cb_enblServiceChange()
{
	if(document.ConfigForm.cb_enblService.checked)
		document.ConfigForm.WanActive.value = "Yes";
	else
		document.ConfigForm.WanActive.value = "No";
}
function clearBindList()
{
for (var i = 1; i <= 4; i++)
{
document.getElementById("secLan" + i).disabled = false;
document.getElementById("cb_bindlan" + i).checked = false;
document.getElementById("secWireless" + i).disabled = false;
document.getElementById("cb_bindwireless" + i).checked = false;
}
}
function linkModeSelect()
{
with (getElById('ConfigForm'))
{
	pdDefaultSel = 1;
	isNeedChange = 1;
	var ipVer = getRadioVal("IpVersion");
	if (getSelectVal('linkMode') == 'linkIP')
	{
		if("IPv6" == ipVer)
			WriteIPv6List(1);
		else if("IPv4/IPv6" == ipVer)
		{
			if(IpMode[0].checked)
				WriteIPv6List(0);
			else if(IpMode[1].checked)
				WriteIPv6List(2);
			else
				WriteIPv6List(0);
		}
		setDisplay("secDhcp", 1);
		setDisplay('secStatic',1);
		if (SelWanIndex != -1)
		{
		}
		else
		{
			IpMode[0].checked = true;
		}
	}
	else
	{
		if("IPv4" != ipVer)
			WriteIPv6List(0);
		setDisplay("secDhcp", 0);
		setDisplay('secStatic',0);
		IpMode[2].checked = true;
		DialMethodChange();
	}
	setDisplay('secPppoe',0);
	IpModeChange();
	IpVersionChange();
	MTUDispChange();
	dsliteShow();
	pdEnableShow();
	dhcpEnableShow();
	pppoeProxyShow();
	ppp_dialMethodChg();
}
}

var isWanModeChg = -1;
var isAddBtnClick = 0;
function ServiceListLoad(isBridge)
{
	var bridgeArray = new Array('INTERNET'
	<% if tcwebApi_get("WebCustom_Entry","isCT1PORTSupported","h") <> "Yes" then %>
		, 'OTHER'
	<% end if %>
	);
	var i = 0;
	var status = '<% tcWebApi_get("WanInfo_WanIF","ServiceList","s") %>';
	var isSel = 0;
	<% if tcwebApi_get("WanInfo_Common","NoGUIAccessLimit","h" ) = "1" then %>
	var routeArray = new Array('TR069', 'INTERNET', 'TR069_INTERNET'
											<% if tcwebApi_get("WebCustom_Entry","isCTPONNOVOIP","h") <> "Yes" then %>
											, 'VOICE', 'TR069_VOICE', 'VOICE_INTERNET', 'TR069_VOICE_INTERNET'
											<% end if %>
											<% if tcwebApi_get("WebCustom_Entry","isCT1PORTSupported","h") <> "Yes" then %>
											, 'OTHER'
											<% elseif tcwebApi_get("WebCustom_Entry","isWanOtherServiceSupported","h") = "Yes" then %>
											, 'OTHER'
											<% end if %>
											);
	<% else %>
	var routeArray;
	if ( status.indexOf('TR069') >= 0 && 0 == isAddBtnClick )
		routeArray = new Array(status);
	else
	 	routeArray = new Array('INTERNET'
	 											<% if tcwebApi_get("WebCustom_Entry","isCTPONCAUSupported","h") = "Yes" then %>
	 											 , 'TR069', 'TR069_INTERNET'
	 											<% end if %>	 	
	 											<% if tcwebApi_get("WebCustom_Entry","isCTPONNOVOIP","h") <> "Yes" then %>
	 											 , 'VOICE', 'VOICE_INTERNET'
	 											<% end if %>
	 											<% if tcwebApi_get("WebCustom_Entry","isCT1PORTSupported","h") <> "Yes" then %>
												 , 'OTHER'
												<% elseif tcwebApi_get("WebCustom_Entry","isWanOtherServiceSupported","h") = "Yes" then %>
												 , 'OTHER'
												<% end if %>
	 											 );
	<% end if %>
	
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
	with ( getElById('serviceListShow') )
	{
		options.length=0;
		if ( 1 == isBridge )
		{
			for( i=0; i< bridgeArray.length; i++)
			{
				var opt = new Option(bridgeArray[i], bridgeArray[i]);
				if ( status == opt.value )
				{
					opt.selected = true;
					isSel = i;
				}
				options.add ( opt );
			}
			options[isSel].setAttribute('selected', 'true');
		}
		else
		{
			for( i=0; i< routeArray.length; i++)
			{
				var opt = new Option(routeArray[i], routeArray[i]);
				if ( status == opt.value )
				{
					opt.selected = true;
					isSel = i;
				}
				options.add ( opt );
			}
			options[isSel].setAttribute('selected', 'true');
		}
	}
<% end if %>

	with ( getElById('serviceList') )
	{
		options.length=0;

		if ( 1 == isBridge )
		{
			for( i=0; i< bridgeArray.length; i++)
			{
				var opt = new Option(bridgeArray[i], bridgeArray[i]);
				if ( status == opt.value )
				{
					opt.selected = true;
					isSel = i;
				}
				options.add ( opt );
			}
			options[isSel].setAttribute('selected', 'true');
		}
		else
		{
			for( i=0; i< routeArray.length; i++)
			{
				var opt = new Option(routeArray[i], routeArray[i]);
				if ( status == opt.value )
				{
					opt.selected = true;
					isSel = i;
				}
				options.add ( opt );
			}
			options[isSel].setAttribute('selected', 'true');
		}
		
		if ( -1 == isWanModeChg )
			isWanModeChg = isBridge;
		else
		{
			if ( 	isWanModeChg != isBridge )
			{
				isWanModeChg = isBridge;
				onSelectSvrList();
			}
		}
	}
}

function WanModeChange()
{
with (getElById('ConfigForm'))
{
	if (wanMode.value == "Route")
	{
		ServiceListLoad(0);
		setDisplay('secIpMode',1);
		setDisplay('secRouteItems',1);
		setDisplay('divLink', 1);
		setDisplay('secDhcp',1);
		setDisplay('secStatic',1);
		setDisplay('secPppoe',1);
		setDisplay('secbridgeDhcprelay',0);
		setDisplay('secBridgeType',0);
	
		if (serviceList.value == "TR069" || serviceList.value == "VOICE" || serviceList.value == "TR069_VOICE")
		{
			setDisplay('secNat',0);
		}
		else
		{
			setDisplay('secNat',1);
		}
		setDisplay('secIgmp',1);
		IpModeChange();
<%if tcWebApi_get("WebCustom_Entry","isCTPONC9Supported","h" ) = "Yes" then%>
		setDisplay('secCloneMAC', 1);
<%end if%>
	}
	else if (wanMode.value == "Bridge")
	{
		ServiceListLoad(1);
		setDisplay('secIpMode',0);
		setDisplay('secRouteItems',0);
		setDisplay('divLink', 0);
		setDisplay('secStaticItems',0);
		setDisplay('secPppoeItems',0);
		setDisplay('secDhcp',0);
		setDisplay('secStatic',0);
		setDisplay('secPppoe',0);
		setDisplay('secBridgeType',1);
		setDisplay('cb_dhcprelay',1);
		getElement('secbridgeDhcprelay').style.display = "";
		//setRadio("IpVersion", "IPv4");
		setDisplay('secNat',0);
		nat.value = "Disabled";
		setDisplay('secIgmp',0);
<%if tcWebApi_get("WebCustom_Entry","isCTPONC9Supported","h" ) = "Yes" then%>
		setDisplay('secCloneMAC', 0);
<%end if%>
	}
	else if (wanMode.value == "multMode")
	{
		setDisplay('secIpMode',1);
		setDisplay('secRouteItems',1);
		setDisplay('secDhcp',0);
		setDisplay('secStatic',0);
		setDisplay('secPppoe',1);
		setDisplay('secbridgeDhcprelay',0);
		IpMode[2].checked = true;
		setDisplay('secNat',1);
		setDisplay('secIgmp',1);
		IpModeChange();
	}
	if (AddFlag == true)
	{
		if (serviceList.value == "OTHER" && wanMode.value == "Bridge")
		{
			cb_dhcprelay.checked = true;
		}
		else
		{
			cb_dhcprelay.checked = false;
		}
	}
	IpVersionChange();
		MTUDispChange();
		VLANModeChg();
		//MultiVIDDispChange();
	dsliteShow();
	pdEnableShow();
	dhcpEnableShow();
	pppoeProxyShow();
	ppp_dialMethodChg();
}
}

function WanModeSelect()
{
isNeedChange = 1;
WanModeChange();
linkModeSelect();
with (getElById('ConfigForm'))
{
if ((serviceList.value == "OTHER" || serviceList.value == "INTERNET") && wanMode.value == "Bridge")
{
cb_dhcprelay.checked = true;
}
else
{
cb_dhcprelay.checked = false;
}
	if ( serviceList.value != "TR069"
&& serviceList.value != "VOICE"
&& serviceList.value != "TR069_VOICE"
 && 'Route' == wanMode.value )
	{
		nat.value = "Enable";
		setCheck('cb_nat', 1);
	}
}
}

function IpModeChange()
{
with (getElById('ConfigForm'))
{
	var ipVer = getRadioVal("IpVersion");
if (IpMode[0].checked == true)
{
setDisplay('secStaticItems',0);
setDisplay('secPppoeItems',0);
document.ConfigForm.ISPTypeValue.value = "0";
	if("IPv4/IPv6" == ipVer){
		if(getSelectVal('linkMode') == 'linkIP')
			WriteIPv6List(0);
	}
		
}
else if (IpMode[1].checked == true)
{
setDisplay('secStaticItems',1);
setDisplay('secPppoeItems',0);
document.ConfigForm.ISPTypeValue.value = "1";
	if("IPv4/IPv6" == ipVer){
		if(getSelectVal('linkMode') == 'linkIP')
			WriteIPv6List(2);
	}
}
else if (IpMode[2].checked == true)
{
setDisplay('secStaticItems',0);
setDisplay('secPppoeItems',1);
document.ConfigForm.ISPTypeValue.value = "2";
}
else if (IpMode[3].checked == true)
{
setDisplay('secStaticItems',0);
setDisplay('secPppoeItems',1);
document.ConfigForm.ISPTypeValue.value = "3";
}
else if (IpMode[4].checked == true)
{
setDisplay('secStaticItems',1);
setDisplay('secPppoeItems',0);
document.ConfigForm.ISPTypeValue.value = "4";
}
}
}
function cb_bindflagChange()
{
with (getElById('ConfigForm'))
{
	if (cb_bindflag.checked == true)
	{
		bindflag.value = "Yes";
		setDisplay('secBind',1);
		if(wanMode.value == "Bridge")
			setDisplay('secbridgeDhcprelay',1);
		else
			setDisplay('secbridgeDhcprelay',0);
		
	}
	else
	{
		bindflag.value = "No";
		setDisplay('secBind',0);
		setDisplay('secbridgeDhcprelay',0);
	}
}
}
function Enbl8021dChange()
{
with (getElById('ConfigForm'))
{
if (enbl8021d.checked == true)
{
setDisplay('sec8021d',1);
document.ConfigForm.vlanPri.value = "Yes";
}
else
{
setDisplay('sec8021d',0);
document.ConfigForm.vlanPri.value = "No";
}
}
}
function Enbl8021qChange()
{
with (getElById('ConfigForm'))
{
if (enbl8021q.checked == true)
{
setDisplay('secVlan',1);
document.ConfigForm.vlanId.value = "Yes";
if ( 0 == v8021P.value.length )
	v8021P.value = '0';
}
else
{
setDisplay('secVlan',0);
document.ConfigForm.vlanId.value = "No";
}
}
}
function	EnableNatClick()
{
	if(document.ConfigForm.cb_nat.checked)
		document.ConfigForm.nat.value = "Enable";
	else
		document.ConfigForm.nat.value = "Disabled";
}
function	EnableIGMPProxyClick()
{
	if(document.ConfigForm.cb_enblIgmp.checked)
		document.ConfigForm.enblIgmp.value = "Yes";
	else
		document.ConfigForm.enblIgmp.value = "No";
}
function EnableDHCPRealy()
{
	if(document.ConfigForm.cb_dhcprelay.checked)
		document.ConfigForm.dhcprelay.value = "Yes";
	else
		document.ConfigForm.dhcprelay.value = "No";
}
function atmServiceCategoryChange()
{
with (getElById('ConfigForm'))
{
switch (atmServiceCategory.value)
{
case "ubr":
setDisplay('secAtmPeakCellRate',0);
setDisplay('secAtmSustainedCellRate',0);
setDisplay('secAtmMaxBurstSize',0);
break;
case "ubr+":
case "cbr":
secAtmPeakCellRate.style.display = "";
secAtmSustainedCellRate.style.display = "none";
secAtmMaxBurstSize.style.display = "none";
break;
case "nrt-vbr":
case "rt-vbr":
secAtmPeakCellRate.style.display = "";
secAtmSustainedCellRate.style.display = "";
secAtmMaxBurstSize.style.display = "";
break;
}
}
}
function getWanList(list,index)
{
var temp = Wan[index].domain.split('.');
if (list == '')
{
return (temp[4] + '.' + temp[5] + '.' + temp[6]);
}
else
{
return ('|' + temp[4] + '.' + temp[5] + '.' + temp[6]);
}
}
function isDigit(val) {
if (val < '0' || val > '9')
return false;
return true;
}
function isDecimalDigit(digit)
{
if ( digit == "" )
{
return false;
}
for ( var i = 0 ; i < digit.length ; i++ )
{
if ( !isDigit(digit.charAt(i)) )
{
return false;
}
}
return true;
}
function isUseableIpAddress(address)
{
var num = 0;
var addrParts = address.split('.');
if (addrParts.length != 4)
{
return false;
}
if (isDecimalDigit(addrParts[0]) == false)
{
return false;
}
num = parseInt(addrParts[0]);
if (!(num >= 1 && num <= 223 && num != 127))
{
return false;
}
for (var i = 1; i <= 2; i++)
{
if (isDecimalDigit(addrParts[i]) == false)
{
return false;
}
num = parseInt(addrParts[i]);
if (!(num >= 0 && num <= 255))
{
return false;
}
}
if (isDecimalDigit(addrParts[3]) == false)
{
return false;
}
num = parseInt(addrParts[3]);
if (!(num >= 1 && num <= 254))
{
return false;
}
return true;
}


function CheckForm(type)
{
if (type == 0)
{
return true;
}
with (getElById('ConfigForm'))
{
ClearStatusVar();
if (wanId.length == 0)
{
alert("There is no WAN interface, click the Add button to create a WAN interface and click the OK button to save the configuration!");
return false;
}
if(wanId.length >8)
{
	alert("Only 8 Wan connections are supported at most!");
	return false;
}
if ( serviceList.value.indexOf('TR069') >= 0 )
{
	for(var i=0; i< (CurWan.length-1); i++)
	{
		if ( false == AddFlag && curSetIndex.value == CurWan[i].domain )
			continue;
			
		if ( CurWan[i].WanName.indexOf('TR069') >= 0 )
		{
			alert('could only create one TR069 WAN port.');
			return false;
		}
	}
}

if ( 'TAG' == VLANMode.value )
{
	var v = vlan.value;
	if(isPlusInteger(v) == false)
	{
		alert("Invalid VLAN ID!");
		return false;
	}
	else
	{
		if ((v == "") || (v < 1) || (v > 4094))
		{
		alert("Invalid VLAN ID!");
		return false;
		}
	
		<%if TCWebApi_get("WebCustom_Entry","isWanVlanDuplicateEnabled","h" ) <> "Yes" then%>
	
		for(var n=0;n < vlanAndWan.length;n++)
		{
			if(v ==vlanAndWan[n])
			{
				if(true == AddFlag)
				{
					alert("A VLANID can only create a WAN connection.！");
					document.getElementById("vlan").focus();
					return false;
				}else
				{
					var srcVid = "<% tcWebApi_get("WanInfo_WanIF","VLANID","s") %>";
					if(v!=srcVid)
					{
						document.getElementById("vlan").focus();
						alert("A VLANID can only create a WAN connection. VLANID conflicts with other WAN connections VLANID!");
						return false;
					}
				}
			}
		}
		<% end if %>
	
	}
}

if ( 'TAG' == VLANMode.value )
{
	var v = v8021P.value;
	if (isPlusInteger(v) == false)
	{
		alert("Invalid 802.1p!");
		return false;
	}
	else
	{
		if ((v == "") || (v < 0) || (v > 7))
		{
			alert("Invalid 802.1p!");
			return false;
		}
	}
}
<%if TCWebApi_get("WebCustom_Entry","isWanVlanDuplicateEnabled","h" ) <> "Yes" then%>
if ( 'UNTAG' == VLANMode.value )
{

	for(var n=0;n < cyc_vlan_mode.length;n++)
	{	
		if(VLANMode.value ==cyc_vlan_mode[n])
		{
			if(true == AddFlag)
			{
				alert("A UTAG WAN connection already exists in the WAN connection.！");
				return false;
			}else{
					var srcVlanMode = "<% tcWebApi_get("WanInfo_WanIF","VLANMode","s") %>";
					if(VLANMode.value !=srcVlanMode)
					{
						document.getElementById("VLANMode").focus();
						alert("A UTAG WAN connection already exists in the WAN connection. At most there is only one WAN connection with UTAG！");
						return false;
					}
			}
		
		
		}

	}
}
if ( 'TRANSPARENT' == VLANMode.value )
{

	for(var n=0;n < cyc_vlan_mode.length;n++)
	{	
		if(VLANMode.value ==cyc_vlan_mode[n])
		{
			if(true == AddFlag)
			{
				alert("A TRANSPARENT WAN connection already exists in the WAN connection.！");
				return false;
			}else{
					var srcVlanMode = "<% tcWebApi_get("WanInfo_WanIF","VLANMode","s") %>";
					if(VLANMode.value !=srcVlanMode)
					{
						document.getElementById("VLANMode").focus();
						alert("A TRANSPARENT WAN connection already exists in the WAN connection. There is only one WAN connection with TRANSPARENT at most.");
						return false;
					}
			}
		
		
		}

	}
}
<% end if %>
if ( 'none' != getElement('mulvidsec').style.display )
{
	var v = MulticastVID.value;
	if ( 0 != v.length)
	{
		if (isPlusInteger(v) == false)
		{
			alert("Invalid multicastVLAN ID!");
			return false;
		}
		else
		{
			if ( v < 1 || v > 4094 )
			{
				alert("Invalid multicastVLAN ID!");
				return false;
			}
		}
	}
	MulVIDUsed.value = 'Yes';
}
else
	MulVIDUsed.value = 'No';

if ( 'none' != getElement('MTUsec').style.display )
{
	var v = MTU.value;
	if (isPlusInteger(v) == false)
	{
		alert("Invalid MTU!");
		return false;
	}
	else
	{
				if (getSelectVal('linkMode') == 'linkPPP')
				{
					if ('IPv4' == getRadioVal('IpVersion'))
					{
						if ((v == '') || ( 0 != v && (v < 128) || (v > 1492)))
						{
							alert("Invalid MTU，Please enter an integer value between 128 to 1492! (Or 0 in default)");
							return false;
						}
					}
					else
					{
<% if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then %>
					if (getCheckVal('cb_enabledslite') == 1){
						if ((v == '') || ( 0 != v && (v < 1320) || (v > 1492)))
						{
							alert("Invalid MTU，Please enter an integer value between 1320 and 1492! (Or 0 in default)");
							return false;
						}					
					}else{
<% end if %>
						if ((v == '') || ( 0 != v && (v < 1280) || (v > 1492)))
						{
							alert("Invalid MTU，Please enter an integer value between 1280 to 1492! (Or 0 int default)");
							return false;
						}					
<% if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then %>
					}
<% end if %>			
					}
				}
				else
				{
					if ('IPv4' == getRadioVal('IpVersion'))
					{				
						if ((v == '') || ( 0 != v && (v < 576) || (v > 1500)))
						{
							alert("Invalid MTU, Please enter an integer value between 576 to 1,500! (Or 0 in default)");
							return false;
						}
					}
					else
					{
<% if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then %>
						if (getCheckVal('cb_enabledslite') == 1){
							if ((v == '') || ( 0 != v && (v < 1320) || (v > 1500)))
							{
								alert("Invalid MTU, Please enter an integer value between 1320 and 1500! (Or 0 in default)");
								return false;
							}				
						}else{
<% end if %>
						if ((v == '') || ( 0 != v && (v < 1280) || (v > 1500)))
						{
							alert("Invalid MTU，Please enter an integer value between 1280 to 1500! (Or 0 in default)");
							return false;
						}
<% if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then %>
					}
<% end if %>
					}
				}				
	}
}

		if ( 'none' != getElement('PDEnableSec').style.display )
		{
			PDUsed.value = 'Yes';
			if (getCheckVal('cb_enabledpd') == 1)
				enablepd.value = 'Yes';
			else
				enablepd.value = 'No';
		}
		else
			PDUsed.value = 'No';

		if ( 'none' != getElement('pdmode_1').style.display )
		{
			pdmodeUsed.value = 'Yes';
			if ( getRadioVal('pdmode') == 'No' )
			{
				var prefixObjs = pdprefix.value.split('/');
				if ( prefixObjs.length != 2 )
				{
					alert("Invalid prefix address! Format XXXX.XXXX.XXXX.XXXX ::/XX ");
					return false;	
				}

				if ( true != isGlobalIpv6Address(prefixObjs[0]) )
				{
					alert("Invalid prefix IP format! Format XXXX.XXXX.XXXX.XXXX ::");
					return false;
				}

				var TemLen = parseInt(prefixObjs[1]);
				if ( true != isPlusInteger(prefixObjs[1]) || true == isNaN(TemLen) || TemLen > 64 || TemLen < 16)
				{
					alert("Invalid prefix length! Length 16-64");
					return false;	
				}
				
				switch ( CheckPDTime(pdprefixptime.value, pdprefixvtime.value) )
				{
					case 1 :
						alert('Invalid prefix preferred life : "' + pdprefixptime.value + '"');
						return false;
					case 2 :
						alert('Invalid prefix effective lifetime : "' + pdprefixvtime.value + '"');
						return false;
					case 3 :
						alert('Invalid prefix effective lifetime : ' + pdprefixvtime.value + 'Must be greater than Prefix preferred life : ' + pdprefixptime.value);
						return false;
				}
			}
		}
		else
			pdmodeUsed.value = 'No';

		if ( 'none' != getElement('enabledhcpsec').style.display )
		{
			if (getCheckVal('cb_enabledhcp') == 1)
				enable_dhcp.value = '1';
			else
				enable_dhcp.value = '0';
		}
		else
			enable_dhcp.value = '0';

if (getElement('secPppoeItems').style.display != "none")
{
if (getElement('secIdleTime').style.display != "none")
{
<% if tcWebApi_get("WebCustom_Entry", "isPPPoEOnDemandWEBUISupported", "h") = "Yes"  then %>
	var idletime_val = pppTimeOut.value;
	if ( 0 == idletime_val.length
			|| false == isPlusInteger(idletime_val)
			|| parseInt(idletime_val) < 1 )
	{
		alert('No traffic idle timeout is invalid!');
		return false;
	}

	pppondemand_idletime.value = parseInt(idletime_val) * 60;
<% else %>
if (isPlusInteger(pppTimeOut.value) == false)
{
alert("Idle Timeout is invalid!");
return false;
}
else
{
if ((getElement('pppTimeOut').value < 1) || (getElement('pppTimeOut').value > 4320)
|| (getElement('pppTimeOut').value == ''))
{
alert("Idle Timeout is invalid!");
return false;
}
}
<% end if %>
}
<% if tcWebApi_get("WebCustom_Entry", "isCustomerBSNLSupported", "h") = "Yes"  then %>	
//将username的前缀、后缀拼接成完整username，并保存到pppUsername中
if(pppUserNamePrefix.value !== "")
pppUserName.value = pppUserNamePrefix.value + pppUserNameSuffix.value
else
pppUserName.value = "";
<% end if %>
if (isValidNameEx(pppUserName.value) == false)
{
alert("Username is invalid");
return false;
}
if (isValidNameEx(pppPassword.value) == false)
{
alert("Password is invalid");
return false;
}
}
if ((getElement('secStaticItems').style.display != "none")
&& ("IPv6" != getRadioVal("IpVersion")))
{
if (WanIP != null)
{
var iloop;
for (iloop = 0; iloop< WanIP.length-1; iloop++)
{
if ( (vpi != WanIP[iloop].atmVpi) && (vci != WanIP[iloop].atmVci))
{
if ( wanIpAddress.value == WanIP[iloop].wanIpAddress)
{
alert("IP Address conficts with" + WanIP[iloop].conName) ;
return false;
}
}
}
}

if (!isAbcIpAddress(wanIpAddress.value))
{
alert("IP Address is invalid！");
wanIpAddress.focus();
return false;
}
if (!isValidSubnetMask(wanSubnetMask.value))
{
alert("Subnet Mask is invalid");
wanSubnetMask.focus();
return false;
}
if (!isHostIpWithSubnetMask(wanIpAddress.value, wanSubnetMask.value))
{
alert("IP Address does not match with subnet mask");
wanIpAddress.focus();
return false;
}
if (!isAbcIpAddress(defaultGateway.value))
{
alert("Default Gateway is invalid!");
defaultGateway.focus();
return false;
}
if (!isAbcIpAddress(dnsPrimary.value))
{
alert("Invalid rimary DNS server address!");
dnsPrimary.focus();
return false;
}
if (!isUseableIpAddress(dnsPrimary.value))
{
alert("Invalid primary DNS server address!");
dnsPrimary.focus();
return false;
}
if (dnsSecondary.value != '' && !isAbcIpAddress(dnsSecondary.value))
{
alert("Invalid secondary DNS server address!");
dnsSecondary.focus();
return false;
}
if (dnsSecondary.value != '' && !isUseableIpAddress(dnsSecondary.value))
{
alert("Invalid secondary DNS server address!");
dnsSecondary.focus();
return false;
}
}
if ((secIPv6Div.style.display != "none"))
{
if ('IPv4' != getRadioVal('IpVersion'))
{
if (TrIpv6Addr.style.display != "none")
{
if (!isGlobalIpv6Address(getValue('IdIpv6Addr')))
{
alert("IPv6 address is incorrect!");
return false;
}
var v = getValue('IdIpv6PrefixLen');
if(isPlusInteger(v) == false)
{
alert("IPv6 prefix length is incorrect!");
return false;
}
else
{
if ((v == "") || (v <= 0) || (v > 128))
{
alert("IPv6 prefix length is incorrect!");
return false;
}
if (v.length > 1 && v.charAt(0) == '0')
{
alert("IPv6 prefix length is incorrect!");
return false;
}
}
if (!isUnicastIpv6Address(getValue('IdIpv6Dns1')))
{
alert("IPv6 Primary DNS Server address is incorrect");
return false;
}
var v1 = getValue('IdIpv6Dns2');
if (v1 != '' && !isUnicastIpv6Address(v1))
{
alert("IPv6 secondary DNS server address is incorrect");
return false;
}
}
var v2 = getValue('IdIpv6Gateway');
if (v2 != '' && !isUnicastIpv6Address(v2))
{
alert("IPv6 default gateway is incorrect");
return false;
}
}
}
		<%if TCWebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then%>
		if ( 'none' != getElement('dslite_1').style.display )
		{
				if (getCheckVal('cb_enabledslite') == 1)
					enabledslite.value = 'Yes';
				else
					enabledslite.value = 'No';

				dsliteUsed.value = 'Yes';
		}
		else
			dsliteUsed.value = 'No';
	 <%end if%>
	 
<%if tcWebApi_get("WebCustom_Entry","isCTPONC9Supported","h" ) = "Yes" then%>
		if ( !checkWANMac( wanhwaddress.value ) )
		{
			alert('WAN interface MAC address is invalid!');
			return false;	
		}
		wanhwaddress.value = wanhwaddress.value.replace( /-/g , ':' );
<%end if%>

<%if TCWebApi_get("WebCustom_Entry","isPPPoEProxySupported","h" ) = "Yes" then%>
		if ( 'none' != getElement('ppp_proxy_bi').style.display )
		{
			ppp_proxy_biUsed.value = 'Yes';
			if ( '1' == getRadioVal("ppp_proxy_bi_mode") && 'none' != getElement('ppp_proxy_user').style.display )
			{
					var pppmaxUser = parseInt(pppproxy_user.value);
					if ( true != isPlusInteger(pppproxy_user.value) || true == isNaN(pppmaxUser) || pppmaxUser > 4 || pppmaxUser < 1)
					{
						alert("PPPoE proxy maximum number of users is invalid! A length of 1-4");
						return false;
					}
			}
			
			if ( 0 != getRadioVal("ppp_proxy_bi_mode") )
			{
					if ( 1 == checkDupPPPBi() )
					{
							alert("Only supports one PPPoE WAN interface that enable proxy or bridge Mixed Mode");
							return false;
					}
			}
		}
		else
			ppp_proxy_biUsed.value = 'No';
<%else%>
		if ( 'none' != getElement('ppp_bi').style.display )
		{
			pppbiUsed.value = 'Yes';
			if ( getCheckVal('cb_enable_pppbi') == '1' )
			{
				if ( 1 == checkDupPPPBi() )
				{
						alert("Only supports one WAN interface taht enable bridge Mixed Mode");
						return false;
				}
				enablepppbi.value = 'Yes';
			}
			else
				enablepppbi.value = 'No';
		}
		else
			pppbiUsed.value = 'No';
<%end if%>

}

<%if TCWebApi_get("WebCustom_Entry","isCTPONC9Supported","h" ) = "Yes" then%>
function checkHexMAC(byteMAC)
{
	var idx = 0;
	var c;

	for ( idx = 0; idx < byteMAC.length; idx ++ )
	{
			c = byteMAC.charAt(idx);
			if ( !((c >= '0' && c <= '9')
			     || (c >= 'a' && c <= 'f')) )
			    return false;
	}

	return true;	
}

function isSameObj(objs, oneobj)
{
	var idx = 0;

	for ( idx = 0; idx < objs.length; idx ++ )
	{
			if ( 	objs[idx] != oneobj )
				return false;
	}

	return true;
}

function checkWANMac( mac )
{
	var chkMAC = mac.toLowerCase();
	var macObjs;
	var keys = new Array(':', '-');
	var idx = 0;

	if ( 17 != chkMAC.length )
		return false;

	if ( chkMAC.indexOf( keys[0] ) >= 0 )
		macObjs = chkMAC.split( keys[0] );
	else
		macObjs = chkMAC.split( keys[1] );

	if ( 6 != macObjs.length )
		return false;

	for ( idx = 0; idx < macObjs.length; idx ++ )
	{
			if ( 	2 != macObjs[idx].length )
				return false;

      if ( !checkHexMAC(macObjs[idx]) )
      	return false;
	}

	if ( isSameObj(macObjs, 'ff') )
		return false;

	if ( 0x01 == ( macObjs[0] & 0x01 ) ) // multicast mac
		return false;
		
	return true;
}
<%end if%>

mode = getSelectVal('wanMode');
ipMode = getRadioVal('IpMode');
brMode = getSelectVal('bridgeMode');
var type = getLinkType(mode,ipMode,brMode);
var wanType = getWanType(mode,ipMode,brMode);
var BindArray = new Array();
var j = 0;
for (var i = 1; i <= 4; i++)
{
var len = 'InternetGatewayDevice.LANDevice.1.'.length;
if (getCheckVal('cb_bindlan'+i) == 1)
BindArray[j++] = getValue('cb_bindlan'+i).substr(len);
if (getCheckVal('cb_bindwireless'+i) == 1)
BindArray[j++] = getValue('cb_bindwireless'+i).substr(len);
}
if (BindArray.length > 0)
{
for (var j = 0; j < Wan.length; j++)
{
if ((j != SelWanIndex) && (Wan[j].bind != ""))
{
if (mode == "Bridge")
{
for (i = 0; i < BindArray.length; i++)
{
if (Wan[j].bind.indexOf(BindArray[i]) >= 0)
{
alert('Binding Options conflict with other WAN interface, re-select the bingding interface, you can not make any binding if all the options are bound to the other WAN interface');
return false;
}
}
}
else
{
if (getRadioVal('IpVersion') == 'IPv4')
{
if ((Wan[j].ConnectionType.indexOf("Bridge") >= 0)
|| (Wan[j].xIpv4Enable == 1))
{
for (i = 0; i < BindArray.length; i++)
{
if (Wan[j].bind.indexOf(BindArray[i]) >= 0)
{
alert('Binding Options conflict with other WAN interface, re-select the bingding interface, you can not make any binding if all the options are bound to the other WAN interface');
return false;
}
}
}
}
else if (getRadioVal('IpVersion') == 'IPv6')
{
if ((Wan[j].ConnectionType.indexOf("Bridge") >= 0)
|| (Wan[j].xIpv6Enable == 1))
{
for (i = 0; i < BindArray.length; i++)
{
if (Wan[j].bind.indexOf(BindArray[i]) >= 0)
{
alert('Binding Options conflict with other WAN interface, re-select the bingding interface, you can not make any binding if all the options are bound to the other WAN interface');
return false;
}
}
}
}
else
{
for (i = 0; i < BindArray.length; i++)
{
if (Wan[j].bind.indexOf(BindArray[i]) >= 0)
{
alert('Binding Options conflict with other WAN interface, re-select the bingding interface, you can not make any binding if all the options are bound to the other WAN interface');
return false;
}
}
}
}
}
}
}

if (AddFlag == true)
{
var count = 0;
var i;
if (AddFlag == true)
{
for (i = 0; i < Wan.length; i++)
{
if (Wan[i].atmVpi == vpi && Wan[i].atmVci == vci)
{
count++;
}
}
if (count >= 4)
{
alert('A PVC can adds up to four WAN interfaces!');
return false;
}
}
count = 0;
if (wanType == 'WANIPConnection') 
{
for (i = 0; i < Wan.length; i++)
{
if (Wan[i].wanConn == 'IPCon' && Wan[i].atmVpi == vpi
&& Wan[i].atmVci == vci)
{
count++;
}
}
if (count >= 3)
{
alert('A PVC can only adds up to three IPOE (or bridge) WAN interfaces!');
return false;
}
}
else if (mode == 'Bridge') 
{
for (i = 0; i < Wan.length; i++)
{
if ((Wan[i].ConnectionType == 'PPP' || Wan[i].ConnectionType == 'IP' || Wan[i].wanConn == 'IPCon')
&& Wan[i].atmVpi == vpi
&& Wan[i].atmVci == vci)
{
count++;
}
}
if (count >= 3)
{
alert('A PVC can only adds up to three IPOE (or bridge) WAN interfaces!');
return false;
}
}
else 
{
for (i = 0; i < Wan.length; i++)
{
if ((Wan[i].wanConn == 'PPPCon' && Wan[i].ConnectionType == 'IP_Routed')
&& Wan[i].atmVpi == vpi
&& Wan[i].atmVci == vci)
{
count++;
}
}
if (count >= 4)
{
alert('A PVC can only adds up to four WAN interfaces which connection type is PPPoE！');
return false;
}
}
}
if (CntPvc.length >= 9 && GetWanIndexPvcByUse(vpi,vci) == -1)
{
if (AddFlag == true)
{
alert("only create up to 8 PVC!");
return false;
}
}
return true;
}
function DisableInvisibleItems()
{
var Inputs = document.getElementsByTagName("div");
for (var i = 0; i < Inputs.length; i++)
{
if (Inputs[i].style.display == "none")
{
Inputs[i].disabled = true;
}
}
}
function ManualCntSubmit()
{
	if (AddFlag == true)
	{
		return;
	}
	setDisable('btnRemoveCnt',1);
	setDisable('btnOK',1);
	setDisable('btnAddCnt',1);
	setDisable('pppDialButton',1);
	document.ConfigForm.Wan_Flag.value = "4";
	document.ConfigForm.submit();
}
function resetText()
{
var Inputs = document.getElementsByTagName("input");
for (var i = 0; i < Inputs.length; i++)
{
if (Inputs[i].type == "text" || Inputs[i].type == "password" )
{
Inputs[i].value = '';
}
}
}
function AddOption(selItem,value,text,ifSelected)
{
var option = document.createElement("option");
option.innerHTML = text;
option.value = value;
option.selected = ifSelected;
selItem.appendChild(option);
}
function RemoveOption(selItem,index)
{
	selItem.removeChild(selItem.options[index]);
}

function GetWanIndexPvcByUse(atmVpi,atmVci,exception)
{
for (i = 0; i < Wan.length; i++)
{
if (Wan[i].atmVpi == atmVpi && Wan[i].atmVci == atmVci
&& (exception == null || exception != i))
{
return i;
}
}
return -1;
}
function GetWanIndexPvcByUseEx(atmVpi, atmVci, execption)
{
for (i = 0; i < Wan.length; i++)
{
if ((Wan[i].atmVpi == atmVpi) &&
(Wan[i].atmVci == atmVci) &&
(execption != i) &&
(Wan[i].Relating.domain == Wan[execption].Relating.domain))
{
return i;
}
}
return -1;
}
function getSameWanList(index)
{
var atmVpi = Wan[index].atmVpi;
var atmVci = Wan[index].atmVci;
var list = '';
for (i = 0; i < Wan.length; i++)
{
if (i != index && Wan[i].atmVpi == atmVpi && Wan[i].atmVci == atmVci)
{
list += getWanList(list,i);
}
}
return list;
}
function getDeleteDomainName()
{
var Pvc = Wan[SelWanIndex].Relating;
var index = Pvc.domain.lastIndexOf('.');
var DslDomain = Pvc.domain.substr(0,index);    
var pos = GetWanIndexPvcByUseEx(Wan[SelWanIndex].atmVpi,
Wan[SelWanIndex].atmVci,SelWanIndex);
if (pos > -1)
{
return Wan[SelWanIndex].domain;
}
else
{
return DslDomain;
}
}

function ClearStatusVar()
{
wanList = '';
pvcByUseIndex = -1;
changePVCFlag = true;
}
function CancelAddCnt()
{
with (getElById('ConfigForm'))
{
RemoveOption(getElement('wanId'),wanId.length - 1);
AddFlag = false;
btnAddCnt.disabled = false;
}
}
function onCancel()
{
var wanIdItem = getElement('wanId');
if (wanIdItem.value == -1)
{
CancelAddCnt();
if (wanIdItem.length > 0)
{

WanIdChange();
}
}
else RefreshPage();
}
function getBind(bindstr,cb_str)
{
if (getCheckVal(cb_str) == 1)
{
if (bindstr == '')
{
return  getValue(cb_str);
}
else
{
return  ',' + getValue(cb_str);
}
}
return '';
}
function getChangeWanTypeUrl(CntType)
{
var url = '';
if (pvcByUseIndex == -1)
{
pvcByUseIndex = SelWanIndex;
}
url = 'dellist=' + wanList + '&';
url += getAddWanUrl(CntType);
return url;
}
function getLinkType(mode,ipMode,brMode)
{
if (mode == "Route")
{
if (ipMode == 'PPPoA')
{
return 'PPPoA';
}
else if (ipMode == 'IPoA')
{
return 'IPoA';
}
else if (ipMode == 'CIP')
{
return 'CIP';
}
else
{
return 'EoA';
}
}
else if (mode == "Bridge")
{
return 'EoA';
}
}
function getWanType(mode,ipMode,brMode)
{
var LinkType = getLinkType(mode,ipMode,brMode);
if (mode == 'Bridge' && LinkType == 'EoA')
{
if (brMode == 'IP_Bridged')
{
return 'WANIPConnection';
}
else
{
return 'WANPPPConnection';
}
}
if ((LinkType == 'EoA' && ipMode == 'PPPoE') || (LinkType == 'PPPoA'))
{
return 'WANPPPConnection';
}
else if ((LinkType == 'EoA' && ipMode != 'PPPoE') || (LinkType == 'IPoA') || (LinkType == 'CIP'))
{
return 'WANIPConnection';
}
}
function addParam(Form,mode,ipMode,brMode)
{
var serviceList = getValue('serviceList');
var vpi = getValue('atmVpi');
var vci = getValue('atmVci');
Form.usingPrefix('y');
var wanName =  serviceList + '_' + mode.charAt(0)  + '_'
+ vpi + '_' + vci;
if ("OTHER" == serviceList)
{
wanName =  'Other' + '_' + mode.charAt(0)  + '_'
+ vpi + '_' + vci;
}
Form.addParameter('Name',wanName);
Form.addParameter('X_ATP_VLANEnabled',getCheckVal('enbl8021q'));
if (getCheckVal('enbl8021q') == 1)
{
Form.addParameter('X_ATP_VLANID',getValue('vlan'));
}
if (getCheckVal('enbl8021d') == 1)
{
Form.addParameter('X_ATP_Priority',getValue('v8021P'));
}
else
{
Form.addParameter('X_ATP_Priority',255);
}
var bindstr = '';
for (i = 1; i <= 4; i++)
{
bindstr = bindstr + getBind(bindstr,'cb_bindlan'+i);
bindstr = bindstr + getBind(bindstr,'cb_bindwireless'+i);
}
Form.addParameter('X_CT-COM_LanInterface',bindstr);
if (mode == 'Route')
{
Form.addParameter('ConnectionType','IP_Routed');
if (ipMode == 'PPPoE')
{
Form.addParameter('Username',getValue('pppUserName'));
var pwd = getValue('pppPassword');
if (pwd != '@1GV)Z<!')
{
Form.addParameter('Password',pwd);
}
if (pwd == '@1GV)Z<!')
{
var Pword = Wan[SelWanIndex].pppPassword;
Form.addParameter('Password', Pword);
}
Form.addParameter('ConnectionTrigger',getValue('DialMethod'));
Form.addParameter('DNSEnabled', "1");
Form.addParameter('DNSOverrideAllowed', "1");
Form.addParameter('DNSServers','');
}
else if (ipMode == 'Static')
{
Form.addParameter('AddressingType',ipMode);
Form.addParameter('ExternalIPAddress',getValue('wanIpAddress'));
Form.addParameter('SubnetMask',getValue('wanSubnetMask'));
Form.addParameter('DefaultGateway',getValue('defaultGateway'));
var DnsStr = getValue('dnsPrimary') + ',' + getValue('dnsSecondary');
Form.addParameter('DNSServers',DnsStr);
Form.addParameter('DNSEnabled', "1");
Form.addParameter('DNSOverrideAllowed', "0");
}
else if (ipMode == 'DHCP')
{
Form.addParameter('AddressingType',ipMode);
Form.addParameter('DNSEnabled', "1");
Form.addParameter('DNSOverrideAllowed', "1");
Form.addParameter('DNSServers','');
Form.addParameter('X_ATP_DHCPOptionCode',getValue('wanDhcpCode'));
}
else if (ipMode == 'IPoA')
{
Form.addParameter('AddressingType', "Static");
Form.addParameter('ExternalIPAddress',getValue('wanIpAddress'));
Form.addParameter('SubnetMask',getValue('wanSubnetMask'));
Form.addParameter('DefaultGateway',getValue('defaultGateway'));
var DnsStr = getValue('dnsPrimary') + ',' + getValue('dnsSecondary');
Form.addParameter('DNSServers',DnsStr);
Form.addParameter('DNSEnabled', "1");
Form.addParameter('DNSOverrideAllowed', "0");
}
else if (ipMode == 'CIP')
{
Form.addParameter('AddressingType', "Static");
Form.addParameter('ExternalIPAddress',getValue('wanIpAddress'));
Form.addParameter('SubnetMask',getValue('wanSubnetMask'));
Form.addParameter('DefaultGateway',getValue('defaultGateway'));
var DnsStr = getValue('dnsPrimary') + ',' + getValue('dnsSecondary');
Form.addParameter('DNSServers',DnsStr);
Form.addParameter('DNSEnabled', "1");
Form.addParameter('DNSOverrideAllowed', "0");
}
else if (ipMode == 'PPPoA')
{
Form.addParameter('Username',getValue('pppUserName'));
var pwd = getValue('pppPassword');
if (pwd != '@1GV)Z<!')
{
Form.addParameter('Password',pwd);
}
if (pwd == '@1GV)Z<!')
{
var Pword = Wan[SelWanIndex].pppPassword;
Form.addParameter('Password', Pword);
}
Form.addParameter('ConnectionTrigger',getValue('DialMethod'));
Form.addParameter('DNSEnabled', "1");
Form.addParameter('DNSOverrideAllowed', "1");
Form.addParameter('DNSServers','');
}
var enablNat = getCheckVal('cb_nat');
if (enablNat == 0)
{
Form.addParameter('NATEnabled', 0);
}
else
{
Form.addParameter('NATEnabled', 1);
}
}
else if (mode == 'Bridge')
{
Form.addParameter('ConnectionType',brMode);
Form.addParameter('X_CT-COM_LanInterface-DHCPEnable',(getCheckVal('cb_dhcprelay')+1)%2);
Form.addParameter('DNSEnabled', "0");
Form.addParameter('DNSServers','');
if (brMode == 'IP')
{
Form.addParameter('AddressingType','Static');
}
}
if (mode == 'Route')
{
var IpVer = getRadioVal('IpVersion');
var xIpv4Enable = 0;
var xIpv6Enable = 0;
if (IpVer == 'IPv4')
{
xIpv4Enable = 1;
xIpv6Enable = 0;
}
else if (IpVer == 'IPv6')
{
xIpv4Enable = 0;
xIpv6Enable = 1;
}
else
{
xIpv4Enable = 1;
xIpv6Enable = 1;
}
Form.addParameter('X_CT-COM_IPv4Enable', xIpv4Enable);
Form.addParameter('X_CT-COM_IPv6Enable', xIpv6Enable);
if (1 == xIpv6Enable)
{
Form.addParameter('X_CT-COM_IPv6AddressingType', getSelectVal('IdIpv6AddrType'));
if ('SLAAC' != getSelectVal('IdIpv6AddrType'))
{
Form.addParameter('X_CT-COM_IPv6DefaultGateway', getValue('IdIpv6Gateway'));
}
else
{
Form.addParameter('X_CT-COM_IPv6DefaultGateway', '');
}
if (getSelectVal('IdIpv6AddrType') == 'Static')
{
Form.addParameter('X_CT-COM_IPv6Address', getValue('IdIpv6Addr'));
Form.addParameter('X_CT-COM_IPv6PrefixLength', getValue('IdIpv6PrefixLen'));
if (getValue('IdIpv6Dns2') == '')
{
Form.addParameter('X_CT-COM_IPv6DNSServers', getValue('IdIpv6Dns1'));
}
else
{
Form.addParameter('X_CT-COM_IPv6DNSServers', getValue('IdIpv6Dns1') + ',' + getValue('IdIpv6Dns2'));
}
Form.addParameter('X_CT-COM_IPv6DNSEnabled', '1');
Form.addParameter('X_CT-COM_IPv6DNSOverrideAllowed', '0');
}
else
{
Form.addParameter('X_CT-COM_IPv6Address', "");
Form.addParameter('X_CT-COM_IPv6PrefixLength', '0');
Form.addParameter('X_CT-COM_IPv6DNSEnabled', '1');
Form.addParameter('X_CT-COM_IPv6DNSOverrideAllowed', '1');
Form.addParameter('X_CT-COM_IPv6DNSServers', "");
}
}
}
else
{
Form.addParameter('X_CT-COM_IPv6Enable', '0');
}
Form.addParameter('Enable',getCheckVal('cb_enblService'));
Form.addParameter('X_CT-COM_ServiceList',serviceList);
Form.endPrefix();
Form.usingPrefix('x');
Form.addParameter('DestinationAddress','PVC:' + vpi + '/' + vci);
var ATMQoS = getSelectVal('atmServiceCategory');
Form.addParameter('ATMQoS',ATMQoS);
Form.addParameter('Enable',1);
switch (ATMQoS)
{
case "ubr+":
case "cbr":
Form.addParameter('ATMPeakCellRate',getValue('atmPeakCellRate'));
break;
case "nrt-vbr":
case "rt-vbr":
Form.addParameter('ATMPeakCellRate',getValue('atmPeakCellRate'));
Form.addParameter('ATMSustainableCellRate',getValue('atmSustainedCellRate'));
Form.addParameter('ATMMaximumBurstSize',getValue('atmMaxBurstSize'));
break;
}
if (mode == 'Route')
{
if (ipMode == 'PPPoE')
{
Form.addParameter('LinkType','EoA');
}
else if (ipMode == 'PPPoA')
{
Form.addParameter('LinkType','PPPoA');
}
else if (ipMode == 'IPoA')
{
Form.addParameter('LinkType','IPoA');
}
else if (ipMode == 'CIP')
{
Form.addParameter('LinkType','CIP');
}
else
{
Form.addParameter('LinkType','EoA');
}
}
else if (mode == 'Bridge')
{
Form.addParameter('LinkType','EoA');
}
Form.addParameter('ATMEncapsulation',getValue('encapMode'));
Form.endPrefix();
}
function isLinkTypeDiffer(mode,ipMode,vpi,vci,exception)
{
mode = getSelectVal('wanMode');
ipMode = getRadioVal('IpMode');
vpi = getValue('atmVpi')
vci = getValue('atmVci');
var brMode = getSelectVal('bridgeMode');
var type = getWanType(mode,ipMode,brMode);
for (i = 0; i < Wan.length; i++)
{
if (Wan[i].atmVpi == vpi && Wan[i].atmVci == vci
&& (exception == null || exception != i))
{
if (type != Wan[i].LinkType)
{
return true;
}
}
}
return false;
}
function getAddWanUrl(CntType)
{
if (pvcByUseIndex == -1)
{
url =  'x=InternetGatewayDevice.WANDevice.1.WANConnectionDevice.'
+ '&y=' + CntType;
}
else
{  
var DslDomain = Wan[pvcByUseIndex].Relating.domain;
var CntDomain = DslDomain.substr(0,DslDomain.lastIndexOf('.'));
url =  'x=' + CntDomain + '&y=' + CntType;
}
return url;
}
function AddSubmitParam(Form,type)
{
if (type == 0)
{
var DslList = "";
var cb_Dsl = getElById('cb_dslEnable');
for (i = 0; i < cb_Dsl.length; i++)
{
if (cb_Dsl[i].checked == true)
{
if(DslList == "")
{
DslList += cb_Dsl[i].value;
}
}
}
Form.addParameter('InternetGatewayDevice.WANDevice.1.WANDSLInterfaceConfig.ConfigMode', DslList);
Form.setAction('set.cgi?RequestFile=html/network/wan1.asp');
}
else
{
var url;
var mode = getSelectVal('wanMode');
var ipMode = getRadioVal('IpMode');
var brMode = getSelectVal('bridgeMode');
var CntType = getWanType(mode,ipMode,brMode);
vpi = getValue('atmVpi')
vci = getValue('atmVci');
pvcByUseIndex = -1;
for (i = 0; i < Wan.length; i++)
{
if (((Wan[i].atmVpi == vpi && Wan[i].atmVci == vci)) && (i != SelWanIndex))
{
pvcByUseIndex = i;
break;
}
}
if (AddFlag == true)
{
url = 'addwan.cgi?' + getAddWanUrl(CntType);
}
else
{
var temp = Wan[SelWanIndex].domain.split('.');
if ((Wan[SelWanIndex].atmVpi != vpi) || (Wan[SelWanIndex].atmVci != vci))
{
changePVCFlag = true;
}
else
{
changePVCFlag = false;
}
if (Wan[SelWanIndex].domain.indexOf(CntType) < 0)
{
if (changePVCFlag == true)
{
if (GetWanIndexPvcByUseEx(Wan[SelWanIndex].atmVpi,
Wan[SelWanIndex].atmVci,SelWanIndex) > -1)
{
wanList = temp[4] + '.' + temp[5] + '.' + temp[6];
}
else
{
wanList = temp[4];
}
url = 'changewantype.cgi?dellist=' + wanList + '&' + getAddWanUrl(CntType);
}
else
{
wanList = temp[4] + '.' + temp[5] + '.' + temp[6];
url = 'changewantype.cgi?' + getChangeWanTypeUrl(CntType)
}
}
else
{
if (changePVCFlag == true)
{
var index = GetWanIndexPvcByUse(vpi,vci);
if (index >= 0)
{
pvcByUseIndex = index;
if (GetWanIndexPvcByUseEx(Wan[SelWanIndex].atmVpi,Wan[SelWanIndex].atmVci,SelWanIndex) >=0 )
{
wanList = temp[4] + '.' + temp[5] + '.' + temp[6];
}
else
{
wanList = temp[4];
}
url = 'changewantype.cgi?' + getChangeWanTypeUrl(CntType);
}
else
{
if (GetWanIndexPvcByUseEx(Wan[SelWanIndex].atmVpi,
Wan[SelWanIndex].atmVci,SelWanIndex) > -1)
{
wanList = temp[4] + '.' + temp[5] + '.' + temp[6];
url = 'changewantype.cgi?dellist=' + wanList + '&' + getAddWanUrl(CntType);
}
else
{
url = 'setcfg.cgi?x=' + Wan[SelWanIndex].Relating.domain
+ '&y=' + Wan[SelWanIndex].domain
+ '&RequestFile=html/network/wan1.asp';
}
}
}
else
{
url = 'setcfg.cgi?x=' + Wan[SelWanIndex].Relating.domain
+ '&y=' + Wan[SelWanIndex].domain
+ '&RequestFile=html/network/wan1.asp';
}
}
}
addParam(Form,mode,ipMode,brMode);
Form.setAction(url);
setDisable('btnRemoveCnt',1);
setDisable('btnOK',1);
setDisable('btnAddCnt',1);
}
}
   
function VLANModeChg()
{
	var svrList;
	with (getElById('ConfigForm'))
	{
		switch (VLANMode.value)
		{
			case 'TAG':
				setDisplay('vlansec', 1);
				setDisplay('priosec', 1);
				setDisplay('mulvidsec', 1);
				vlanId.value = "Yes";
				vlanPri.value = "Yes";
			if ( 0 == v8021P.value.length )
				v8021P.value = '0';
			break;

			case 'UNTAG':
				setDisplay('vlansec', 0);
				setDisplay('priosec', 0);
				setDisplay('mulvidsec',0);
				vlanId.value = "No";
				vlanPri.value = "No";
			break;
			case 'TRANSPARENT':
				setDisplay('vlansec', 0);
				setDisplay('priosec', 0);
				setDisplay('mulvidsec', 1);
				vlanId.value = "No";
				vlanPri.value = "No";
			break;

			default:
			break;
		}
		svrList = serviceList.value;
		if ( svrList.indexOf('INTERNET') >= 0 || svrList.indexOf('OTHER') >= 0 )
			setDisplay('mulvidsec', 1);
		else
			setDisplay('mulvidsec', 0);
	}
}

var isNeedChange = 0;
function MTUDispChange()
{
	var mtudescrip = new Array('MTU[128-1492]：', 'MTU[576-1500]：', 'MTU[1280-1492]：', 'MTU[1280-1500]：','MTU[1320-1492]：','MTU[1320-1500]：');
	with (getElById('ConfigForm'))
	{
		if ( 'Route' == wanMode.value )
		{
			setDisplay('MTUsec', 1);
			if (AddFlag == true || isNeedChange)
			{
				isNeedChange = false;
<% if tcwebApi_get("WebCustom_Entry","isCTPONCNJSSupported","h" ) = "Yes" then %>
				if (getSelectVal('linkMode') == 'linkPPP')
					MTU.value = 1482;
				else
					MTU.value = 1490;				
<% else %>
				if (getSelectVal('linkMode') == 'linkPPP')
					MTU.value = 1492;
				else
					MTU.value = 1500;
<% end if %>
			}

			if (getSelectVal('linkMode') == 'linkPPP')
			{
				if ('IPv4' == getRadioVal('IpVersion'))
					getElement("MIUDescrip").innerHTML = mtudescrip[0];
				else{
<% if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then %>
					if (getCheckVal('cb_enabledslite') == 1){
						getElement("MIUDescrip").innerHTML = mtudescrip[4];	
					}else{
<% end if %>
					getElement("MIUDescrip").innerHTML = mtudescrip[2];
<% if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then %>
			}
<% end if %>
				}
			}
			else
			{
				if ('IPv4' == getRadioVal('IpVersion'))			
					getElement("MIUDescrip").innerHTML = mtudescrip[1];
				else{
<% if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then %>
					if (getCheckVal('cb_enabledslite') == 1){
						getElement("MIUDescrip").innerHTML = mtudescrip[5];	
					}else{
<% end if %>
					getElement("MIUDescrip").innerHTML = mtudescrip[3];		
<% if tcwebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then %>
			}
<% end if %>
				}
			}
		}
		else
		{
			setDisplay('MTUsec', 0);
		}
	}
}

function MultiVIDDispChange()
{
	var svrList;

	with (getElById('ConfigForm'))
	{
		svrList = serviceList.value;
		if ( svrList.indexOf('INTERNET') >= 0 || svrList.indexOf('OTHER') >= 0 )
			setDisplay('mulvidsec', 1);
		else
			setDisplay('mulvidsec', 0);
	}
}

function dsliteShow()
{
<%if TCWebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then%>
	var ipVer;
	var svrList;
	var mode;
	var addrType;

	ipVer = getRadioVal('IpVersion');
	svrList = getSelectVal('serviceList');
	mode = getSelectVal('wanMode');

	if ( 'Route' == mode && 
		'IPv4' != ipVer && svrList.indexOf('INTERNET') >= 0)
	{
		setDisplay('dslite_1', 1);
		var modeObj = document.getElementsByName('dslitemode');
		if ( modeObj.length >= 2 )
		{
			modeObj[0].disabled = false;
			modeObj[1].disabled = false;
		}
		addrType = getSelectVal('IdIpv6AddrType');
		if ( 'Static' == addrType )
		{
			if ( modeObj.length >= 2 )
			{
				modeObj[0].disabled = true;
				modeObj[1].checked = true;
			}
		}
		cb_enabledsliteChange();
	}
	else
	{
		setDisplay('dslite_1', 0);
		setDisplay('dslite_2', 0);
		setDisplay('dslite_3', 0);
	}
<%end if%>
}

function cb_enabledsliteChange()
{
<%if TCWebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then%>
	with (getElById('ConfigForm'))
	{
		if ( 1 == getCheckVal('cb_enabledslite') )
		{
			setDisplay('dslite_2', 1);
			dslitemodeChange();
		}
		else
		{
			setDisplay('dslite_2', 0);
			setDisplay('dslite_3', 0);
		}
	}
	MTUDispChange();
<%end if%>
}

function dslitemodeChange()
{
<%if TCWebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then%>
	var mode;

	with (getElById('ConfigForm'))
	{
		mode = getRadioVal("dslitemode");
		switch (mode)
		{
			case '1':
				setDisplay('dslite_3', 1);
				break;
			default:
				setDisplay('dslite_3', 0);
				break;	
		}
	}
 <%end if%>
}

var pdDefaultSel = 0;
function pdEnableShow()
{
	var ipVer;
	var mode;
	var svrList;

	ipVer = getRadioVal('IpVersion');
	mode = getSelectVal('wanMode');
	svrList = getSelectVal('serviceList');
	addrType = getSelectVal('IdIpv6AddrType');

	if ( 'Route' == mode && 'IPv4' != ipVer
		&& (svrList.indexOf('INTERNET') >= 0 || svrList.indexOf('OTHER') >= 0) )
	{
		setDisplay('PDEnableSec', 1);
		if ( svrList.indexOf('INTERNET') >= 0 && 1 == pdDefaultSel )
			setCheck('cb_enabledpd', 1);
		pdDefaultSel = 0;
		pdModeShow( getCheckVal('cb_enabledpd') );
	}
	else
	{
		setDisplay('PDEnableSec', 0);
		pdModeShow(0);
	}
}

function cb_pdEnableChange()
{
		var pdEnable = getCheckVal('cb_enabledpd');

		pdModeShow(pdEnable);
}

function pdModeShow( show )
{
	addrType = getSelectVal('IdIpv6AddrType');

	if ( 1 == show )
	{
		setDisplay('pdmode_1', 1);
		var modeObj = document.getElementsByName('pdmode');
		if ( modeObj.length >= 2 )
		{
			modeObj[0].disabled = false;
			modeObj[1].disabled = false;
		}

		if ( 'Static' == addrType )
		{
			if ( modeObj.length >= 2 )
			{
				modeObj[0].disabled = true;
				modeObj[1].checked = true;
			}
		}

		pdmodeChange();
	}
	else
	{
		setDisplay('pdmode_1', 0);
		pdStaticCfgShow(0);
	}
}

function pdmodeChange()
{
	var pdmode_sel;

	pdmode_sel = getRadioVal('pdmode');
	if ( 'No' == pdmode_sel )
		pdStaticCfgShow(1);
	else
		pdStaticCfgShow(0);
}

function pdStaticCfgShow( show )
{
	setDisplay('pdmode_2', show);
	setDisplay('pdmode_3', show);
	setDisplay('pdmode_4', show);
}

function CheckPDTime(Time1,Time2)
{
	var TemTime1 = Time1;
	var TemTime2 = Time2;

	if ( TemTime1.length > 10 || '' == TemTime1 )
		return 1;
	if ( TemTime2.length > 10 || '' == TemTime2 )
		return 2;
	if ( true != isPlusInteger(TemTime1))
		return 1;
	if ( true != isPlusInteger(TemTime2))
		return 2;

	TemTime1 = parseInt(Time1);
	TemTime2 = parseInt(Time2);
	if ( TemTime1 > 4294967295 || TemTime1 < 600 )
		return 1;
	if ( TemTime2 > 4294967295 || TemTime2 < 600 )
		return 2;
	if ( TemTime2 <= TemTime1 )
			return 3;

	return true;
}

var enabledhcpSel = 0;
function dhcpEnableShow()
{
<%if TCWebApi_get("WebCustom_Entry","isCTDHCPPortFilterSupported","h" ) = "Yes" then%>
	var svrList;

	svrList = getSelectVal('serviceList');

	if ( 'TR069' == svrList
		|| 'VOICE' == svrList
		|| 'TR069_VOICE' == svrList )
	{
		setDisplay('enabledhcpsec', 0);
		setCheck('cb_enabledhcp', 0);
	}
	else
	{
		setDisplay('enabledhcpsec', 1);
		if ( 1 == enabledhcpSel )
		{
			enabledhcpSel = 0;
			if ( svrList.indexOf('OTHER') >= 0 )
				setCheck('cb_enabledhcp', 0);
			else
				setCheck('cb_enabledhcp', 1);
		}
		if (getSelectVal('wanMode') == 'Bridge')
		{
			setCheck('cb_enabledhcp', 0);
		}
	}
<%else%>
	setDisplay('enabledhcpsec', 0);
	setCheck('cb_enabledhcp', 0);
<%end if%>
}

function pppoeProxyShow()
{
<%if TCWebApi_get("WebCustom_Entry","isPPPoEProxySupported","h" ) = "Yes" then%>
	var mode;
	var linkMode;
	var svrList;

	mode = getSelectVal('wanMode');
	linkMode = getSelectVal('linkMode');
	svrList = getSelectVal('serviceList');

	if ( 'Route' == mode && 'linkPPP' == linkMode
	   && (svrList.indexOf('INTERNET') >= 0 || svrList.indexOf('OTHER') >= 0) )
	{
		setDisplay('ppp_proxy_bi', 1);
		ppp_proxy_bi_Change();
	}
	else
	{
		setDisplay('ppp_proxy_bi', 0);
		setDisplay('ppp_proxy_user', 0);
	}
<%else%>
	pppbiShow();
<%end if%>
}

function ppp_proxy_bi_Change()
{
<%if TCWebApi_get("WebCustom_Entry","isPPPoEProxySupported","h" ) = "Yes" then%>
	var mode;

	with (getElById('ConfigForm'))
	{
		mode = getRadioVal("ppp_proxy_bi_mode");

		switch ( mode )
		{
			case '1':
				setDisplay('ppp_proxy_user', 1);
				break;
			default:
				setDisplay('ppp_proxy_user', 0);
				break;	
		}
	}
<%end if%>
}

function pppbiShow()
{
	var mode;
	var linkMode;
	var svrList;

	mode = getSelectVal('wanMode');
	linkMode = getSelectVal('linkMode');
	svrList = getSelectVal('serviceList');

	if ( 'Route' == mode && 'linkPPP' == linkMode
	   && (svrList.indexOf('INTERNET') >= 0 || svrList.indexOf('OTHER') >= 0) )
		setDisplay('ppp_bi', 1);
	else
		setDisplay('ppp_bi', 0);
}

function ppp_dialMethodChg()
{
<% if tcWebApi_get("WebCustom_Entry", "isPPPoEOnDemandWEBUISupported", "h") = "Yes"  then %>
	var mode;
	var linkMode;

	mode_val = getSelectVal('wanMode');
	linkMode_val = getSelectVal('linkMode');

	setDisplay('secIdleTime', 0);
	setDisplay('secManualDial', 0);

	with ( getElById('ConfigForm') )
	{
		if ( 'Route' == mode_val && 'linkPPP' == linkMode_val )
		{
			switch ( getSelectVal('ppp_DialMethod') )
			{
				case 'Connect_on_Demand':
					setDisplay('secIdleTime', 1);
					if ( 0 == pppTimeOut.value.length )
					{
						if ( 0 == pppondemand_idletime.value.length )
							pppTimeOut.value = '30';
						else
							pppTimeOut.value = parseInt(pppondemand_idletime.value) / 60;
					}
					break;
				default:
					break;
			}
		}
	}
<% end if %>
}
function removePppUserNameSuffix(str)
{
	return str.replace(/ftth\.bsnl\.in$/, "");
}

</SCRIPT>


      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>WAN Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top class=cus_help rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#WANSet" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
              </TBODY></TABLE>　 　　　　　 　　　　　</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <FORM name=ConfigForm action="/cgi-bin/net-wanset.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                        <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                                <TD width=150>Interface： 
                                  <input type="hidden" name="curSetIndex" value="<% tcWebApi_get("WanInfo_Common","CurIFIndex","s") %>">
                                  <input type="hidden" name="WanActive" value="<% tcWebApi_get("WanInfo_WanIF","Active","s") %>">
                                  <input type="hidden" name="WanCurrIFIdx" value='1'>
                                  <script language="JavaScript" type="text/JavaScript">
 var			ipvChanged = 0;//flag of ip version whether changed

function CheckIpVersionState()
{
	var vForm = document.ConfigForm;
	ipvChanged = 0;
	vForm.IPVersionValue.value = "<% tcWebApi_get("WanInfo_WanIF","IPVERSION","s") %>";
	var vValue = getRadioVal("IpVersion");
	if(vForm.IPVersionValue.value != vValue){
		if(vForm.IPVersionValue.value == "IPv4")
			ipvChanged = 1;
		else if(vForm.IPVersionValue.value == "IPv6")
			ipvChanged = 2;
		else ipvChanged = 3;
	}
	vForm.IPVersionValue.value = vValue;
	
	with (getElById('ConfigForm'))
	{
		if(IdIpv6AddrType.value == "SLAAC")
			pppv6Mode.value = "No";
		else if(IdIpv6AddrType.value == "DHCP")
			pppv6Mode.value = "Yes";
		else
			pppv6Mode.value = "N/A";	
	}
	
}
	
function WanIndexConstruction(domain,WanName)
{
	this.domain = domain;
	this.WanName = WanName;
}
function CheckWansActives()
{
	var	nCurTemp = 0;
	var	vcurLinks = new Array(nEntryNum);

	for(var i=0; i<nEntryNum; i++)
	{	
		vcurLinks[nCurTemp++] = new WanIndexConstruction(vEntryIndex[i], vEntryName[i]);
	}
	
	var	vObjRet = new Array(nCurTemp+1);
	for(var m=0; m<nCurTemp; m++)
	{
		vObjRet[m] = vcurLinks[m];
	}
	vObjRet[nCurTemp] = null;
	return vObjRet;
}
//nEntryNum = "2";
var	CurWan = CheckWansActives();
var WanNameObjs;
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
     var vlength = 0;
   <% end if
   end if
end if%>

function WriteWanNameSelected()
{
	var WanIDNums = CurWan;
	var nlength = WanIDNums.length-1;
	var i = 0;
	var isSel = 0;
	var gotopts = 0;
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
      var str = 0;
   <% end if
   end if
end if%>
	if(nlength == 1) 
		document.ConfigForm.curSetIndex.value = WanIDNums[0].domain;
	
	WanNameObjs = new Array(nlength)
	for( i=0; i< nlength; i++)
	{
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
		str = WanIDNums[i].WanName;
		if( str.indexOf('TR069') >= 0 )
		{
			WanNameObjs[i] = new WanNameObject(WanIDNums[i].domain, WanIDNums[i].WanName, IFIdxArray[i]);			
			vlength++;
		}
   <%else%>
		WanNameObjs[i] = new WanNameObject(WanIDNums[i].domain, WanIDNums[i].WanName, IFIdxArray[i]);
   <%end if
   else%>
		WanNameObjs[i] = new WanNameObject(WanIDNums[i].domain, WanIDNums[i].WanName, IFIdxArray[i]);
   <%end if
else%>
		WanNameObjs[i] = new WanNameObject(WanIDNums[i].domain, WanIDNums[i].WanName, IFIdxArray[i]);
<% end if%>
	}
	WanNameObjs.sort(WanNameSort);
	
	with (getElById('wanId'))
	{
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
		for( i=0; i< vlength; i++)
   <%else%>
		for( i=0; i< WanNameObjs.length; i++)
   <% end if
   else%>
		for( i=0; i< WanNameObjs.length; i++)
   <% end if
else%>
		for( i=0; i< WanNameObjs.length; i++)
<% end if%>
		{
			var opt = new Option(WanNameObjs[i].IfaceName, WanNameObjs[i].IfaceDomain);
			if ( document.ConfigForm.curSetIndex.value == WanNameObjs[i].IfaceDomain )
			{
				opt.selected = true
				isSel = i;
			}
			options.add ( opt );
			gotopts = 1;
		}
		if ( gotopts )
		{
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
   <%else%>
			options[isSel].setAttribute('selected', 'true');
   <% end if
   else%>
			options[isSel].setAttribute('selected', 'true');
   <% end if
else%>
			options[isSel].setAttribute('selected', 'true');
<% end if%>
		}
	}
}

function getIFIdxvidDomain(domain)
{
	var i = 0;
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
	for( i=0; i< vlength; i++)
   <%else%>
	for( i=0; i< WanNameObjs.length; i++)
   <% end if
   else%>
	for( i=0; i< WanNameObjs.length; i++)
   <% end if
else%>
	for( i=0; i< WanNameObjs.length; i++)
<% end if%>
	{
		if ( domain == WanNameObjs[i].IfaceDomain )
			return WanNameObjs[i].IfaceIndex;
	}

	return 1;
}

function WanNameObject(IFDomain, IFName, IFIdx)
{
	this.IfaceDomain = IFDomain;
	this.IfaceName = IFName;
	this.IfaceIndex = IFIdx;
}

function v4v6BindCheck(curindex, v4BindIdx, v6BindIdx)
{
<%if TCWebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then%>
	if ( ( curindex == v4BindIdx && (-1 == v6BindIdx ) )
		|| ( curindex == v4BindIdx && curindex == v6BindIdx )
		|| ( curindex == v6BindIdx && (-1 == v4BindIdx ) )
		|| ( curindex == v6BindIdx && curindex == v4BindIdx ) )
		return 1;

	return 0;
<%end if%>
}

//type: 
//0: Add action
//1: Modify action
function	checkBandBoxStatus(type)
{
//lan
	var strCurBind = "";
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>
	var aCurBindFlag = new Array(12);
<% else %>
	var aCurBindFlag = new Array(8);
<% end if %>
	aCurBindFlag[0] = "<% tcWebApi_get("WanInfo_WanIF","LAN1","s") %>";
	if(aCurBindFlag[0] != "N/A")
	{
		aCurBindFlag[1] = "<% tcWebApi_get("WanInfo_WanIF","LAN2","s") %>";
		aCurBindFlag[2] = "<% tcWebApi_get("WanInfo_WanIF","LAN3","s") %>";
		aCurBindFlag[3] = "<% tcWebApi_get("WanInfo_WanIF","LAN4","s") %>";
		aCurBindFlag[4] = "<% tcWebApi_get("WanInfo_WanIF","SSID1","s") %>";
		aCurBindFlag[5] = "<% tcWebApi_get("WanInfo_WanIF","SSID2","s") %>";
		aCurBindFlag[6] = "<% tcWebApi_get("WanInfo_WanIF","SSID3","s") %>";
		aCurBindFlag[7] = "<% tcWebApi_get("WanInfo_WanIF","SSID4","s") %>";
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>
		aCurBindFlag[8] = "<% tcWebApi_get("WanInfo_WanIF","SSID1AC","s") %>";
		aCurBindFlag[9] = "<% tcWebApi_get("WanInfo_WanIF","SSID2AC","s") %>";
		aCurBindFlag[10] = "<% tcWebApi_get("WanInfo_WanIF","SSID3AC","s") %>";
		aCurBindFlag[11] = "<% tcWebApi_get("WanInfo_WanIF","SSID4AC","s") %>";
		for(k=0; k<12; k++)
<% else %>
		for(k=0; k<8; k++)
<% end if %>
		{
			strCurBind = strCurBind + aCurBindFlag[k] + ",";
		}
	}
	
	var strBindFlag = "";
	var nInterfaces = CurWan.length-1;
	var vForm = document.ConfigForm;
	if(vForm.cb_bindlan1.checked)
		vForm.bindlan1.value = "Yes";
	else vForm.bindlan1.value = "No";
	strBindFlag = strBindFlag + vForm.bindlan1.value + ",";
	if(vForm.cb_bindlan2.checked)
		vForm.bindlan2.value = "Yes";
	else vForm.bindlan2.value = "No";
	strBindFlag = strBindFlag + vForm.bindlan2.value + ",";
	if(vForm.cb_bindlan3.checked)
		vForm.bindlan3.value = "Yes";
	else vForm.bindlan3.value = "No";
	strBindFlag = strBindFlag + vForm.bindlan3.value + ",";
	if(vForm.cb_bindlan4.checked)
		vForm.bindlan4.value = "Yes";
	else vForm.bindlan4.value = "No";
	strBindFlag = strBindFlag + vForm.bindlan4.value + ",";
//wireless
	if(vForm.cb_bindwireless1.checked)
		vForm.bindwireless1.value = "Yes";
	else vForm.bindwireless1.value = "No";
	strBindFlag = strBindFlag + vForm.bindwireless1.value + ",";
	if(vForm.cb_bindwireless2.checked)
		vForm.bindwireless2.value = "Yes";
	else vForm.bindwireless2.value = "No";
	strBindFlag = strBindFlag + vForm.bindwireless2.value + ",";
	if(vForm.cb_bindwireless3.checked)
		vForm.bindwireless3.value = "Yes";
	else vForm.bindwireless3.value = "No";
	strBindFlag = strBindFlag + vForm.bindwireless3.value + ",";
	if(vForm.cb_bindwireless4.checked)
		vForm.bindwireless4.value = "Yes";
	else vForm.bindwireless4.value = "No";
	strBindFlag = strBindFlag + vForm.bindwireless4.value;
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>
	strBindFlag = strBindFlag + ",No,No,";
//wireless 5g
	if(vForm.cb_bindwirelessac1.checked)
		vForm.bindwirelessac1.value = "Yes";
	else vForm.bindwirelessac1.value = "No";
	strBindFlag = strBindFlag + vForm.bindwirelessac1.value + ",";
	if(vForm.cb_bindwirelessac2.checked)
		vForm.bindwirelessac2.value = "Yes";
	else vForm.bindwirelessac2.value = "No";
	strBindFlag = strBindFlag + vForm.bindwirelessac2.value + ",";
	if(vForm.cb_bindwirelessac3.checked)
		vForm.bindwirelessac3.value = "Yes";
	else vForm.bindwirelessac3.value = "No";
	strBindFlag = strBindFlag + vForm.bindwirelessac3.value + ",";
	if(vForm.cb_bindwirelessac4.checked)
		vForm.bindwirelessac4.value = "Yes";
	else vForm.bindwirelessac4.value = "No";
	strBindFlag = strBindFlag + vForm.bindwirelessac4.value;	
<% end if %>
	var aTemp1 = new Array();
	var aTemp2 = new Array();
	var aTemp3 = new Array();
	
<%if TCWebApi_get("WebCustom_Entry","isPPPoEProxySupported","h" ) = "Yes" then%>
		if ( 'none' != getElement('ppp_proxy_bi').style.display )
		{
			if ( getRadioVal("ppp_proxy_bi_mode") == '1' )
				return true;
		}
<%end if%>
	
	if(vBindStatus != "N/A")
	{
		aTemp1 = vBindStatus.split(',');
		aTemp2 = strBindFlag.split(',');
		aTemp3 = strCurBind.split(',');
		//check ip version;
		var strIpversion = vForm.IPVersionValue.value;//current ip version;
<%if TCWebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then%>
		if ( 'none' != getElement('dslite_1').style.display )
		{
			if (getCheckVal('cb_enabledslite') == 1)
					strIpversion = "IPv4/IPv6";
		}	
<%end if%>
		
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>		
		for(var i=0; i<14; i++)
<% else %>
		for(var i=0; i<8; i++)
<% end if %>
		{
			
			if((aTemp1[i] == "Yes") && (aTemp2[i] == "Yes"))
			{
<%if TCWebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then%>
				if (1 == type) // modify action
				{
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>	
					if ( ("IPv4" == strIpversion && vForm.curSetIndex.value == parseInt(aTemp1[42+2*i]))
						 || ("IPv6" == strIpversion && vForm.curSetIndex.value == parseInt(aTemp1[42+2*i+1]))
						 || ("IPv4/IPv6" == strIpversion && v4v6BindCheck(vForm.curSetIndex.value, parseInt(aTemp1[42+2*i]), parseInt(aTemp1[42+2*i+1]))) )
						continue;
<% else %>
					if ( ("IPv4" == strIpversion && vForm.curSetIndex.value == parseInt(aTemp1[24+2*i]))
						 || ("IPv6" == strIpversion && vForm.curSetIndex.value == parseInt(aTemp1[24+2*i+1]))
						 || ("IPv4/IPv6" == strIpversion && v4v6BindCheck(vForm.curSetIndex.value, parseInt(aTemp1[24+2*i]), parseInt(aTemp1[24+2*i+1]))) )
						continue;
<% end if %>
				}
<%else%>
				//continue if it do modify action and the port is bind 
				if((1 == type) && (aTemp3[i] == "Yes")){
					if(0 == ipvChanged)//ip version  has not changed
						continue;
					else{
						//if("IPv4/IPv6" == strIpversion){
							if(3 == ipvChanged){//ipv4/v6->ipv4 or ipv6
								continue;
							}
							else if(1 == ipvChanged){//ipv4->ipv4/ipv6
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>
								if(0 == aTemp1[14+2*i+1])//if ipv6 is not binded, can ok
<% else %>	
								if(0 == aTemp1[8+2*i+1])//if ipv6 is not binded, can ok
<% end if %>
									continue;
							}
							else if(2 == ipvChanged){//ipv6->ipv4/ipv6
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>								
								if(0 == aTemp1[14+2*i])//if ipv4 is not binded, can ok
<% else %>	
								if(0 == aTemp1[8+2*i])//if ipv4 is not binded, can ok
<% end if %>
									continue;
							}
						//}
					}
				}
<%end if%>
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>				
				if((("IPv4" == strIpversion) && (0 == aTemp1[14+2*i])) || (("IPv6" == strIpversion) && (0 == aTemp1[14+2*i+1]))){				
					continue;
				}
<% else %>
				if((("IPv4" == strIpversion) && (0 == aTemp1[8+2*i])) || (("IPv6" == strIpversion) && (0 == aTemp1[8+2*i+1]))){
					continue;
				}
<% end if %>					
				var strindex;
				if(i < 4)
				{
					strindex = i+1;
					<%if TCWebApi_get("WebCustom_Entry","isCTPONCNJSSupported","h" ) = "Yes" then%>
					<%else%>
					<%if TCWebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h" ) = "Yes" then%>
					<%else%>
						alert("Lan" + strindex.toString() + " has been bound by other Interface, can not duplicate binding!");
					<%end if%>
					<%end if%>
				}
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>					
				else if(i >=4 && i < 8)
				{
					strindex = i - 3;
					<%if TCWebApi_get("WebCustom_Entry","isCTPONCNJSSupported","h" ) = "Yes" then%>
					<%else%>
						alert("SSID" + strindex.toString() + " has been bound by other Interface, can not duplicate binding!");
					<%end if%>
				}
				else
				{
					strindex = i - 9;
					<%if TCWebApi_get("WebCustom_Entry","isCTPONCNJSSupported","h" ) = "Yes" then%>
					<%else%>
						alert("SSIDAC" + strindex.toString() + " has been bound by other Interface, can not duplicate binding!");
					<%end if%>
				}
<% else %>
				else
				{
					strindex = i - 3;
					<%if TCWebApi_get("WebCustom_Entry","isCTPONCNJSSupported","h" ) = "Yes" then%>
					<%else%>
					<%if TCWebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h" ) = "Yes" then%>
					<%else%>
						alert("SSID" + strindex.toString() + " has been bound by other Interface, can not duplicate binding!");
					<%end if%>
					<%end if%>
				}
<% end if %>
				<%if TCWebApi_get("WebCustom_Entry","isCTPONCNJSSupported","h" ) = "Yes" then%>
					return true;
				<%else%>
				<%if TCWebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h" ) = "Yes" then%>
				return true;
				<%else%>
					return false;
				<%end if%>
				<%end if%>
			}
		}	
	}
	return true;
}

function getENCAPstatus()
{
	with (getElById('ConfigForm'))
	{
		if(wanMode.value == "Bridge")
		{
			ISPTypeValue.value = "3";
			EnCAPFlag.value = "1483 Bridged IP LLC";
		}
		else
		{
			if(linkMode.value == "linkPPP")
			{
				ISPTypeValue.value = "2";//pppoe mode
				EnCAPFlag.value = "PPPoE LLC";
			}
			else
				EnCAPFlag.value = "1483 Bridged IP LLC";
		}
	}
}

var wanLock = 0;
function btnSave()
{
	
	if (1 == wanLock) {
		return false;
	}
	if(CheckForm(1) == false)
		return false;
	getENCAPstatus();
	CheckIpVersionState();
	cb_enblServiceChange();
	EnableDHCPRealy();
	var	vForm = document.ConfigForm;

	if(vForm.linkMode.value == "linkPPP")
	{
		DialMethodChange();
		setText('pppManualStatus_Flag', 'disconnect');
	}
	vForm.Wan_Flag.value = "1";
	if(AddFlag == true){
		vForm.OperatorStyle.value = "Add";//add new
		if(checkBandBoxStatus(0) == false)
			return false;
		vForm.WanCurrIFIdx.value = getMaxIFIdx();
	}
	else{
		vForm.OperatorStyle.value = "Modify";//modify
		if(checkBandBoxStatus(1) == false)
			return false;
	}
	setDisable('btnRemoveCnt',1);
	setDisable('btnOK',1);
	setDisable('btnAddCnt',1);
	wanLock = 1;
	vForm.submit();
}

function btnAddWanCnt()
{
	if ((CurWan.length-1) >= 8)
	{
		alert("only create up to 8 WAN interfaces!");
		return;
	}
	if (AddFlag == true)
	{
		alert("Please save the new interface before adding a new one!");
		return;
	}
<% if tcwebApi_get("WanInfo_Common","NoGUIAccessLimit","h" ) <> "1" then %>
	LockTR69Node(0);
<% end if %>
	AddFlag = true;
	resetText();
	with (getElById('ConfigForm'))
	{
		AddOption(getElementByName('wanId'),-1,'New WAN interface',true);
		btnAddCnt.disabled = true;
		setSelect('linkMode', 'linkPPP');	
<% if tcwebApi_get("WanInfo_Common","NoGUIAccessLimit","h" ) <> "1" then %>
		isAddBtnClick = 1;
		ServiceListLoad(1);
<% end if %>
		setSelect('serviceList','INTERNET');
		setText('ConnectionFlag', "Connect_Keep_Alive");
		setCheck('cb_enblService',1);
		setSelect('wanMode',"Route");
		setSelect('bridgeMode', "PPPoE_Bridged");
<% if tcWebApi_get("WebCustom_Entry", "isPPPoEOnDemandWEBUISupported", "h") = "Yes"  then %>
		setSelect('ppp_DialMethod', "Connect_Keep_Alive");
		pppTimeOut.value = 30;
		pppondemand_idletime.value = parseInt(pppTimeOut.value) * 60;
<% end if %>
		lockObj('pppUserName',false);
		lockObj('pppPassword',false);
		lockObj('vlan',false);
		SelWanIndex = -1;
		enabledhcpSel = 1;
		WanModeChange();
		onChangeSvrList();
		IpMode[2].checked = true;
		IpModeChange();
		VLANModeChg();
		for (var i = 0; i < 4; i++)
		{
			var checkString = 'cb_bindlan' + (i+1);
			setCheck(checkString,0);
			checkString = 'cb_bindwireless' + (i+1);
			setCheck(checkString,0);
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>	 			
			checkString = 'cb_bindwirelessac' + (i+1);
			setCheck(checkString,0);
<% end if %>			
		}
		setRadio('pdmode', 'Yes');
<%if tcWebApi_get("WebCustom_Entry","isCTPONC9Supported","h" ) = "Yes" then%>
		setText('wanhwaddress', '00:00:00:00:00:00');
<%end if%>
		document.getElementById("table8").focus();
	}
}
function btnRemoveWanCnt()
{
	if ((CurWan.length - 1) == 0)
	{
		alert("Can not be deleted, you have not add any WAN interface!");
		return;
	}
	if (AddFlag == true)
	{
		alert("New WAN interfaces have not been saved, you can not do delete operation!");
		return;
	}
	<% if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") <> "Yes" then %>	
	if (confirm("Are you sure to delete this WAN interface?") == false)
	<%else%>
	if(confirm("Deleting the WAN interface may result in a lack of Internet access and other business interruptions. Click ok to drop the operation, and click cancel to delete the WAN connection"))
	<%end if%>
		return;

	var	vForm = document.ConfigForm;
	vForm.Wan_Flag.value = "3";
	for(var i=0; i<(CurWan.length-1); i++)
	{
		if(CurWan[i].domain != vForm.curSetIndex.value)
		{
			vForm.afterdeleteFlag.value = CurWan[i].domain;
			break;
		}
	}
	setDisable('btnRemoveCnt',1);
	setDisable('btnOK',1);
	setDisable('btnAddCnt',1);
	vForm.OperatorStyle.value = "Del";
	vForm.submit();
}

function OnIPv6Changed()
{
with (getElById('ConfigForm'))
{
	var linkstr = getSelectVal('linkMode');
	var AddrType = getSelectVal('IdIpv6AddrType');
	if (AddrType == 'SLAAC')
	{
				setDisplay('TrIpv6Addr', 0);
				setDisplay('TrIpv6Dns1', 0);
				setDisplay('TrIpv6Dns2', 0);
				setDisplay('TrIpv6GatewayInfo', 0);
				setDisplay('TrIpv6Gateway', 0);
				ISPTypeValue.value = "0";
	}
	else if (AddrType == 'DHCP')
	{
				setDisplay('TrIpv6Addr', 0);
				setDisplay('TrIpv6Dns1', 0);
				setDisplay('TrIpv6Dns2', 0);
				setDisplay('TrIpv6Gateway', 1);
				setDisplay('TrIpv6GatewayInfo', 1);
				ISPTypeValue.value = "0";
	}
	else if (AddrType == 'Static')
	{
				setDisplay('TrIpv6Addr', 1);
				setDisplay('TrIpv6Dns1', 1);
				setDisplay('TrIpv6Dns2', 1);
				setDisplay('TrIpv6Gateway', 1);
				setDisplay('TrIpv6GatewayInfo', 1);
				ISPTypeValue.value = "1";
	}
	dsliteShow();
	pdEnableShow();
}
}
function WriteIPv6List(index)
{
	var vmode = new Array("No", "Yes", "N/A");
	var ctrl = getElById('IdIpv6AddrType');
	for(var i=0; i<ctrl.options.length;)
	{
		ctrl.removeChild(ctrl.options[i]);
	}
	if(index == 0)
	{
		var aMenu = new Array("SLAAC","DHCP");
		for(i=0; i<aMenu.length; i++)
		{
			ctrl.options.add(new Option(aMenu[i],aMenu[i]));
			if(vCurrentDHCPv6 == vmode[i])
			{
				document.ConfigForm.IdIpv6AddrType.selectedIndex = i;
			}
		}
	}
	else if(index == 1)
	{
		var aMenu = new Array("SLAAC","DHCP","Static");
		for(i=0; i<aMenu.length; i++)
		{
			ctrl.options.add(new Option(aMenu[i],aMenu[i]));
			if(vCurrentDHCPv6 == vmode[i])
			{
				document.ConfigForm.IdIpv6AddrType.selectedIndex = i;
			}
		}
	}
	else if(index == 2)
	{
		var aMenu = "Static";
		ctrl.options.add(new Option(aMenu,aMenu));
	}
	OnIPv6Changed();
}

function WanIdChange()
{
	document.ConfigForm.Wan_Flag.value  = "2";
	document.ConfigForm.curSetIndex.value = getSelectVal('wanId');
	document.ConfigForm.submit();
}
								  </script></TD>
                      <TD><LABEL> 
                                  <select onChange=WanIdChange()  name=wanId id='wanId' >
                                  </select>
                                    <script language=JavaScript type=text/javascript>
					  WriteWanNameSelected();
					</script>
                                  <input type="hidden" name="Wan_Flag" value="0">
                                  <input type="hidden" name="EnCAPFlag" value="PPPoE">
                                  <input type="hidden" name="PPPGetIpFlag" value="Dynamic">
                                  <input type="hidden" name="ConnectionFlag" value="<% tcWebApi_get("WanInfo_WanIF","CONNECTION","s") %>">
                                  <input type="hidden" name="Enable_Flag" value="Yes">
                                  <input type="hidden" name="Disable_Flag" value="No">
                                  <input type="hidden" name="afterdeleteFlag" value="0">
                                  <input type="hidden" name="OperatorStyle" value="Add">
                                  <input type="hidden" name="dhcpv6pdflag" value="Yes">
                                  <input type="hidden" name="pppManualStatus_Flag" value="<% tcWebApi_get("WanInfo_WanIF","PPPManualStatus","s") %>">
                                  </LABEL></TD>
                                <TD> <INPUT id=btnAddCnt onClick="btnAddWanCnt()" type=button value="Add"> </TD>
                             </TR></TBODY></TABLE>
		 <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>Mode：</TD>
                      <TD width=200><LABEL>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
                      						<select id=select2 onChange=WanModeSelect() name="wanMode" style='display:none'>
                                    <option value="Route" <%if tcWebApi_get("WanInfo_WanIF","WanMode","h") = "Route" then asp_Write("selected") end if%>>Route 
                                    <option value="Bridge" <%if tcWebApi_get("WanInfo_WanIF","WanMode","h") = "Bridge" then asp_Write("selected") end if%>>Bridge 
                                  </select>
                      						<select id=wanModeShow onChange=WanModeSelect() name="wanModeShow" disabled='true'>
                                    <option value="Route" <%if tcWebApi_get("WanInfo_WanIF","WanMode","h") = "Route" then asp_Write("selected") end if%>>Route 
                                    <option value="Bridge" <%if tcWebApi_get("WanInfo_WanIF","WanMode","h") = "Bridge" then asp_Write("selected") end if%>>Bridge 
                                  </select>
<% else %>
                      						<select id=select2 onChange=WanModeSelect() name="wanMode">
                                    <option value="Route" <%if tcWebApi_get("WanInfo_WanIF","WanMode","h") = "Route" then asp_Write("selected") end if%>>Route 
<% if tcwebApi_get("WebCustom_Entry", "isHideBridge", "h") <> "Yes" then %>
                                    <option value="Bridge" <%if tcWebApi_get("WanInfo_WanIF","WanMode","h") = "Bridge" then asp_Write("selected") end if%>>Bridge 
<% end if %>
                                  </select>
<% end if %>
                                  </LABEL>
																</TD>
                                <TD>Enable：
                                  <LABEL>
                                  <INPUT id=cb_enblService onclick=cb_enblServiceChange() type=checkbox name=cb_enblService <%if tcWebApi_get("WanInfo_WanIF","Active","h") = "Yes" then asp_Write("checked") end if%>>
                             		<input id=enblService type=hidden name="enblService">
                                  </LABEL></TD></TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>Service:</TD>
                      <TD><LABEL>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
                      	<SELECT id=serviceList onchange=onSelectSvrList() name=serviceList style='display:none'> 
                                  </SELECT>
                      	<SELECT id=serviceListShow onchange=onSelectSvrList() name=serviceListShow disabled='true'> 
                                  </SELECT>
<% else %>
                      	<SELECT id=serviceList onchange=onSelectSvrList() name=serviceList> 
                                  </SELECT>
<% end if %>
                                   </LABEL>
                                  
																</TD>
<% if tcwebApi_get("WebCustom_Entry","isVOIPSupported","h") = "Yes" then %>
																<TD width=200>Note: If you change the service related with VoIP, please re-register your VoIP</TD>
<% end if %>
                                <TD>&nbsp;</TD></TR></TBODY></TABLE>

                  <TABLE style="DISPLAY: none" height=32 cellSpacing=0 
                  cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150 height="32">Enable binding:</TD>
                      <TD width=306><LABEL> 
                                  <INPUT id=cb_bindflag onclick=cb_bindflagChange() type=checkbox name="cb_bindflag" <%if tcWebApi_get("WanInfo_WanIF","BandActive","h") = "Yes" then asp_Write("checked") end if%>>
                                  <INPUT id=bindflag type=hidden value="<%tcWebApi_get("WanInfo_WanIF","BandActive","s") %>" name="bindflag">
                                  </LABEL></TD></TR></TBODY></TABLE>
                  <DIV id=secBind>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150 height="20">Binding Options:</TD>
                      <TD width="75"><LABEL></LABEL>
                        <DIV id=secLan1><INPUT id=cb_bindlan1 type=checkbox name=cb_bindlan1 <%if tcWebApi_get("WanInfo_WanIF","LAN1","h") = "Yes" then asp_Write("checked") end if%>> LAN1 
						<INPUT id=bindlan1 type=hidden value=0 name=bindlan1> 
						</DIV>
                       </TD>
                      <TD width="75">
                        <DIV id=secLan2>
						<INPUT id=cb_bindlan2 type=checkbox  name=cb_bindlan2 <%if tcWebApi_get("WanInfo_WanIF","LAN2","h") = "Yes" then asp_Write("checked") end if%>> LAN2 
						<INPUT id=bindlan2 type=hidden value=0 name=bindlan2> 
						</DIV>
                       </TD>
                      <TD width="77">
                        <DIV id=secLan3><INPUT id=cb_bindlan3 type=checkbox name=cb_bindlan3 <%if tcWebApi_get("WanInfo_WanIF","LAN3","h") = "Yes" then asp_Write("checked") end if%>> LAN3 <INPUT id=bindlan3 type=hidden 
                        value=0 name=bindlan3> </DIV>
                       </TD>
                      <TD width="79">
                        <DIV id=secLan4>
						<INPUT id=cb_bindlan4 type=checkbox name=cb_bindlan4 <%if tcWebApi_get("WanInfo_WanIF","LAN4","h") = "Yes" then asp_Write("checked") end if%>> LAN4 
						<INPUT id=bindlan4 type=hidden value=0 name=bindlan4> </DIV>
                        <LABEL></LABEL></TD></TR></TBODY></TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="wlanBindTab">
                    <TBODY>
                                <TR> 
                     <TD width=150 height="20">&nbsp;</TD>
            <% if TCWebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h" ) <> "Yes" then %>
                      <TD width="75"><LABEL></LABEL>
            <%else%>
                      <TD><LABEL></LABEL>
            <%end if%>
                        <DIV id=secWireless1>
						<INPUT id=cb_bindwireless1  type=checkbox name=cb_bindwireless1 <%if tcWebApi_get("WanInfo_WanIF","SSID1","h") = "Yes" then asp_Write("checked") end if%>> SSID1
						<INPUT id=bindwireless1 type=hidden value=0 name=bindwireless1> 
						</DIV></TD>
            <% if TCWebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h" ) <> "Yes" then %>
                      <TD width="75">
            <%else%>
                      <TD>
            <%end if%>
                        <DIV id=secWireless2>
						<INPUT id=cb_bindwireless2 type=checkbox name=cb_bindwireless2 <%if tcWebApi_get("WanInfo_WanIF","SSID2","h") = "Yes" then asp_Write("checked") end if%>> SSID2 <INPUT id=bindwireless2 
                        type=hidden value=0 name=bindwireless2> </DIV></TD>
            <% if TCWebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h" ) <> "Yes" then %>  
                      <TD width="77">
            <%else%>
                      <TD>
            <%end if%>	
                        <DIV id=secWireless3>
						<INPUT id=cb_bindwireless3 type=checkbox name=cb_bindwireless3 <%if tcWebApi_get("WanInfo_WanIF","SSID3","h") = "Yes" then asp_Write("checked") end if%>> SSID3 
						<INPUT id=bindwireless3 type=hidden value=0 name=bindwireless3> 
						</DIV></TD>
             <% if TCWebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h" ) <> "Yes" then %>
                      <TD width="79">
             <%else%>
                      <TD>
             <%end if%>
                        <DIV id=secWireless4><INPUT id=cb_bindwireless4 type=checkbox name=cb_bindwireless4 <%if tcWebApi_get("WanInfo_WanIF","SSID4","h") = "Yes" then asp_Write("checked") end if%>> SSID4 
						<INPUT id=bindwireless4 type=hidden value=0 name=bindwireless4> 
                        </DIV><LABEL></LABEL></TD></TR></TBODY></TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="wlanacBindTab">
				<TBODY>
				<TR> 
				<TD width=150 height="20">&nbsp;</TD>
				<TD width="75"><LABEL></LABEL>
				<DIV id=secWirelessac1>
					<INPUT id=cb_bindwirelessac1 type=checkbox name=cb_bindwirelessac1 <%if tcWebApi_get("WanInfo_WanIF","SSIDAC1","h") = "Yes" then asp_Write("checked") end if%>> SSIDAC1
					<INPUT id=bindwirelessac1 type=hidden value=0 name=bindwirelessac1> 
				</DIV></TD>
				<TD width="75">
				<DIV id=secWirelessac2>
					<INPUT id=cb_bindwirelessac2 type=checkbox name=cb_bindwirelessac2 <%if tcWebApi_get("WanInfo_WanIF","SSIDAC2","h") = "Yes" then asp_Write("checked") end if%>> SSIDAC2
					<INPUT id=bindwirelessac2 type=hidden value=0 name=bindwirelessac2> 
				</DIV></TD>
				<TD width="77">
				<DIV id=secWirelessac3>
					<INPUT id=cb_bindwirelessac3 type=checkbox name=cb_bindwirelessac3 <%if tcWebApi_get("WanInfo_WanIF","SSIDAC3","h") = "Yes" then asp_Write("checked") end if%>> SSIDAC3 
					<INPUT id=bindwirelessac3 type=hidden value=0 name=bindwirelessac3> 
				</DIV></TD>
				<TD width="79">
				<DIV id=secWirelessac4>
					<INPUT id=cb_bindwirelessac4 type=checkbox name=cb_bindwirelessac4 <%if tcWebApi_get("WanInfo_WanIF","SSIDAC4","h") = "Yes" then asp_Write("checked") end if%>> SSIDAC4
					<INPUT id=bindwirelessac4 type=hidden value=0 name=bindwirelessac4> 
				</DIV><LABEL></LABEL></TD></TR></TBODY></TABLE>
						</DIV>
                  <TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                    <TBODY>
		                <TR id='enabledhcpsec'>
		                      <TD width=150 >DHCP Server Enable：
		                      </TD>
		                      <TD>
		                            <INPUT id='cb_enabledhcp' type=checkbox name='cb_enabledhcp' <%if tcWebApi_get("WanInfo_WanIF","DHCPEnable","h") = "1" then asp_Write("checked") end if%>>
		                      			<INPUT id='enable_dhcp' type=hidden name='enable_dhcp'>
                                  <script language="JavaScript" type="text/JavaScript">
<% if TCWebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h" ) = "Yes" then %>
										var ssid1 = "<% tcWebApi_get("WLan_Entry0","EnableSSID","s") %>";
										var ssid2 = "<% tcWebApi_get("WLan_Entry1","EnableSSID","s") %>";
										var ssid3 = "<% tcWebApi_get("WLan_Entry2","EnableSSID","s") %>";
										var ssid4 = "<% tcWebApi_get("WLan_Entry3","EnableSSID","s") %>";
										if(ssid1 == "0" || ssid1 == "1")
											setDisplay('secWireless1', 1);
										else
											setDisplay('secWireless1', 0);
											
										if(ssid2 == "0" || ssid2 == "1")
											setDisplay('secWireless2', 1);
										else
											setDisplay('secWireless2', 0);
											
										if(ssid3 == "0" || ssid3 == "1")
											setDisplay('secWireless3', 1);
										else
											setDisplay('secWireless3', 0);
											
										if(ssid4 == "0" || ssid4 == "1")
											setDisplay('secWireless4', 1);
										else
											setDisplay('secWireless4', 0);
<%else%>                                  	
								  var validSSID = "<% tcWebApi_get("WLan_Common","BssidNum","s") %>";
								  if(validSSID == "1"){
								  	setDisplay('secWireless1', 1);
								  	setDisplay('secWireless2', 0);
								  	setDisplay('secWireless3', 0);
										setDisplay('secWireless4', 0);
								  }
								  else if(validSSID == "2"){
								  	setDisplay('secWireless1', 1);
								  	setDisplay('secWireless2', 1);
								  	setDisplay('secWireless3', 0);
										setDisplay('secWireless4', 0);
								  }
								  else if(validSSID == "3"){
										setDisplay('secWireless1', 1);
								  	setDisplay('secWireless2', 1);
								  	setDisplay('secWireless3', 1);
										setDisplay('secWireless4', 0);
								  }
								  else if(validSSID == "4"){
										setDisplay('secWireless1', 1);
								  	setDisplay('secWireless2', 1);
								  	setDisplay('secWireless3', 1);
										setDisplay('secWireless4', 1);
								  }
<% end if %>
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>										  
								  //wireless 5g
								  var validacSSID = "<% tcWebApi_get("WLan11ac_Common","BssidNum","s") %>";	
								  if(validacSSID == "1"){
								  	setDisplay('secWirelessac1', 1);
								  	setDisplay('secWirelessac2', 0);
								  	setDisplay('secWirelessac3', 0);
										setDisplay('secWirelessac4', 0);
								  }
								  else if(validacSSID == "2"){
								  	setDisplay('secWirelessac1', 1);
								  	setDisplay('secWirelessac2', 1);
								  	setDisplay('secWirelessac3', 0);
										setDisplay('secWirelessac4', 0);
								  }
								  else if(validacSSID == "3"){
										setDisplay('secWirelessac1', 1);
								  	setDisplay('secWirelessac2', 1);
								  	setDisplay('secWirelessac3', 1);
										setDisplay('secWirelessac4', 0);
								  }
								  else if(validacSSID == "4"){
										setDisplay('secWirelessac1', 1);
								  	setDisplay('secWirelessac2', 1);
								  	setDisplay('secWirelessac3', 1);
										setDisplay('secWirelessac4', 1);
								  }
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isCT1PORTSupported","h") = "Yes" then %>
										setDisplay('secLan2', 0);
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isCT2PORTSSupported","h") = "Yes" then %>
								  	setDisplay('secLan3', 0);
										setDisplay('secLan4', 0);
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","is3PORTSSupported","h") = "Yes" then %>
										setDisplay('secLan4', 0);
<% end if%>
<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) <> "Yes" then %>
										setDisplay('wlanBindTab', 0);
<% end if %>
<% if TCWebApi_get("WebCustom_Entry","isWLanACSupported","h" ) <> "Yes" then %>
										setDisplay('wlanacBindTab', 0);
<% end if %>
								  </script>
		                      </TD>
		                </TR>
                    </TBODY></TABLE>
                  <DIV id=divLink>
                  <TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>Link Mode:</TD>
                      <TD><LABEL> 
                                    <SELECT id=linkMode onchange=linkModeSelect() name="linkMode">
                                      <OPTION value="linkIP" <%if tcWebApi_get("WanInfo_WanIF","LinkMode","h") = "linkIP" then asp_Write("selected") end if%>>IPoE 
                                      <OPTION value="linkPPP" <%if tcWebApi_get("WanInfo_WanIF","LinkMode","h") = "linkPPP" then asp_Write("selected") end if%>>PPPoE
                                    </SELECT>
                                    </LABEL></TD></TR></TBODY></TABLE></DIV>
                  <DIV 
                  id=divIpVersion>IP Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <INPUT id=IpVersion onClick="pdDefaultSel=1;IpVersionChange();MTUDispChange();" type=radio value="IPv4" name="IpVersion" <%if tcWebApi_get("WanInfo_WanIF","IPVERSION", "h") = "IPv4" then asp_Write("checked") elseif tcWebApi_get("Wan_Entry","IPVERSION","h") = "N/A" then asp_Write("checked") end if%>>IPv4&nbsp;&nbsp; 
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") ="Yes" then %> 
<DIV style="display:none;">
<% end if %>
				  <INPUT id=IpVersion onClick="pdDefaultSel=1;IpVersionChange();MTUDispChange();" type=radio value="IPv6" name="IpVersion" <%if tcWebApi_get("WanInfo_WanIF","IPVERSION","h") = "IPv6" then  asp_Write("checked") end if%>>IPv6&nbsp;&nbsp; 
				  <INPUT id=IpVersion onClick="pdDefaultSel=1;IpVersionChange();MTUDispChange();" type=radio value="IPv4/IPv6" name="IpVersion" <%if tcWebApi_get("WanInfo_WanIF","IPVERSION","h") = "IPv4/IPv6" then asp_Write("checked") end if%>>IPv4/IPv6&nbsp;&nbsp; 
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") ="Yes" then %> 
</DIV>
<% end if %>
				  </DIV>
                          <input type="hidden" name="IPVersionValue" value="IPv4/IPv6">
                          <input type="hidden" name="ISPTypeValue" value="<% tcWebApi_get("WanInfo_WanIF","ISP","s") %>">
                          <BR>
                  <DIV id=secIpMode>
                  <DIV id=secDhcp>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150 height="20"><INPUT onClick="IpModeChange()" type=radio value="DHCP" name="IpMode" <%if tcWebApi_get("WanInfo_WanIF","ISP","h") = "0" then asp_Write("checked") end if%>> DHCP</TD>
                      <TD>Automatically get a dynamic IP address from your ISP.</TD></TR></TBODY></TABLE></DIV>
                  <DIV id=secStatic>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150><INPUT onClick="IpModeChange()" type=radio value="Static" name="IpMode" <%if tcWebApi_get("WanInfo_WanIF","ISP","h") = "1" then asp_Write("checked") end if%>> Static</TD>
                      <TD>Manually configure static IP address.</TD></TR></TBODY></TABLE></DIV>
                  <DIV id=secPppoe style="display:none">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150><INPUT onClick="IpModeChange()" type=radio value="PPPoE" name="IpMode" <%if tcWebApi_get("WanInfo_WanIF","ISP","h") = "2" then asp_Write("checked") end if%>> PPPoE</TD>
                      <TD>ISP uses PPPoE.</TD></TR></TBODY></TABLE></DIV>
                  <DIV id=secPppoa>
                  <TABLE style="DISPLAY: none" cellSpacing=0 cellPadding=0 
                  width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150><INPUT onClick="IpModeChange()" type=radio value="PPPoA" name="IpMode" <%if tcWebApi_get("WanInfo_WanIF","ISP","h") = "3" then asp_Write("checked") end if%>> PPPoA</TD>
                      <TD>ISP uses PPPoA.</TD></TR></TBODY></TABLE></DIV>
                  <DIV id=secIpoa>
                  <TABLE style="DISPLAY: none" cellSpacing=0 cellPadding=0 
                  width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150><INPUT onClick="IpModeChange()" type=radio  value="IPoA" name="IpMode" <%if tcWebApi_get("WanInfo_WanIF","ISP","h") = "4" then asp_Write("checked") end if%>> IPoA</TD>
                                    <TD>ISP uses IPoA. </TD>
                                  </TR></TBODY></TABLE></DIV><BR>
                          </DIV>
                  <DIV id=secBridgeType style="DISPLAY: none">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>Bridge Mode：</TD>
                      <TD><LABEL>
					  <SELECT id=bridgeMode name="bridgeMode"> 
                          <OPTION value="PPPoE_Bridged" <%if tcWebApi_get("WanInfo_WanIF","BridgeMode","h") = "PPPoE_Bridged" then asp_Write("selected") end if%>>PPPoE_Bridged</OPTION> 
						  <OPTION value="IP_Bridged" <%if tcWebApi_get("WanInfo_WanIF","BridgeMode","h") = "IP_Bridged" then asp_Write("selected") end if%>>IP_Bridged</OPTION></SELECT> 
                    </LABEL></TD></TR></TBODY></TABLE></DIV>
                  <DIV id=secbridgeDhcprelay style="DISPLAY: none">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>Enable DHCP transparent transmission:</TD>
                      <TD><LABEL>
                                    <INPUT id=cb_dhcprelay type=checkbox name=cb_dhcprelay onClick="EnableDHCPRealy()" <%if tcWebApi_get("WanInfo_WanIF","DHCPRealy","h") = "Yes" then asp_Write("checked") end if%>>
                                    <input type="hidden" name="dhcprelay" value="No">
                                    </LABEL></TD></TR></TBODY></TABLE></DIV>
				  <INPUT id=multMode type=hidden value=0 name=multMode>
				  
				  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				                    <TBODY>
				                    <TR>
		                      		<TD width=150>VLAN Mode：</TD>
		                      		<TD colspan='2'>
                                  <select id='VLANMode' onChange="VLANModeChg()" size=1 name='VLANMode'>
                                    <option value="TAG" <%if tcWebApi_get("WanInfo_WanIF","VLANMode","h") = "TAG" then asp_Write("selected") end if%>>TAG
                                    <option value="UNTAG"  <%if tcWebApi_get("WanInfo_WanIF","VLANMode","h") = "UNTAG" then asp_Write("selected") end if%>>UNTAG
                                    <option value="TRANSPARENT" <%if tcWebApi_get("WanInfo_WanIF","VLANMode","h") = "TRANSPARENT" then asp_Write("selected") end if%>>TRANSPARENT
                                  </select>
							  						  </TD>
	                    		  </TR>
				                    <TR id='vlansec'>
		                      		<TD>VLAN ID[1-4094]：</TD>
		                      		<TD colspan='2'>
                                  <INPUT id=vlan maxLength=4 size=5 name=vlan value="<%if tcWebApi_get("WanInfo_WanIF","VLANID","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","VLANID","s") end if%>">
							  						  		<INPUT id=vlanId type=hidden name=vlanId value="No">
							  						  		<INPUT id=vlanUNTAG type=hidden name=vlanUNTAG value="4096">
							  						  		<INPUT id=vlanTRANSPARENT type=hidden name=vlanTRANSPARENT value="4097">
							  						  </TD>
	                    		  </TR>
				                    <TR id='priosec'>
		                      		<TD>802.1p[0-7]：</TD>
		                      		<TD colspan='2'>
                                  <INPUT id=v8021P maxLength=1 size=5 name=v8021P value="<%if tcWebApi_get("WanInfo_WanIF","dot1pData","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","dot1pData","s") end if%>">
							  						  		<INPUT id=vlanPri type=hidden name=vlanPri value="No">
							  						  		<INPUT id=vlanPriNone type=hidden name=vlanPriNone value="0">
							  						  </TD>
	                    		  </TR>
	                    		  <TR id='mulvidsec'>
	                    		  	<TD>Multicast VLAN ID[1-4094]：</TD>
	                    		  	<TD colspan='2'>
	                    		  			<INPUT id=MulticastVID maxLength=4 size=5 name=MulticastVID value="<%if tcWebApi_get("WanInfo_WanIF","MulticastVID","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","MulticastVID","s") end if%>">
	                    		  			<input type="hidden" name="MulVIDUsed" value="No">
	                    		  	</TD>
	                    		  </TR>
	                    		  <TR id='MTUsec'>
	                    		  	<TD id='MIUDescrip'>MTU[1-1500]：</TD>
	                    		  	<TD colspan='2'>
	                    		  			<INPUT id=MTU maxLength=4 size=5 name=MTU value="<%if tcWebApi_get("WanInfo_WanIF","MTU","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","MTU","s") end if%>">
	                    		  	</TD>
	                    		  </TR>
	                    		  </TBODY>
                    		  </TABLE>
  
                  <DIV id=secNat>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>Enable NAT：</TD>
                      <TD><LABEL>
                                    <INPUT id=cb_nat type=checkbox name=cb_nat onClick="EnableNatClick()" <%if tcWebApi_get("WanInfo_WanIF","NATENABLE","h") = "Enable" then asp_Write("checked") end if%>>
                                    <INPUT id=nat type=hidden value="<% tcWebApi_get("WanInfo_WanIF","NATENABLE","s") %>" name="nat">
                                    </LABEL></TD></TR></TBODY></TABLE></DIV>
                  <DIV id=secIgmp>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR style="DISPLAY: none">
                      <TD width=150>Enable IGMP Proxy：</TD>
                      <TD><LABEL>
                                    <INPUT id=cb_enblIgmp type=checkbox name="cb_enblIgmp" <%if tcWebApi_get("WanInfo_WanIF","IGMPproxy","h") = "Yes" then asp_Write("checked") end if%>>
                                    <INPUT id=enblIgmp type=hidden value="No" name=enblIgmp>
                                    </LABEL></TD></TR></TBODY></TABLE></DIV>
                          <BR>

                  
                  <DIV id=secRouteItems>
                  <DIV id=secStaticItems style="DISPLAY: none">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>IP Address:</TD>
                      <TD><LABEL><INPUT id=wanIpAddress maxLength=15 size=15 name=wanIpAddress value="<%if TCWebApi_get("WanInfo_WanIF","IPADDR","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","IPADDR","s" ) end if %>"> </LABEL></TD></TR>
                    <TR>
                      <TD>Subnet Mask：</TD>
                      <TD><INPUT id=wanSubnetMask maxLength=15 size=15 name=wanSubnetMask value="<%if TCWebApi_get("WanInfo_WanIF","NETMASK","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","NETMASK","s" ) end if %>">
                                    </TD>
                                  </TR>
                    <TR>
                      <TD>Default Gateway:</TD>
                      <TD><INPUT id=defaultGateway maxLength=15 size=15 name=defaultGateway value="<%if TCWebApi_get("WanInfo_WanIF","GATEWAY","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","GATEWAY","s" ) end if %>"></TD></TR>
                    <TR>
                      <TD>Primary DNS Server：</TD>
                      <TD><INPUT id=dnsPrimary maxLength=15 size=15 name=dnsPrimary value="<%if tcWebApi_get("WanInfo_WanIF","DNS","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","DNS","s") end if%>"></TD></TR>
                    <TR>
                      <TD>Secondary DNS Server：</TD>
                      <TD><INPUT id=dnsSecondary maxLength=15 size=15 name=dnsSecondary value="<%if tcWebApi_get("WanInfo_WanIF","SecDNS","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","SecDNS","s") end if%>"></TD></TR></TBODY></TABLE></DIV>
                  <DIV id=secPppoeItems style="display:none">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>UserName:</TD>
                      <TD><LABEL>
<% if tcWebApi_get("WebCustom_Entry", "isCustomerBSNLSupported", "h") = "Yes"  then %>	
						<!--隐藏input用于保存完整username-->
						<input id="pppUserName" name="pppUserName" type="hidden" value="<%if TCWebApi_get("WanInfo_WanIF","USERNAME","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","USERNAME","s" ) end if %>">
						<!-- 显示username的前缀-->
					  	<INPUT id=pppUserNamePrefix style="FONT-FAMILY: 'Arial'" maxLength=63 size=15 
                        name=pppUserNamePrefix> 
						<script  language="JavaScript" type="text/JavaScript">
							getElementById('pppUserNamePrefix').value = removePppUserNameSuffix(getElementById('pppUserName').value);
						</script>
						<!--显示username的后缀-->
						<input  id="pppUserNameSuffix" name="pppUserNameSuffix" disabled="disabled" value="ftth.bsnl.in" style="border:0px">
<% else %>
						<INPUT id=pppUserName style="FONT-FAMILY: 'Arial'" maxLength=63 size=15 
                        name=pppUserName value="<%if TCWebApi_get("WanInfo_WanIF","USERNAME","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","USERNAME","s" ) end if %>">
<% end if %>
						</LABEL></TD></TR>
                    <TR>
                      <TD>Password：</TD>
                      <TD>
					  	<span id="inpsw"><INPUT id=pppPassword style="FONT-FAMILY: 'Arial'" type=password maxLength=63 size=15 name=pppPassword value="<% if TCWebApi_get("WanInfo_WanIF","PASSWORD","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","PASSWORD","s" ) end if %>"></span>
						<%if TCWebApi_get("WebCurSet_Entry","IsSupportShowPSW","h" ) = "1" then%>
                        <INPUT id="cb_enablshowpsw" onClick="doshowpswChange()" type=checkbox name="cb_enablshowpsw">Show Password
						<script language="JavaScript" type="text/JavaScript">
						
						function doshowpswChange() {
							with (getElById('ConfigForm')){
								var tempvalue = pppPassword.value;
								if (cb_enablshowpsw.checked) {
									inpsw.innerHTML = "<input id=\"pppPassword\" style=\"FONT-FAMILY: 'Arial'\" type=\"text\" maxLength=63 size=15 name=\"pppPassword\" value=" +document.ConfigForm.pppPassword.value+ ">";
								}
								else {
									inpsw.innerHTML = "<input id=\"pppPassword\" style=\"FONT-FAMILY: 'Arial'\" type=\"password\" maxLength=63 size=15 name=\"pppPassword\" value=" +document.ConfigForm.pppPassword.value+ ">";
								}
								pppPassword.value = tempvalue;
							}
						
						}
						
						</script>
						<%end if%></TD>
						
                    </TR>
<% if tcWebApi_get("WebCustom_Entry", "isPPPServerNameSupported", "h") = "Yes"  then %>
                    <TR>
                      <TD>Server Name：</TD>
                      <TD><INPUT id=pppServerName style="FONT-FAMILY: 'Arial'"  maxLength=63 size=15 name=pppServerName
              value="<%if TCWebApi_get("WanInfo_WanIF","SRVNAME","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","SRVNAME","s" ) end if %>"></TD>
                    </TR>
<% end if %>                    
<% if tcWebApi_get("WebCustom_Entry", "isPPPoEOnDemandWEBUISupported", "h") = "Yes"  then %>
								<TR>
								<TD>Dial Mode：</TD>
								<TD>
								<SELECT id='ppp_DialMethod' onchange='ppp_dialMethodChg()' name='ppp_DialMethod'> 
								<OPTION value="Connect_Keep_Alive" <%if TCWebApi_get("WanInfo_WanIF","CONNECTION","h" ) = "Connect_Keep_Alive" then asp_Write("selected") end if %>>Automatically connect</OPTION>
<% if tcWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
								<OPTION value="Connect_on_Demand" <%if tcWebApi_get("WanInfo_WanIF","CONNECTION","h") = "Connect_on_Demand" then asp_Write("selected")  end if%>>Automatically connect when there is traffic</OPTION>
<% end if %>
								</SELECT>
								<SELECT id='DialMethod' name='DialMethod' style='DISPLAY: none'>
								</SELECT>
								</TD>
								</TR>
<% else %>
<% if TCWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
                    <TR style='DISPLAY: none'>
                      <TD>Dial Mode：</TD>
                      <TD><SELECT id=DialMethod style="WIDTH: 117px" onchange=DialMethodChange() name=DialMethod></SELECT>
                                    </TD>
                                  </TR>
<% else %>
                    <TR>
                      <TD>Dial Mode：</TD>
                      <TD><SELECT id=DialMethod style="WIDTH: 117px" onchange=DialMethodChange() name=DialMethod> 
						<OPTION value="AlwaysOn" <%if TCWebApi_get("WanInfo_WanIF","CONNECTION","h" ) = "Connect_Keep_Alive" then asp_Write("selected") end if %>>Automatically connect</OPTION> 
						<OPTION value="Manual" <%if tcWebApi_get("WanInfo_WanIF","CONNECTION","h") = "Connect_Manually" then asp_Write("selected")  end if%>>Manual Dial</OPTION></SELECT>
                                    </TD>
                                  </TR>
<% end if %>
<% end if %>
                    <TR id=secManualDial style="DISPLAY: none">
                      <TD>&nbsp;</TD>
                      <TD><INPUT id=pppDialButton onclick=ManualCntSubmit() type=button value=Manual Dial name=pppDialButton> 
                      </TD></TR>
                    <TR id=secIdleTime style="DISPLAY: none">
                      <TD>
<% if tcWebApi_get("WebCustom_Entry", "isPPPoEOnDemandWEBUISupported", "h") = "Yes"  then %>
												No Traffic:
												 <input type="hidden" id='pppondemand_idletime' name='pppondemand_idletime' value="<%if tcWebApi_get("WanInfo_WanIF","CLOSEIFIDLE","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","CLOSEIFIDLE","s") end if%>" >
<% else %>
                      	Idle Timeout (minutes) [1-4320]
<% end if %>
                      	</TD>
                                    <TD> 
                                      <INPUT id=pppTimeOut maxLength=4 size=4 name=pppTimeOut>
<% if tcWebApi_get("WebCustom_Entry", "isPPPoEOnDemandWEBUISupported", "h") = "Yes"  then %>
																			minutes after disconnect
<% end if %>
                                      <input type="hidden" name="pppv6Mode" value="0">
                                    </TD>
                                  </TR>
<%if TCWebApi_get("WebCustom_Entry","isPPPoEProxySupported","h" ) = "Yes" then%>
					             <TR id='ppp_proxy_bi'>
				                      <TD>PPPoE proxy or bridge mixed:</TD>
				                      <TD>
				                            <INPUT id='ppp_proxy_bi_mode' onclick='ppp_proxy_bi_Change()' type=radio value="0" name="ppp_proxy_bi_mode" <%if tcWebApi_get("WanInfo_WanIF","pppProxyBiMode", "h") = "0" then asp_Write("checked") elseif tcWebApi_get("WanInfo_WanIF","pppProxyBiMode", "h") = "N/A" then asp_Write("checked") end if%>>Don't use PPPoe Poxy or route/bridge mix<br>
				                            <INPUT id='ppp_proxy_bi_mode' onclick='ppp_proxy_bi_Change()' type=radio value="1" name="ppp_proxy_bi_mode" <%if tcWebApi_get("WanInfo_WanIF","pppProxyBiMode","h") = "1" then asp_Write("checked") end if%>>use PPPoE Proxy<br>
				                            <INPUT id='ppp_proxy_bi_mode' onclick='ppp_proxy_bi_Change()' type=radio value="2" name="ppp_proxy_bi_mode" <%if tcWebApi_get("WanInfo_WanIF","pppProxyBiMode","h") = "2" then asp_Write("checked") end if%>>use PPPoE route/bridge mix<br>
				                      			<INPUT id='ppp_proxy_biUsed' type=hidden name='ppp_proxy_biUsed'>
				                      			<INPUT id='ppp_proxy_bi_disable' type=hidden name='ppp_proxy_bi_disable' value='0'>
				                      			<INPUT id='pppproxyDisabled' type=hidden name='pppproxyDisabled' value='0'>
				                      			<INPUT id='pppbiDisabled' type=hidden name='pppbiDisabled' value='No'>
						                      	<INPUT id='pppproxyEnabled' type=hidden name='pppproxyEnabled' value='1'>
				                      			<INPUT id='pppbiEnabled' type=hidden name='pppbiEnabled' value='Yes'>
				                      </TD>
					             </TR>
					             <TR id='ppp_proxy_user'>
				                      <TD> Maximum users[1-4] through Proxy：</TD>
				                      <TD>
				                            <INPUT id='pppproxy_user' maxLength=1 size=3 name='pppproxy_user' value="<%if tcWebApi_get("WanInfo_WanIF","ProxyMaxUser","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","ProxyMaxUser","s") end if%>">
				                      			<INPUT id='pppproxy_user_zero' type=hidden name='pppproxy_user_zero' value='0'>
				                      </TD>
					             </TR>
 <%else%>
              <TR id='ppp_bi'>
                      <TD>Enable mode that mixed with PPPoE,bridge and routing:</TD>
                      <TD>
                            <INPUT id='cb_enable_pppbi' type=checkbox name='cb_enable_pppbi' <%if tcWebApi_get("WanInfo_WanIF","BridgeInterface","h") = "Yes" then asp_Write("checked") end if%>>
                            <INPUT id='enablepppbi' type=hidden name='enablepppbi'>
                            <INPUT id='pppbiUsed' type=hidden name='pppbiUsed'>
                            <INPUT id='pppbiDisabled' type=hidden name='pppbiDisabled' value='No'>
                      </TD>
             </TR>
 <%end if%>   
                   </TBODY></TABLE></DIV></DIV>
                  <DIV id=secIPv6Div style="display:none">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR id=TrIpv6AddrType>
                      <TD width=150>Source of information for IPv6 Wan interface:</TD>
								<TD><select id="IdIpv6AddrType" style="WIDTH: 130px" onChange="pdDefaultSel=1;OnIPv6Changed();" name="IdIpv6AddrType">
									  <option value="SLAAC" <%if TCWebApi_get("WanInfo_WanIF","DHCPv6","h" ) = "No" then asp_Write("selected") end if %>>SLAAC 
                                      <option value="DHCP" <%if TCWebApi_get("WanInfo_WanIF","DHCPv6","h" ) = "Yes" then asp_Write("selected") end if %>>DHCP
									  <option value="Static" <%if TCWebApi_get("WanInfo_WanIF","DHCPv6","h" ) = "N/A" then asp_Write("selected") end if %>>Static 
									</select>
                                 </TD>
                                </TR>
                    <TR id=TrIpv6Addr>
                      <TD>IPv6 address:</TD>
                      <TD><INPUT id=IdIpv6Addr maxLength=39 size=36 name=IdIpv6Addr value="<%if TCWebApi_get("WanInfo_WanIF","IPADDR6","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","IPADDR6","s" ) end if %>">&nbsp;/ 
					  <INPUT id=IdIpv6PrefixLen maxLength=3 size=3 name=IdIpv6PrefixLen value="<% if TCWebApi_get("WanInfo_WanIF","PREFIX6","h" ) <> "N/A" then TCWebApi_get("WanInfo_WanIF","PREFIX6","s" ) end if %>"> 
					  </TD></TR>
                    <TR id=TrIpv6Gateway>
                      <TD>IPv6 Default Gateway:</TD>
                      <TD><INPUT id=IdIpv6Gateway maxLength=39 size=36 name=IdIpv6Gateway value="">
                                    <script language="JavaScript" type="text/JavaScript">
									var ipv6gwstr = "<% tcWebApi_get("WanInfo_WanIF","GATEWAY6","s" ) %>";
									if("N/A" == ipv6gwstr)
										setText('IdIpv6Gateway', "");
									else
										setText('IdIpv6Gateway', ipv6gwstr);
									</script></TD></TR>
					<TR id="TrIpv6GatewayInfo">
					<TD></TD>
					<TD>(It's empty in the IPv6 default gateway, it will be automatically filled in later)</TD></TR>
                    <TR id=TrIpv6Dns1>
                      <TD>IPv6 Primary DNS Server:</TD>
                      <TD><INPUT id=IdIpv6Dns1 maxLength=39 size=36 name=IdIpv6Dns1 value="<%if tcWebApi_get("WanInfo_WanIF","DNS6","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","DNS6","s") end if%>"></TD></TR>
                    <TR id=TrIpv6Dns2>
                      <TD>IPv6 Secondary DNS Server:</TD>
                      <TD><INPUT id=IdIpv6Dns2 maxLength=39 size=36 name=IdIpv6Dns2 value="<%if tcWebApi_get("WanInfo_WanIF","SecDNS6","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","SecDNS6","s") end if%>">
		</TD></TR>
                		  <TR id='PDEnableSec'>
                		  	<TD id='PDEnableDescrip'>PD Enable：</TD>
                		  	<TD>
                            <INPUT id='cb_enabledpd' type=checkbox onclick='cb_pdEnableChange()' name='cb_enabledpd' <%if tcWebApi_get("WanInfo_WanIF","PDEnable","h") = "Yes" then asp_Write("checked") end if%>>
                            <INPUT id='enablepd' type=hidden name='enablepd'>
                            <INPUT id='PDUsed' type=hidden name='PDUsed'>
                            <INPUT id='PDDisabled' type=hidden name='PDDisabled' value='No'>
                		  	</TD>
                		  </TR>
				             <TR id='pdmode_1'>
				                      <TD>Prefix Mode:</TD>
				                      <TD>
				                            <INPUT id='pdmode' onclick='pdmodeChange()' type=radio value="Yes" name="pdmode" <%if tcWebApi_get("WanInfo_WanIF","PDOrigin", "h") <> "Static" then asp_Write("checked") end if%>>Auto&nbsp;&nbsp; 
				                            <INPUT id='pdmode' onclick='pdmodeChange()' type=radio value="No" name="pdmode" <%if tcWebApi_get("WanInfo_WanIF","PDOrigin","h") = "Static" then asp_Write("checked") end if%>>Manual&nbsp;&nbsp; 
				                            <INPUT id='pdmodeUsed' type=hidden name='pdmodeUsed'>
				                            <INPUT id='pdmodeDisabled' type=hidden name='pdmodeDisabled' value='No'>
				                            <INPUT id='pdmodeAuto' type=hidden name='pdmodeAuto' value='PrefixDelegation'>
				                            <INPUT id='pdmodeStatic' type=hidden name='pdmodeStatic' value='Static'>
				                            <INPUT id='pdmodeNone' type=hidden name='pdmodeNone' value='None'>
				                      </TD>
				             </TR>
				             <TR id='pdmode_2'>
				                      <TD>Prefix Address:</TD>
				                      <TD>
				                            <INPUT id='pdprefix' maxLength=39 size=36 name='pdprefix' value="<%if tcWebApi_get("WanInfo_WanIF","PDPrefix","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","PDPrefix","s") end if%>">
				                      </TD>
				             </TR>
				             <TR id='pdmode_3'>
				                      <TD> Primary life：</TD>
				                      <TD>
				                            <INPUT id='pdprefixptime' maxLength=10 size=10 name='pdprefixptime' value="<%if tcWebApi_get("WanInfo_WanIF","PrefixPltime","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","PrefixPltime","s") end if%>">
				                            <STRONG style="COLOR: #ff0033">*</STRONG>[600 - 4294967295 s]
				                      </TD>
				             </TR>
				             <TR id='pdmode_4'>
				                      <TD>Active life:</TD>
				                      <TD>
				                            <INPUT id='pdprefixvtime' maxLength=10 size=10 name='pdprefixvtime' value="<%if tcWebApi_get("WanInfo_WanIF","PrefixVltime","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","PrefixVltime","s") end if%>">
				                            <STRONG style="COLOR: #ff0033">*</STRONG>[600 - 4294967295 s]
				                      </TD>
				             </TR>
<%if TCWebApi_get("WebCustom_Entry","isDSLiteSupported","h" ) = "Yes" then%>
             <TR id='dslite_1'>
                      <TD>DS-Lite Enable：</TD>
                      <TD>
                            <INPUT id='cb_enabledslite' onclick=cb_enabledsliteChange() type=checkbox name='cb_enabledslite' <%if tcWebApi_get("WanInfo_WanIF","DsliteEnable","h") = "Yes" then asp_Write("checked") end if%>>
                            <INPUT id='enabledslite' type=hidden name='enabledslite'>
                            <INPUT id='dsliteUsed' type=hidden name='dsliteUsed'>
                            <INPUT id='dsliteDisabled' type=hidden name='dsliteDisabled' value='No'>
                      </TD>
             </TR>
             <TR id='dslite_2'>
                      <TD>DS-Lite Mode：</TD>
                      <TD>
                            <INPUT id='dslitemode' onclick='dslitemodeChange()' type=radio value="0" name="dslitemode" <%if tcWebApi_get("WanInfo_WanIF","DsliteMode", "h") = "0" then asp_Write("checked") elseif tcWebApi_get("WanInfo_WanIF","DsliteMode","h") = "N/A" then asp_Write("checked") end if%>>Auto&nbsp;&nbsp; 
                            <INPUT id='dslitemode' onclick='dslitemodeChange()' type=radio value="1" name="dslitemode" <%if tcWebApi_get("WanInfo_WanIF","DsliteMode","h") = "1" then  asp_Write("checked") end if%>>Manual&nbsp;&nbsp; 
                      </TD>
             </TR>
             <TR id='dslite_3'>
                      <TD>DS-Lite Server：</TD>
                      <TD>
                            <INPUT id='dsliteaddress' maxLength=39 size=36 name='dsliteaddress' value="<%if tcWebApi_get("WanInfo_WanIF","DsliteAddr","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","DsliteAddr","s") end if%>">
                      </TD>
             </TR>
 <%end if%>
		</TBODY></TABLE></DIV>
<%if tcWebApi_get("WebCustom_Entry","isCTPONC9Supported","h" ) = "Yes" then%>
						<script language='JavaScript' type='text/JavaScript'>
							function CloneMAC()
							{
								var pcMAC = '<%tcWebApi_get("PC","PCMAC","s")%>';

								with ( getElById('ConfigForm') )
								{
									if ( 0 != pcMAC.length
											&& 'N/A' != pcMAC )
									{
										wanhwaddress.value = pcMAC;
										alert('Get Success');
									}
									else
										alert('Get Failed');
								}
							}
						</script>
						<div id=secCloneMAC>
                  <table cellSpacing=0 cellPadding=0 width='100%' border=0>
                    <tbody>
					             <tr>
					                      <td width='150'>WAN interface MAC address:</td>
					                      <td>
					                            <input id='wanhwaddress' maxLength=17 size=20 name='wanhwaddress' value="<%if tcWebApi_get("WanInfo_WanIF","WanHWAddr","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","WanHWAddr","s") else asp_write("00:00:00:00:00:00") end if%>">
					                            &nbsp;&nbsp;&nbsp;
					                            <input id='btnCloneMAC' onclick='CloneMAC()' type=button value='Get PC MAC'>
					                      </td>
					             </tr>
					             <tr>
					                      <td>&nbsp;</td>
					                      <td>
					                            (All 0 indicates no modification)
					                      </td>
					             </tr>
                    </tbody>
                  </table>
						</div>
<%end if%>
													<LABEL></LABEL><BR>
                          <LEFT> 
                          <INPUT id=btnRemoveCnt onClick="btnRemoveWanCnt()" type=button value=Delete Connection >
                          </LEFT></TD>
                      </TR>
              <TR>
                <TD><INPUT id=pppIdleTimeout type=hidden value=0 name=pppIdleTimeout>
                <INPUT type=hidden name=xponstate value="Yes">
                <input type='hidden' id='Option60Enable1' name='Option60Enable1' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Enable1","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Enable1","s") end if%>">
                <input type='hidden' id='Option60Enable2' name='Option60Enable2' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Enable2","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Enable2","s") end if%>">
                <input type='hidden' id='Option60Enable3' name='Option60Enable3' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Enable3","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Enable3","s") end if%>">
                <input type='hidden' id='Option60Enable4' name='Option60Enable4' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Enable4","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Enable4","s") end if%>">
                
                <input type='hidden' id='Option60Type1' name='Option60Type1' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Type1","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Type1","s") end if%>">
                <input type='hidden' id='Option60Type2' name='Option60Type2' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Type2","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Type2","s") end if%>">
                <input type='hidden' id='Option60Type3' name='Option60Type3' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Type3","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Type3","s") end if%>">
                <input type='hidden' id='Option60Type4' name='Option60Type4' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Type4","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Type4","s") end if%>">

                <input type='hidden' id='Option60ValueMode1' name='Option60ValueMode1' value="<%if tcWebApi_get("WanInfo_WanIF","Option60ValueMode1","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60ValueMode1","s") end if%>">
                <input type='hidden' id='Option60ValueMode2' name='Option60ValueMode2' value="<%if tcWebApi_get("WanInfo_WanIF","Option60ValueMode2","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60ValueMode2","s") end if%>">
                <input type='hidden' id='Option60ValueMode3' name='Option60ValueMode3' value="<%if tcWebApi_get("WanInfo_WanIF","Option60ValueMode3","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60ValueMode3","s") end if%>">
                <input type='hidden' id='Option60ValueMode4' name='Option60ValueMode4' value="<%if tcWebApi_get("WanInfo_WanIF","Option60ValueMode4","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60ValueMode4","s") end if%>">

                <input type='hidden' id='Option60Value1' name='Option60Value1' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Value1","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Value1","s") end if%>">
                <input type='hidden' id='Option60Value2' name='Option60Value2' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Value2","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Value2","s") end if%>">
                <input type='hidden' id='Option60Value3' name='Option60Value3' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Value3","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Value3","s") end if%>">
                <input type='hidden' id='Option60Value4' name='Option60Value4' value="<%if tcWebApi_get("WanInfo_WanIF","Option60Value4","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","Option60Value4","s") end if%>">

                </TD></TR></TBODY></TABLE></FORM></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff></TD>
		  <TD width=7 bgColor=#ffffff border=0></TD>
          <TD bgColor=#ffffff width=280>&nbsp;</TD>
          <TD  bgColor=#ffffff width=393>
            <P align=center><INPUT type=button value="Apply" id=btnOK onClick="btnSave();" height=23 
             width=80 border=0>&nbsp;&nbsp;<INPUT type=button value="Cancel" 
            id=btnCancel onclick=onCancel() height=23 
             width=80 border=0> </P></TD>
          <TD class=cus_help width=169>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<script language="JavaScript">
function lockObj(objName, readST)
{
	if ( null != getElById(objName) )
	{
		getElById(objName).readOnly = readST;
		getElById(objName).style.color = readST ? 'gray' : '';
	}
}
var UsernameOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aPPPUsername","s")%>";
var PasswordOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aPPPPassword","s")%>";
var VLANIDOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aVLANIDMark","s")%>";
if(UsernameOpenFlag == "0")
	lockObj('pppUserName', true);
if(PasswordOpenFlag == "0")
	lockObj('pppPassword', true);
if(VLANIDOpenFlag == "0")
	lockObj('vlan', true);
</script>
</BODY></HTML>
