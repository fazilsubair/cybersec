<%
if Request_Form("IPV4_Flag") = "1" then
	if tcwebApi_get("Lan_Entry","IP","h") <> Request_Form("ethIpAddress") then
		TCWebApi_constSet("Account_Entry0","Logged","0")
		TCWebApi_constSet("Account_Entry0","Logoff","1")
		TCWebApi_constSet("Account_Entry1","Logged","0")
		TCWebApi_constSet("Account_Entry1","Logoff","1")
		TCWebApi_constSet("Account_Entry2","Logged","0")
		TCWebApi_constSet("Account_Entry2","Logoff","1")
		TCWebApi_set("Lan_Entry","IP","ethIpAddress")
	end if
	TCWebApi_set("Lan_Entry","netmask","ethSubnetMask")
	TCWebApi_set("Lan_Dhcp","type","dhcpSrvType")
	if tcwebApi_get("WebCustom_Entry","isLocalDomainNameSupported","h") ="Yes" then

		TCWebApi_set("Lan_Entry0","Domain","DomainFlag")
		TCWebApi_set("Lan_Entry0","dnsmasqRebootflag","dnsmasqRebootflag")
	end if 
	TCWebApi_commit("Lan")
	
	if Request_Form("dhcpSrvType") = "0" then
		TCWebApi_unset("DhcpRelay_Entry")
        TCWebApi_commit("Dhcpd_Common")
	end if
	
	if Request_Form("dhcpSrvType") = "1" then
		TCWebApi_set("Dhcpd_Common","lease","dhcpLeasedTimeFrag")
		TCWebApi_set("Dhcpd_Common","start","dhcpEthStart")
		TCWebApi_set("Dhcpd_Common","pool_count","EthendIPcount")
		TCWebApi_set("Dhcpd_Common","autoDNS","autoDNSvalue")
		TCWebApi_set("Dhcpd_Common", "preferredDNS", "preferredDNS")
		TCWebApi_set("Dhcpd_Common", "alternateDNS", "alternateDNS")
		TCWebApi_set("Dhcpd_Option60","DeviceStyle","IpPoolIndex")
		TCWebApi_set("Dhcpd_Option60","lease","dhcpLeasedTimeFrag")
		if Request_Form("RouteIPChangeFlag") = "1" then
			TCWebApi_set("Dhcpd_Option60","startSTB","dhcpEthStart")
			TCWebApi_set("Dhcpd_Option60","pool_countSTB","EthendIPcount")
			TCWebApi_set("Dhcpd_Option60","startPhone","dhcpEthStart")
			TCWebApi_set("Dhcpd_Option60","pool_countPhone","EthendIPcount")
			TCWebApi_set("Dhcpd_Option60","startCamera","dhcpEthStart")
			TCWebApi_set("Dhcpd_Option60","pool_countCamera","EthendIPcount")
			TCWebApi_set("Dhcpd_Option60","startHGW","dhcpEthStart")
			TCWebApi_set("Dhcpd_Option60","pool_countHGW","EthendIPcount")
			TCWebApi_set("Dhcpd_Option60","start","dhcpEthStart")
			TCWebApi_set("Dhcpd_Option60","pool_count","EthendIPcount")
	  end if
		if Request_Form("IpPoolIndex") = "STB" then
			TCWebApi_set("Dhcpd_Option60","startSTB","dhcpEthStartFrag")
			TCWebApi_set("Dhcpd_Option60","pool_countSTB","DeviceendIPcount")
		elseif Request_Form("IpPoolIndex") = "Phone" then
			TCWebApi_set("Dhcpd_Option60","startPhone","dhcpEthStartFrag")
			TCWebApi_set("Dhcpd_Option60","pool_countPhone","DeviceendIPcount")
		elseif Request_Form("IpPoolIndex") = "Camera" then
			TCWebApi_set("Dhcpd_Option60","startCamera","dhcpEthStartFrag")
			TCWebApi_set("Dhcpd_Option60","pool_countCamera","DeviceendIPcount")
		elseif Request_Form("IpPoolIndex") = "HGW" then
			TCWebApi_set("Dhcpd_Option60","startHGW","dhcpEthStartFrag")
			TCWebApi_set("Dhcpd_Option60","pool_countHGW","DeviceendIPcount")
		else
			TCWebApi_set("Dhcpd_Option60","start","dhcpEthStartFrag")
			TCWebApi_set("Dhcpd_Option60","pool_count","DeviceendIPcount")
		end if
		
		TCWebApi_unset("DhcpRelay_Entry")
		TCWebApi_commit("Dhcpd_Common")
		TCWebApi_commit("Dhcpd_Option60")
	end if
	
	if Request_Form("dhcpSrvType") = "2" then
		TCWebApi_set("DhcpRelay_Entry","Server","dhcpRelayServerIP")
		TCWebApi_set("DhcpRelay_Entry","circuitId","dhcpRelaycircuitId")
		TCWebApi_set("DhcpRelay_Entry","remoteId","dhcpRelayremoteId")

		TCWebApi_commit("DhcpRelay_Entry")
        TCWebApi_commit("Dhcpd_Common")
	end if

	TCWebApi_save()
end if

if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") <>"Yes" then
if Request_Form("RA_Flag") = "1" then
	TCWebApi_set("Radvd_Entry","Enable","RAEnable_Flag")
	TCWebApi_set("Radvd_Entry","Mode","RAMode")
	if Request_Form("RAMode") = "1" then
		TCWebApi_set("Radvd_Entry","PrefixIPv6","radvdPrefix")
		TCWebApi_set("Radvd_Entry","Prefixv6Len","RAPrefixLen")
		TCWebApi_set("Radvd_Entry","PreferredLifetime","RAt1")
		TCWebApi_set("Radvd_Entry","ValidLifetime","RAt2")
		TCWebApi_set("Radvd_Entry","ManagedEnable","RAManagedEn_Flag")
		TCWebApi_set("Radvd_Entry","OtherEnable","RAOtherEn_Flag")
		TCWebApi_set("Radvd_Entry","MinRAInterval","RACycMin")
		TCWebApi_set("Radvd_Entry","MaxRAInterval","RACycMax")
		TCWebApi_constSet("Radvd_Entry","AutoPrefix","1")
	else
		TCWebApi_constSet("Radvd_Entry","AutoPrefix","0")
		TCWebApi_set("Radvd_Entry","ManagedEnable","RAManagedEn_Flag")
		TCWebApi_set("Radvd_Entry","OtherEnable","RAOtherEn_Flag")
		TCWebApi_set("Radvd_Entry","DelegatedWanConnection","rapdsource")
	end if
	
	TCWebApi_commit("Radvd_Entry")
	TCWebApi_save()
end if

if Request_Form("Dhcp1_Flag") = "1" then
	TCWebApi_set("Dhcp6s_Entry","Enable","EnDHCPServerFlag")
	if Request_Form("EnDHCPServerFlag") = "1" then
		TCWebApi_set("Dhcp6s_Entry","Mode","DHCPSetTypeFlag")
		if Request_Form("DHCPSetTypeFlag") = "1" then
			TCWebApi_set("Dhcp6s_Entry","AddrFormat","AddrFormat")
			TCWebApi_set("Dhcp6s_Entry","PrefixIPv6","dhcpPrefix")
			TCWebApi_set("Dhcp6s_Entry","Prefixv6Len","PrefixLen")
			TCWebApi_set("Dhcp6s_Entry","PreferredLifetime","t1")
			TCWebApi_set("Dhcp6s_Entry","ValidLifetime","t2")
			TCWebApi_set("Dhcp6s_Entry","DNSserver","DnsSrvOne")
			TCWebApi_set("Dhcp6s_Entry","SecDNSserver","DnsSrvTwo")
			TCWebApi_constSet("Dhcp6s_Entry","DNSType","1")
		else
			if Request_Form("dnssource") = "999" then
				TCWebApi_constSet("Dhcp6s_Entry","DNSType","2")
			elseif Request_Form("dnssource") = "998" then
				TCWebApi_constSet("Dhcp6s_Entry","DNSType","1")
				TCWebApi_set("Dhcp6s_Entry","DNSserver","DnsSrvOne_Source")
				TCWebApi_set("Dhcp6s_Entry","SecDNSserver","DnsSrvTwo_Source")
			else
				TCWebApi_constSet("Dhcp6s_Entry","DNSType","0")
				TCWebApi_set("Dhcp6s_Entry","DNSWANConnection","dnssource")
			end if
		end if
	end if

	TCWebApi_commit("Dhcp6s_Entry")
	TCWebApi_save()
end if
end if
if tcWebApi_get("WebCustom_Entry", "isLoopdetectSupported", "h") = "Yes" then
if Request_Form("loopdetectFlag") = "1" then
 	TCWebApi_set("LoopDetect_Entry","Enable","ethLooppGlobalEnValue")
 	TCWebApi_set("LoopDetect_Entry","LoopExistPeriod","LoopExistPeriod")
 	TCWebApi_set("LoopDetect_Entry","LoopCancelPeriod","LoopCancelPeriod")
 	TCWebApi_set("LoopDetect_Entry","LoopDetectMask","LoopDetectMask")
 	tcWebApi_commit("LoopDetect")
 	TCWebApi_save()
 end if

end if
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>DHCP Setting</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>

<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
<SCRIPT language=JavaScript type=text/javascript>

function LoadFrame()
 {
 
	with (document.forms[0])
	{
		dhcpSecPortRelay();
		IPV4_Flag.value = "0";
		typeClick();
    <% if tcwebApi_get("WebCustom_Entry","isCustomerComway","h") = "Yes" then %>
    //dhcpSrvType[0].disabled = true;
    //dhcpSrvType[0].style.display = "none";
    setDisplay('dhcpSrvType0', 0);
    <% end if %> 
		IpPoolIndexChange();
		oldAddrPrimary = ethIpAddress.value ;
		oldMaskPrimary = ethSubnetMask.value;
	}
	with (document.forms[1])
	{
		RA_Flag.value = "0";
		RAUseWanChange();
		RATypeClick();
	}
	with (document.forms[2])
	{
		Dhcp1_Flag.value = "0";
		typev6Click();
		UseWanChange();
	}
 <% if tcWebApi_get("WebCustom_Entry", "isLoopdetectSupported", "h") = "Yes"  then %>	
  	var LoopDetectEnable = '<% tcWebApi_get("LoopDetect_Entry","Enable","s") %>';
 	getElementByName('LoopExistPeriod').value = '<% tcWebApi_get("LoopDetect_Entry","LoopExistPeriod","s") %>';
 	getElementByName('LoopCancelPeriod').value = '<% tcWebApi_get("LoopDetect_Entry","LoopCancelPeriod","s") %>';
 	var LoopDetectMask = '<% tcWebApi_get("LoopDetect_Entry","LoopDetectMask","s") %>';
 	var ETH1_Status = '<% tcWebApi_get("LoopDetect_Status","ETH1_Status","s") %>';

 	
 
 
 	if (LoopDetectEnable == 'Yes')
 	{
 		setCheck('ethLoopGlobalEnId', 1);
 	}
 	else
 	{
 		setCheck('ethLoopGlobalEnId', 0);
 	}
 	
 	if (1 == getCheckVal('ethLoopGlobalEnId'))
 	{
 		getElById('ethLooppGlobalEnValue').value = 'Yes';
 	}
 	else
 	{
 		getElById('ethLooppGlobalEnValue').value = 'No';
 	}
 
 	if (LoopDetectMask>>0 & 0x01) {
 		setCheck('eth1LoopEnId', 1);
 	} else {
 		setCheck('eth1LoopEnId', 0);
 	}
 
 	

 
 	getElById('ETH1_Status').innerHTML = ETH1_Status;
	 if (ETH1_Status != 'NO_LOOP')
 	getElById('ETH1_Status').style.cssText="color:red;";
   <% if tcwebApi_get("WebCustom_Entry","isCT1PORTSupported","h") <> "Yes" then %>
	   	var ETH2_Status = '<% tcWebApi_get("LoopDetect_Status","ETH2_Status","s") %>';
	  if (LoopDetectMask>>1 & 0x01) {
 		setCheck('eth2LoopEnId', 1);
 	} else {
 		setCheck('eth2LoopEnId', 0);
 	}
		getElById('ETH2_Status').innerHTML = ETH2_Status;
		if (ETH2_Status != 'NO_LOOP')
 		getElById('ETH2_Status').style.cssText="color:red;";
  
	<% if tcwebApi_get("WebCustom_Entry","isCT2PORTSSupported","h") <> "Yes" then %>
	  var ETH3_Status = '<% tcWebApi_get("LoopDetect_Status","ETH3_Status","s") %>';
	  	if (LoopDetectMask>>2 & 0x01) {
 		setCheck('eth3LoopEnId', 1);
 	} else {
 		setCheck('eth3LoopEnId', 0);
 	}
 	getElById('ETH3_Status').innerHTML = ETH3_Status;
		if (ETH3_Status != 'NO_LOOP')
 		getElById('ETH3_Status').style.cssText="color:red;";
	
	<% if tcwebApi_get("WebCustom_Entry","is3PORTSSupported","h") <> "Yes" then %>
	  	var ETH4_Status = '<% tcWebApi_get("LoopDetect_Status","ETH4_Status","s") %>';
 	if (LoopDetectMask>>3 & 0x01) {
 		setCheck('eth4LoopEnId', 1);
 	} else {
 		setCheck('eth4LoopEnId', 0);
 	}
 	getElById('ETH4_Status').innerHTML = ETH4_Status;
	 	if (ETH4_Status != 'NO_LOOP')
 		getElById('ETH4_Status').style.cssText="color:red;";
	 <% end if %>
	   <% end if %>
	   <% end if %>
 
 <% end if %>


 }
  <% if tcWebApi_get("WebCustom_Entry", "isLoopdetectSupported", "h") = "Yes"  then %>	
 function btnSaveLoopDetect()
 {
 	if (1 == getCheckVal('ethLoopGlobalEnId'))
 	{
 		if (!confirm("Open loop detection, and when the loop is generated, the corresponding port will be closed，Is it sure to open?"))
 		{
 			return;
 		}
 	}
 
 	if (0 == getCheckVal('ethLoopGlobalEnId'))
 	{
 		if (!confirm("Closing loop detection may lead to network anomalies，Is it sure to close?"))
 		{
 			return;
 		}
 	}
 
 	if (1 == getCheckVal('ethLoopGlobalEnId'))
 	{
 		getElById('ethLooppGlobalEnValue').value = 'Yes';
 	}
 	else
 	{
 		getElById('ethLooppGlobalEnValue').value = 'No';
 	}
 	
 	if (getCheckVal('eth1LoopEnId')) {
 		getElementByName('LoopDetectMask').value |= ((0x1<<0)&0xFF);
 	} else {
 		getElementByName('LoopDetectMask').value &= ~((0x1<<0)&0xFF);
 	}
 <% if tcwebApi_get("WebCustom_Entry","isCT1PORTSupported","h") <> "Yes" then %>

 	if (getCheckVal('eth2LoopEnId')) {
 		getElementByName('LoopDetectMask').value |= ((0x1<<1)&0xFF);
 	} else {
 		getElementByName('LoopDetectMask').value &= ~((0x1<<1)&0xFF);
 	}

   <% if tcwebApi_get("WebCustom_Entry","isCT2PORTSSupported","h") <> "Yes" then %>
 	if (getCheckVal('eth3LoopEnId')) {
 		getElementByName('LoopDetectMask').value |= ((0x1<<2)&0xFF);
 	} else {
 		getElementByName('LoopDetectMask').value &= ~((0x1<<2)&0xFF);
 	}

  <% if tcwebApi_get("WebCustom_Entry","is3PORTSSupported","h") <> "Yes" then %>
 	if (getCheckVal('eth4LoopEnId')) {
 		getElementByName('LoopDetectMask').value |= ((0x1<<3)&0xFF);
 	} else {
 		getElementByName('LoopDetectMask').value &= ~((0x1<<3)&0xFF);
 	}
	<% end if %>
	  <% end if %>
	  	<% end if %>

 
 	getElementByName('LoopDetectMask').value = '0x'+parseInt(getElementByName('LoopDetectMask').value).toString(16);
 	
 	document.LoopDetect_ConfigForm.loopdetectFlag.value = "1";
 	document.LoopDetect_ConfigForm.action = "/cgi-bin/net-dhcp.asp";
 	document.LoopDetect_ConfigForm.submit();
 }
  <% end if %>

</SCRIPT>

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
            <P align=right><FONT face="Arial" color=#ffffff><B><FONT face="Arial" 
            color=#ffffff size=6><INPUT id=Selected_Menu type=hidden 
            value="Network->LAN" name=Selected_Menu> </FONT></B><SPAN 
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
		<TD width=157 bgColor=#dff5ff height=15></TD>
		<TD width=851 bgColor=#ffffff height=15></TD>
		</TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=top>
      <SCRIPT language=JavaScript type=text/javascript>
<% if tcWebApi_get("WebCustom_Entry", "isLocalDomainNameSupported", "h") = "Yes"  then %>	  
function checkDomain(enDomain)
{

 var i;
 var ii;
 var aa;
 if(enDomain==" "||enDomain.length < 4) 
 {
 
  if(enDomain!="")
  {
	  document.ConfigForm.LocalDomainName.focus();
	   return false;
  }
 

 }
   
 var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-0123456789|.!=+%/_: ";
 var allValid = true;
 for (i = 0;  i < enDomain.length;  i++)
 {
  ch = enDomain.charAt(i);
  for (j = 0;  j < checkOK.length;  j++)
  if (ch == checkOK.charAt(j))
   break;
  if (j == checkOK.length)
  {
   allValid = false;
   break;
  }
 }
 
 if (!allValid){
		document.ConfigForm.LocalDomainName.focus();
  return (false);
 }
    if(enDomain.length>0)
 {
       ii=enDomain.indexOf(".")
   if(ii==-1)
  {
 document.ConfigForm.LocalDomainName.focus();
   return false
        }
    }
  return true; 
}
<% end if %>	  
 function check_ip_pool(StartIp,EndIp,ipaddr)
      {
              var ipaddr =ipaddr.split(".");
              var dhcp_start=StartIp.split(".");
              var dhcp_end=EndIp.split(".");
              if(parseInt(ipaddr[3])<parseInt(dhcp_end[3])&&parseInt(ipaddr[3])>parseInt(dhcp_start[3]))
              {
                return false;
              }
              return true;
      }
	  function	getendetherIPforCount(start, count)
	  {
	  	var vret = "";
		var S = start.split('.');
		if(S.length > 3)
		{
			var temp = parseInt(count) + parseInt(S[3]) - 1;
			vret = S[0] + '.' + S[1] + '.' + S[2] + '.' + temp.toString();
		}
		return vret;
	  }
function dhcpcnst(domain,dhcpStart,dhcpEnd,LeaseTime,Enable,STBMinAddr,STBMaxAddr,STBRelay,PhoneMinAddr,PhoneMaxAddr,PhoneRelay,CameraMinAddr,CameraMaxAddr,CameraRelay,ComputerMinAddr,ComputerMaxAddr,ComputerRelay,HGWMinAddr,HGWMaxAddr,HGWRelay, PortRelayEnable, PortRelayStr)
{
this.domain = domain;
this.dhcpStart = dhcpStart;
this.dhcpEnd = dhcpEnd;
this.LeaseTime = LeaseTime;
this.Enable = Enable;
this.STBMinAddr = STBMinAddr;
this.STBMaxAddr = STBMaxAddr;
this.STBRelay = STBRelay;
this.PhoneMinAddr = PhoneMinAddr;
this.PhoneMaxAddr = PhoneMaxAddr ;
this.PhoneRelay = PhoneRelay;
this.CameraMinAddr = CameraMinAddr;
this.CameraMaxAddr  = CameraMaxAddr ;
this.CameraRelay = CameraRelay;
this.ComputerMinAddr = ComputerMinAddr;
this.ComputerMaxAddr = ComputerMaxAddr ;
this.ComputerRelay = ComputerRelay ;
this.HGWMinAddr = HGWMinAddr;
this.HGWMaxAddr = HGWMaxAddr;
this.HGWRelay = HGWRelay;
this.PortRelayEnable = PortRelayEnable;
this.PortRelayStr = PortRelayStr;
}
var dhcpst = new Array(new dhcpcnst("InternetGatewayDevice.LANDevice.1.LANHostConfigManagement","<% tcWebApi_get("Dhcpd_Common","start","s") %>","<% tcWebApi_get("Dhcpd_Common","pool_count","s") %>","86400","1","<% tcWebApi_get("Dhcpd_Option60","startSTB","s" ) %>","<% tcWebApi_get("Dhcpd_Option60","pool_countSTB","s" ) %>","0","<% tcWebApi_get("Dhcpd_Option60","startPhone","s" ) %>","<% tcWebApi_get("Dhcpd_Option60","pool_countPhone","s" ) %>","0","<% tcWebApi_get("Dhcpd_Option60","startCamera","s" ) %>","<% tcWebApi_get("Dhcpd_Option60","pool_countCamera","s" ) %>","0","<% tcWebApi_get("Dhcpd_Option60","start","s" ) %>","<% tcWebApi_get("Dhcpd_Option60","pool_count","s" ) %>","0","<% tcWebApi_get("Dhcpd_Option60","startHGW","s" ) %>","<% tcWebApi_get("Dhcpd_Option60","pool_countHGW","s" ) %>","0","0",""),null);
poolIndex = top.lanDevIndex;
var proto = ''
var natEnbl = 1;
var dhcpEnbl = dhcpst[0].Enable;
var dhcpStart = "";
if(dhcpst[0].dhcpStart != "N/A")
	dhcpStart = dhcpst[0].dhcpStart;
var dhcpEnd = getendetherIPforCount(dhcpStart,dhcpst[0].dhcpEnd);
var dhcpLease = dhcpst[0].LeaseTime;
var dhcpStart1_1 = dhcpst[0].STBMinAddr;
var dhcpEnd1_1 = getendetherIPforCount(dhcpStart1_1, dhcpst[0].STBMaxAddr);
var enblrelay_stb = dhcpst[0].STBRelay;
var dhcpStart1_2 = dhcpst[0].PhoneMinAddr;
var dhcpEnd1_2 = getendetherIPforCount(dhcpStart1_2, dhcpst[0].PhoneMaxAddr);
var enblrelay_phone = dhcpst[0].PhoneRelay;
var dhcpStart1_3 = dhcpst[0].CameraMinAddr
var dhcpEnd1_3 = getendetherIPforCount(dhcpStart1_3, dhcpst[0].CameraMaxAddr);
var enblrelay_camera = dhcpst[0].CameraRelay;
var dhcpStart1_4 = dhcpst[0].ComputerMinAddr;
var dhcpEnd1_4 = getendetherIPforCount(dhcpStart1_4, dhcpst[0].ComputerMaxAddr);
var enblrelay_computer = dhcpst[0].ComputerRelay;
var dhcpStart1_5 = dhcpst[0].HGWMinAddr;
var dhcpEnd1_5 = getendetherIPforCount(dhcpStart1_5, dhcpst[0].HGWMaxAddr);
var enblrelay_hgw = dhcpst[0].HGWRelay;
var dhcpPortRelayEnable = dhcpst[0].PortRelayEnable;
var host = [["InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.IPInterface.1","192.168.1.1","255.255.255.0"],null];
var oldAddrPrimary;
var oldMaskPrimary;
if (host.length > 1)
{
oldAddrPrimary = host[0][1];
oldMaskPrimary = host[0][2];
}
function dhcpv6cnst(domain,Enable,AllocateWan,Prefix,PrefixLength,Preferredlifetime,Validlifetime,DnsSrver)
{
this.domain            = domain;
this.Enable            = Enable;
this.allocateWan       = AllocateWan;
this.Prefix            = Prefix;
this.PrefixLength      = PrefixLength;
this.Preferredlifetime = Preferredlifetime;
this.Validlifetime     = Validlifetime;
var dns           = DnsSrver.split(',');
this.DnsSrvOne    = dns[0];
if ( dns.length > 1 )
{
this.DnsSrvTwo = dns[1];
}
else
{
this.DnsSrvTwo = '';
}
}
var dhcpv6st = new Array(new dhcpv6cnst("InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.X_CT-COM_DHCPv6","1","UseAllocatedSubnet","","64","3600","7200",""),null);
if (dhcpv6st.length > 0)
{
var dhcpEnb6l = dhcpv6st[0].Enable;
var UseAllc  = dhcpv6st[0].allocateWan;
var DnsOne   = dhcpv6st[0].DnsSrvOne;
var DnsTwo   = dhcpv6st[0].DnsSrvTwo;
if (DnsOne == '')
{
DnsOne = "fe80::1";
}
var Prefix   = dhcpv6st[0].Prefix;
var Prelen   = dhcpv6st[0].PrefixLength;
var Domana   = "";
var Time1    = dhcpv6st[0].Preferredlifetime;
var Time2    = dhcpv6st[0].Validlifetime;
}
else
{
var dhcpEnb6l = "1";
var UseAllc  = "UseAllocatedSubnet";
var DnsOne   = "fe80::1";
var DnsTwo   = "";
var Prefix   = "";
var Prelen   = "64";
var Domana   = "";
var Time1    = "3600";
var Time2    = "7200";
}
function radvdcnst(domain,Enable,AllocateWan,AssConn,Prefix,PrefixLength,Preferredlifetime,Validlifetime)
{
this.domain            = domain;
this.allocateWan       = AllocateWan;
this.AssConn           = AssConn;
this.Prefix            = Prefix;
this.PrefixLength      = PrefixLength;
this.Enable            = Enable;
this.Preferredlifetime = Preferredlifetime;
this.Validlifetime     = Validlifetime;
}
var radvdst = new Array(new radvdcnst("InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.X_CT-COM_SLAAC","1","Normal","1111:db8:1:0::","1111:db8:1:0::","64","3600","7200"),null);
if (radvdst.length > 1)
{
var radvdEnbl = radvdst[0].Enable;
var RAUseAllc  = radvdst[0].allocateWan;
var RAAssCon   = radvdst[0].AssConn;
var RAPrefix   = radvdst[0].Prefix;
var RAPrelen   = radvdst[0].PrefixLength;
var RATime1    = radvdst[0].Preferredlifetime;
var RATime2    = radvdst[0].Validlifetime;
}
else
{
var radvdEnbl = "1";
var RAUseAllc  = "UseAllocatedSubnet";
var RAAssCon   = "";
var RAPrefix   = "";
var RAPrelen   = "64";
var RATime1    = "3600";
var RATime2    = "7200";
}
var changeAddrFlag = false;
function disableDhcp6Srv()
{
with ( document.forms[2] )
{
setCheck("dhcp6SrvType" ,0);
setDisplay('AssConnection',0);
setDisplay('DHCP6SPrefixCfg',0);
setDisable('dhcpPrefix',1);
setDisable('PrefixLen' ,1);
setDisable('t1',1);
setDisable('t2',1);
setDisable('DnsSrvOne',1);
setDisable('DnsSrvTwo',1);
setDisable('DomainNameText'    ,1);
}
}
function enableDhcp6Srv(formLoad)
{
with ( document.forms[2] )
{
setCheck("dhcp6SrvType",1);
setDisplay('AssConnection',1);
if ( "Normal" == UseWan.value )
{
setDisplay('DHCP6SPrefixCfg', 1);
}
setDisable('dhcpPrefix',0);
setDisable('PrefixLen' ,0);
setDisable('t1',0);
setDisable('t2',0);
setDisable('DnsSrvOne',0);
setDisable('DnsSrvTwo',0);
setDisable('DomainNameText'    ,1);
}
}

function EnablePrefixParameter()
{
with (document.forms[2])
{
if ( 0 != getCheckVal('dhcp6SrvType'))
{
setDisable('dhcpPrefix',0);
setDisable('NamePrefix',0);
setDisable('PrefixLen'    ,0);
setDisable('NamePrefixLen',0);
}
}
}
function DisablePrefixParameter()
{
with (document.forms[2])
{
if ( 0 != getCheckVal('dhcp6SrvType'))
{
setDisable('dhcpPrefix',1);
setDisable('NamePrefix',1);
setDisable('PrefixLen'    ,1);
setDisable('NamePrefixLen',1);
}
}
}
function EnableIPPoolParameter()
{
with (document.forms[2])
{
}
}
function DisableIPPoolParameter()
{
with (document.forms[2])
{
}
}
function IPPoolGenerateOperation()
{
with (document.forms[2])
{
if ( "UsePrefix" == UsePrefixOrIPPool.value )
{
DisableIPPoolParameter();
EnablePrefixParameter();
}
else if ( "UseIPPool" == UsePrefixOrIPPool.value )
{
DisablePrefixParameter();
EnableIPPoolParameter();
}
else
{
DisablePrefixParameter();
DisableIPPoolParameter();
}
}
}
function CheckPrefix(Prefix,type)
{
var IpAddress1 = Prefix.split(':');
var IpAddress3 = Prefix;
if ( 1 == type && '' == IpAddress3)
{
return true;
}
if ( true != isUnicastIpv6Address(IpAddress3) )
{
return false;
}
switch (type)
{
case 0 :
if ( 15 == parseInt(IpAddress1[0].substring(0, 1),16) )
{
switch ( parseInt(IpAddress1[0].substring(1, 2),16) )
{
case 15 :
return false;
case 14 :
if ( 8 <= parseInt(IpAddress1[0].substring(2, 3),16) && 12 > parseInt(IpAddress1[0].substring(2, 3),16) )
{
return false;
}
break;
default:
break;
}
}
break;
case 1 :
if ( 15 == parseInt(IpAddress1[0].substring(0, 1),16) )
{
switch ( parseInt(IpAddress1[0].substring(1, 2),16) )
{
case 15 :
return false;
default:
break;
}
}
break;
default:
return false;
}
return true;
}
function CheckLength(Length)
{
var TemLen = parseInt(Length);
if ( true == isNaN(TemLen) || TemLen > 64 || TemLen < 16)
{
return false;
}
return true;
}
function CheckHex(Hex)
{
var TemHex  = Hex;
var Loopj   = 0;
var Tempi   = 0;
var Tempj   = 1;
var section = 0;
var num     = 0;
for (Loopj = 0 ; Loopj < TemHex.length ; Loopj++)
{
section = TemHex.substring(Tempi, Tempj);
num = parseInt(section, 16);
if ( true == isNaN(num) )
{
return false;
}
Tempi++;
Tempj++;
}
return true;
}
function CheckTime(Time1,Time2)
{
var TemTime1 = Time1;
var TemTime2 = Time2;
if ( TemTime1.length > 10 || '' == TemTime1 )
{
return 1;
}
if ( TemTime2.length > 10 || '' == TemTime2 )
{
return 2;
}
if ( true != isPlusInteger(TemTime1))
{
return 1;
}
if ( true != isPlusInteger(TemTime2))
{
return 2;
}
TemTime1 = parseInt(Time1);
TemTime2 = parseInt(Time2);
if ( TemTime1 > 4294967295 || TemTime1 < 60 )
{
return 1;
}
if ( TemTime2 > 4294967295 || TemTime2 < 60 )
{
return 2;
}
if ( TemTime2 <= TemTime1 )
{
return 3;
}
return true;
}
function disableRASrv()
{
with (document.forms[1])
{
setCheck('radvdSrvType', 0);
setDisplay('RAAssConnection', 0);
setDisplay('RadvdPrefixCfg', 0);
}
}
function enableRASrv(formLoad)
{
with (document.forms[1])
{
setCheck('radvdSrvType', 1);
setDisplay('RAAssConnection', 1);
if ("Normal" == RAUseWan.value)
{
setDisplay('RadvdPrefixCfg', 1);
}
}
}

function CheckRAPrefix(Prefix, type)
{
var IpAddress1 = Prefix.split(':');
var IpAddress3 = Prefix;
if (1 == type && '' == IpAddress3)
{
return true;
}
if (true != isGlobalIpv6Address(IpAddress3))
{
return false;
}
return true;
}
function CheckRATime(Time1,Time2)
{
var TemTime1 = Time1;
var TemTime2 = Time2;
if (TemTime1.length > 10 || '' == TemTime1)
{
return 1;
}
if (TemTime2.length > 10 || '' == TemTime2)
{
return 2;
}
if (true != isPlusInteger(TemTime1))
{
return 1;
}
if (true != isPlusInteger(TemTime2))
{
return 2;
}
TemTime1 = parseInt(Time1);
TemTime2 = parseInt(Time2);
if (TemTime1 > 4294967295 || TemTime1 < 600)
{
return 1;
}
if (TemTime2 > 4294967295 || TemTime2 < 600)
{
return 2;
}
if (TemTime2 <= TemTime1)
{
return 3;
}
return true;
}
function RAIntervalValue(vMin, vMax)
{
	var MinInterval = vMin;
	var MaxInterval = vMax;
	if ('' == MinInterval)
	{
		return 1;
	}
	if ('' == MaxInterval)
	{
		return 2;
	}
	MinInterval = parseFloat(vMin);
	MaxInterval = parseFloat(vMax);
	
	if ( MinInterval < 3 || MinInterval > 1350 )
		return 1;
	if ( MaxInterval > 1800 || MaxInterval < 4 )
		return 2;
	if ( MaxInterval < MinInterval )
		return 3;

	if ( MinInterval > (MaxInterval*0.75) )
		return 4;

	return true;
}

function RACheckForm(type)
{
	with (document.forms[1])
	{
		if (1 != getCheckVal('radvdSrvType') || "Normal" != RAUseWan.value)
		{
			if ( 1 == getCheckVal('radvdSrvType') )
			{
					RAManagedEn_Flag.value = ( 1 == getCheckVal('ramflag') ) ? '1' : '0';
					RAOtherEn_Flag.value = ( 1 == getCheckVal('raoflag') ) ? '1' : '0';
			}

			return true;
		}
		if (true != CheckRAPrefix(radvdPrefix.value,0))
		{
			alert("Prefix\"" + radvdPrefix.value + "\"is invalid IPv6 address");
			return false;
		}
		if (true != CheckLength(RAPrefixLen.value))
		{
			alert("Prefix length:\"" + RAPrefixLen.value + "\"invalid");
			return false;
		}
		switch (CheckRATime(RAt1.value,RAt2.value))
		{
		case 1 :
		{
			alert("Time:\"" + RAt1.value + "\"invalid");
			return false;
		}
		case 2 :
		{
			alert("Time:\"" + RAt2.value + "\"invalid");
			return false;
		}
		case 3 :
		{
			alert("Active life:" + RAt2.value + "is less than or equal to  first choice life:" + RAt1.value);
			return false;
		}
		default:
		break;
		}
		switch (RAIntervalValue(RACycMin.value, RACycMax.value)){
			case 1 :
			{
				alert("RA minimum interval:\"" + RACycMin.value + "\"invalid");
				return false;
			}
			case 2 :
			{
				alert("RA maximum interval:\"" + RACycMax.value + "\"invalid");
				return false;
			}
			case 3 :
			{
				alert("RA maximum interval:" + RACycMax.value + "less than the minimum interval:" + RACycMin.value);
				return false;
			}
			case 4 :
			{
				var temp = parseFloat(RACycMax.value) * 0.75;
				alert("RA minimum interval:" + RACycMin.value + "Should not exceed 0.75 times the maximum interval between RA:" + temp.toString());
				return false;
			}
			default:
				break;
		}
	}
	return true;
}
function AddRASubmitParam(Form)
{
with (document.forms[1])
{
/*Form.addParameter('y.RouterAdvertisementEnable', getCheckVal('radvdSrvType'));
if (1 == getCheckVal('radvdSrvType'))
{
Form.addParameter('y.UseAllocatedWAN', getValue('RAUseWan'));
Form.addParameter('y.AssociatedConnection', getValue('radvdPrefix'));
}
if (1 == getCheckVal('radvdSrvType') && "Normal" == RAUseWan.value)
{
Form.addParameter('y.Prefix', getValue('radvdPrefix'));
Form.addParameter('y.PrefixLength', getValue('RAPrefixLen'));
Form.addParameter('y.Preferredlifetime', getValue('RAt1'));
Form.addParameter('y.Validlifetime', getValue('RAt2'));
}
var RequestFile = '/html/network/dhcp.asp';
var url = 'setcfg.cgi?'
+ 'y=InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.X_CT-COM_SLAAC'
+ '&RequestFile=' + RequestFile;
Form.setAction(url);*/
}
}
function RASubmit()
{
if (RACheckForm() == true)
{
//var Form = new webSubmitForm();
//AddRASubmitParam(Form);
//Form.submit();
document.forms[1].RA_Flag.value = "1";
document.forms[1].submit();

}
}
function disableDhcpSrv()
{
with (document.forms[0])
{
dhcpSrvType[1].checked = false;
dhcpEthStart.disabled = 1;
dhcpEthEnd.disabled = 1;
enableRelay.disabled = 1;
IpPoolIndex.disabled = 1;
dhcpEthStartFrag.disabled = 1;
dhcpEthEndFrag.disabled = 1;
dhcpLeasedTimeFrag.disabled = 1;
setDisplay("DhcprelayIP", 0);
setDisplay("dhcpstartaddr",0);
setDisplay("devicetype", 0);
setDisplay("dhcpendaddr",0);
setDisplay("dhcplease",0);
setDisplay("manualDNSRow", 0);
setDisplay("preferredDNSRow", 0);
setDisplay("alternateDNSRow", 0);
}
}
function enableDhcpSrv(formLoad)
{
with (document.forms[0])
{
//dhcpSrvType[1].checked = true;
dhcpEthStart.disabled = 0;
dhcpEthEnd.disabled = 0;
/*if (formLoad == 0)
setDhcpAddresses(ethIpAddress.value);
else
{*/
dhcpEthStart.value = dhcpStart;
dhcpEthEnd.value = dhcpEnd;
//}

setDisable('dhcpLeasedTimeFrag', 0);
setDisable('IpPoolIndex',0);
setDisable('dhcpEthStartFrag',0);
setDisable('dhcpEthEndFrag',0);
setDisable('enableRelay',0);
setDisplay("DhcprelayIP", 0);
setDisplay("devicetype",0);
setDisplay("dhcpstartaddr",1);

setDisplay("dhcpendaddr",1);
setDisplay("dhcplease",1);
setDisplay("manualDNSRow",1);
manualDNSClick();
}
}
function disableDhcpSrvRelay()
{
with (document.forms[0])
{
dhcpSrvAddr.disabled = 1;
}
}
function enableDhcpSrvRelay()
{
with ( document.forms[0] )
{
if (dhcpEthStart.value != "")
dhcpSrvAddr.value = dhcpEthStart.value;
else
dhcpSrvAddr.value = dhcpStart;
dhcpSrvAddr.disabled = 0;
}
}
function typeClick()
{
with (document.forms[0])
{
	if ( natEnbl == '1' )
	{
		if ( dhcpSrvType[0].checked == true )
		{
			disableDhcpSrv();
		}
		else if( dhcpSrvType[1].checked == true )
		{
			enableDhcpSrv(0);
		}
		else
		{
			disableDhcpSrv();
			setDisplay("DhcprelayIP",1);

			setDisplay("dhcpRelaycircuitId",1);
			setDisplay("dhcpRelayremoteId",1);
			getElById('dhcpRelayServerIP').focus();
		}
	}
	else
	{
		if (dhcpSrvType[0].checked == true)
		{
			disableDhcpSrv();
			disableDhcpSrvRelay();
		}
		else if (dhcpSrvType[1].checked == true)
		{
			enableDhcpSrv(0);
			disableDhcpSrvRelay();
		}
	}
}
}

function manualDNSClick()
{
	with (document.forms[0])
	{
		if(manualDNS.checked == true)
		{
			autoDNSvalue.value = "0";
			setDisplay("preferredDNSRow", 1);
			setDisplay("alternateDNSRow", 1);
		}
		else
		{
			autoDNSvalue.value = "1";
			setDisplay("preferredDNSRow", 0);
			setDisplay("alternateDNSRow", 0);		
		}
	}
}

function isEndGTEStart(EndIp, StartIp)
{
addrEnd = EndIp.split('.');
addrStart = StartIp.split('.');
E = parseInt(addrEnd[3]) + 1;
S = parseInt(addrStart[3]) + 1;
if (E < S)
return false;
return true;
}
function ipIsInIP(subStartIp, subEndIp, StartIp, EndIp)
{
addrEnd = EndIp.split('.');
addrStart = StartIp.split('.');
subAddrEnd = subEndIp.split('.');
subAddrStart = subStartIp.split('.');
for (i = 0; i < 4; i++)
{
seg = parseInt(addrEnd[i]);
subSeg = parseInt(subAddrEnd[i]);
if (subSeg > seg)
return false;
seg = parseInt(addrStart[i]);
subSeg = parseInt(subAddrStart[i]);
if ((subSeg > 0) && (subSeg < seg))
return false;
}
return true;
}
function  ipConfilt( StartIp1 , EndIp1, StartIp2, EndIp2)
{
if (!( isValidIpAddress(StartIp1)
&& isValidIpAddress(EndIp1)
&&isValidIpAddress(StartIp2)
&&isValidIpAddress(EndIp2)))
{
return false;
}
var StartIp1A = StartIp1.split('.');
var EndIp1A= EndIp1.split('.');
var StartIp2A = StartIp2.split('.');
var EndIp2A = EndIp2.split('.');
var StarIp1Value = parseInt(StartIp1A[3]);
var  EndIp1Value = parseInt(EndIp1A[3]);
var StarIp2Value = parseInt(StartIp2A[3]);
var EndIp2Value = parseInt(EndIp2A[3]);
if ((StarIp1Value >EndIp2Value)  || (EndIp1Value <StarIp2Value))
{
return false;
}
return true;
}
function CheckForm(type)
{
with (document.forms[0])
{

<% if tcWebApi_get("WebCustom_Entry", "isLocalDomainNameSupported", "h") = "Yes"  then %>
if(checkDomain(LocalDomainName.value)==false)
{

	alert("Please input valid Domain.");
	promptId.style="color:red;";
	return false;

}else
{
		if(DomainFlag.value != LocalDomainName.value)
		{
			DomainFlag.value = LocalDomainName.value;
			dnsmasqRebootflag.value="1";
		}else
		{
			dnsmasqRebootflag.value="0";
			
		}

}
<% end if %>


if (isValidIpAddress(ethIpAddress.value) == false)
{
alert('Address "' + ethIpAddress.value + '"is invalid.');
return false;
}
if (isValidSubnetMask(ethSubnetMask.value) == false)
{
alert('SubnetMask "' + ethSubnetMask.value + '"is invalid.');
return false;
}
if (isBroadcastIp(ethIpAddress.value, ethSubnetMask.value) == true)
{
alert('Address "' + ethIpAddress.value + '"is invalid.');
return false;
}
if (dhcpSrvType[1].checked == true)
{
if (dhcpEthStart.value == '0.0.0.0')
{
alert('Invalid start IP Address "' + dhcpEthStart.value + '"');
return false;
}
if (dhcpEthEnd.value == '0.0.0.0')
{
alert('Invalid end IP Address  "' + dhcpEthEnd.value + '"');
return false;
}
if ((dhcpEthStart.value != '0.0.0.0')&&(dhcpEthEnd.value != '0.0.0.0'))
{
if (isValidIpAddress(dhcpEthStart.value) == false ||
!(isSameSubNet(ethIpAddress.value, ethSubnetMask.value, dhcpEthStart.value, ethSubnetMask.value)))
{
alert('Invalid start IP Address "' + dhcpEthStart.value + '"');
return false;
}
if (isBroadcastIp(dhcpEthStart.value, ethSubnetMask.value) == true)
{
alert('error! Invalid start IP Address "' + dhcpEthStart.value + '"');
return false;
}
if (isValidIpAddress(dhcpEthEnd.value) == false ||
!(isSameSubNet(ethIpAddress.value, ethSubnetMask.value, dhcpEthEnd.value, ethSubnetMask.value)))
{
alert('Invalid End IP Address "' + dhcpEthEnd.value + '"');
return false;
}
if (isBroadcastIp(dhcpEthEnd.value, ethSubnetMask.value) == true)
{
alert('error! Invalid End IP Address "' + dhcpEthEnd.value + '"');
return false;
}
if (!(isEndGTEStart(dhcpEthEnd.value, dhcpEthStart.value)))
{
alert("End IP Address must be equal to or greater than Start IP Address.");
return false;
}
if ( !isEndGTEStart(dhcpEthStartFrag.value,dhcpEthStart.value) || !isEndGTEStart(dhcpEthEnd.value,dhcpEthEndFrag.value) )
{
var devType = document.forms[0].IpPoolIndex.value;
alert(devType+"  address is out of range .");
return false;
}
if (dhcpEthStart.value == ethIpAddress.value)
{
alert("Start IP Address can not be the same with route IP Address.");
return false;
}
if (dhcpEthEnd.value == ethIpAddress.value)
{
alert("End IP Address can not be the same with route IP Address.");
return false;
}
}
if ((dhcpEthStartFrag.value == '')
&&(dhcpEthEndFrag.value == '')
&&(dhcpLeasedTimeFrag.value ==''))
{
dhcpEthStartFrag.value = '0.0.0.0';
dhcpEthEndFrag.value = '0.0.0.0';
dhcpLeasedTimeFrag.value ='86400';
}
else
{
if ((dhcpEthStartFrag.value != '0.0.0.0')&&(dhcpEthEndFrag.value != '0.0.0.0'))
{
if (isValidIpAddress(dhcpEthStartFrag.value) == false ||
!(isSameSubNet(ethIpAddress.value, ethSubnetMask.value, dhcpEthStartFrag.value, ethSubnetMask.value)))
{
alert('Invalid IP pool Start IP Address "' + dhcpEthStartFrag.value + '"');
return false;
}
if (isBroadcastIp(dhcpEthStartFrag.value, ethSubnetMask.value) == true)
{
alert('error! Invalid IP pool Start IP Address "' + dhcpEthStartFrag.value + '"');
return false;
}
if (isValidIpAddress(dhcpEthEndFrag.value) == false ||
!(isSameSubNet(ethIpAddress.value, ethSubnetMask.value, dhcpEthEndFrag.value, ethSubnetMask.value)))
{
alert('Invalid IP pool End IP Address "' + dhcpEthEndFrag.value + '"');
return false;
}
if (isBroadcastIp(dhcpEthEndFrag.value, ethSubnetMask.value) == true)
{
alert('error! Invalid IP pool End IP Address "' + dhcpEthEndFrag.value + '"');
return false;
}
if (!(isEndGTEStart(dhcpEthEndFrag.value, dhcpEthStartFrag.value)))
{
alert("IP pool End IP Address must be greater than or equal to IP pool Start IP Address.");
return false;
}
if (dhcpEthStartFrag.value == ethIpAddress.value)
{
alert("IP pool Start IP Address can not be the same with route IP Address.");
return false;
}
if (dhcpEthEndFrag.value == ethIpAddress.value)
{
alert("IP pool End IP Address can not be the same with route IP Address.");
return false;
}
 if(!(check_ip_pool(dhcpEthStartFrag.value,dhcpEthEndFrag.value,ethIpAddress.value)))
 {
         alert("The IP address cannot be inside the IP pool");
         return false;
 }
}
else if((dhcpEthStartFrag.value == '0.0.0.0')&&(dhcpEthEndFrag.value == '0.0.0.0'))
{
}
else
{
alert('IP pool Start IP Address and End IP Address When one is not 0 the other can not be 0.');
return false;
}
}
if (IpPoolIndex.value == "STB")
{
/*if (!ipIsInIP(dhcpEthStartFrag.value, dhcpEthEndFrag.value, dhcpEthStart.value , dhcpEthEnd.value))
{
alert("IP segment STB outside the main of IP pool.");
return false;
}
else if (ipConfilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_2, dhcpEnd1_2))
{
alert("IP segment STB and IP segment Phone conflict!");
return false;
}
else if (ipConfilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_3, dhcpEnd1_3))
{
alert("IP segment STB and IP segment Camera conflict!");
return false;
}
else if (ipConfilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_4, dhcpEnd1_4))
{
alert("IP segment STB and IP segment Computer conflict!");
return false;
}*/
}
else if (IpPoolIndex.value == "Phone")
{
/*if (!ipIsInIP(dhcpEthStartFrag.value, dhcpEthEndFrag.value, dhcpEthStart.value , dhcpEthEnd.value))
{
alert("IP segment Phone outside the main of IP pool.");
return false;
}
else if (ipConfilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_1, dhcpEnd1_1))
{
alert("IP segment Phone and IP  segment STB  conflict!");
return false;
}
else if (ipConfilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_3, dhcpEnd1_3))
{
alert("IP segment Phone and IP  segment Camera conflict!");
return false;
}
else if (ipConfilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_4, dhcpEnd1_4))
{
alert("IP segment Phone and IP  segment Computer  conflict!");
return false;
}*/
}
else if(IpPoolIndex.value == "Camera")
{
/*if(!ipIsInIP(dhcpEthStartFrag.value, dhcpEthEndFrag.value, dhcpEthStart.value , dhcpEthEnd.value))
{
alert("IP segment Cameraoutside the main of IP pool.");
return false;
}
else if (ip Confilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_1, dhcpEnd1_1))
{
alert("IP segment Camera and IP  segment STB  conflict!");
return false;
}
else if (ip Confilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_2, dhcpEnd1_2))
{
alert("IP segment Camera and IP  segment Phone  conflict!");
return false;
}
else if (ipConfilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_4, dhcpEnd1_4))
{
alert("IP segment Camera and IP  segment Computer  conflict!");
return false;
}*/
}
else if(IpPoolIndex.value == "Computer")
{
/*if(!ipIsInIP(dhcpEthStartFrag.value, dhcpEthEndFrag.value, dhcpEthStart.value , dhcpEthEnd.value))
{
alert("IP segment Computeroutside the main of IP pool.");
return false;
}
else if (ip Confilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_1, dhcpEnd1_1))
{
alert("IP segment Computer and IP  segment STB  conflict!");
return false;
}
else if (ip Confilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_2, dhcpEnd1_2))
{
alert("IP segment Computer and IP  segment Phone  conflict!");
return false;
}
else if (ipConfilt (dhcpEthStartFrag.value, dhcpEthEndFrag.value,dhcpStart1_3, dhcpEnd1_3))
{
alert("IP segment Computer and IP  segment Camera  conflict!");
return false;
}*/
}
if(manualDNS.checked == true)
{
	if(isValidIpAddress(preferredDNS.value) == false )
	{
		alert('Invalid prefered DNS "' + preferredDNS.value + '"');
		return false;
	}
	if(alternateDNS.value != "" && isValidIpAddress(alternateDNS.value) == false )
	{
		alert('Invalid alternateDNS DNS "' + alternateDNS.value + '"');
		return false;
	}
}

}
else
{
if ( natEnbl == '1' )
{
}
else
{
}
}
if ( dhcpSrvType[1].checked == true
&& ((oldAddrPrimary != ethIpAddress.value)||(oldMaskPrimary != ethSubnetMask.value)))
{
	RouteIPChangeFlag.value="1";
}
oldAddrPrimary = ethIpAddress.value;
oldMaskPrimary = ethSubnetMask.value;
}
with (document.forms[2])
{
switch (type)
{
case 3:
{
if (1 != getCheckVal('dhcp6SrvType') || "Normal" != UseWan.value)
{
return true;
}
if ("" != dhcpPrefix.value)
{
if (true != CheckPrefix(dhcpPrefix.value,0))
{
alert('Prefix : "' + dhcpPrefix.value +'"  is not a valid IPv6 Address !');
return false;
}
}
if ("" != dhcpPrefix.value || ("" != PrefixLen.value && 0 != PrefixLen.value))
{
if (true != CheckLength(PrefixLen.value))
{
alert('Prefix length : "' + PrefixLen.value + '" is invalid !');
return false;
}
}
if ("" != dhcpPrefix.value || ("" != t1.value && 0 != t1.value) || ("" != t2.value && 0 != t2.value))
{
switch (CheckTime(t1.value,t2.value))
{
case 1 :
{
alert('Time : "' + t1.value + '" is invalid !');
return false;
}
case 2 :
{
alert('Time : "' + t2.value + '" is invalid !');
return false;
}
case 3 :
{
alert('Effective life : ' + t2.value + 'is less than' + 'Preferred life : ' + t1.value);
return false;
}
default:
break;
}
}
		if ("" == DnsSrvOne.value && "" != DnsSrvTwo.value)
		{
			alert('Prefix : "' + DnsSrvOne.value + '" is not a valid IPv6 Address !');
			return false;
		}
		if (true != CheckPrefix(DnsSrvOne.value,1))
		{
			alert('Prefix : "' + DnsSrvOne.value + '" is not a valid IPv6 Address !');
			return false;
		}
		if (true != CheckPrefix(DnsSrvTwo.value,1))
		{
			alert('Prefix : "' + DnsSrvTwo.value + '" is not a valid IPv6 Address !');
			return false;
		}
		break;
		}
		case 1:
		{
		}
		break;
		case 2:
		{
		}
		break;
	default:
		break;
	}
}
return true;
}
function setDhcpAddresses(lanIp)
{
	with (document.forms[0])
	{
		if (isValidIpAddress(lanIp) == false)
		{
			alert('Address "' + lanIp + '" is a invalid IP Address.');
			return;
		}
		var lanMask = ethSubnetMask.value;
		var Start = dhcpEthStart.value;
		var End = dhcpEthEnd.value;
		
		var StartFrag = dhcpEthStartFrag.value.split('.');
		var EndFrag = dhcpEthEndFrag.value.split('.');
		addrParts = lanIp.split('.');
		maskParts = lanMask.split('.');
		
		if ( addrParts.length != 4 )
			return false;
		if ( maskParts.length != 4 )
			return false;
			
		if (isValidSubnetMask(lanMask) == false || parseInt(maskParts[3]) >= 254)
		{
			alert('SubnetMask "' + lanMask + '" is invalid.');
			return false;
		}
		t1 = parseInt(addrParts[3]) + 1;
		t2 = 254 - parseInt(maskParts[3]);
		if (255 <= t2)
		{
	
		}
		if (dhcpEthStart.value != '' && t1 >= 255)
		{
			alert("The last one of IP Address that provides DHCP services must be less than 254.");
			return false;
		}
		
		dhcpEthStart.value = dhcpEthEnd.value = "";
		dhcpEthStartFrag.value = dhcpEthEndFrag.value = "";
		for (i = 0; i < 3; i++)
		{
			dhcpEthStart.value = dhcpEthStart.value + addrParts[i] + ".";
			dhcpEthEnd.value = dhcpEthEnd.value + addrParts[i] + ".";
			dhcpEthStartFrag.value = dhcpEthStartFrag.value + addrParts[i] + ".";
			dhcpEthEndFrag.value = dhcpEthEndFrag.value + addrParts[i] + ".";
		}
		dhcpEthStart.value = dhcpEthStart.value + t1;
		dhcpEthEnd.value = dhcpEthEnd.value + t2;
        var dhcpstart1 = dhcpStart1_1.split('.');
        var dhcpend1 = dhcpEnd1_1.split('.');
        var dhcpstart2 = dhcpStart1_2.split('.');
        var dhcpend2 = dhcpEnd1_2.split('.');
        var dhcpstart3 = dhcpStart1_3.split('.');
        var dhcpend3 = dhcpEnd1_3.split('.');
        var dhcpstart4 = dhcpStart1_4.split('.');
        var dhcpend4 = dhcpEnd1_4.split('.');
        var dhcpstart5 = dhcpStart1_5.split('.');
        var dhcpend5 = dhcpEnd1_5.split('.');
		if ( dhcpSrvType[1].checked == true
		&& ((oldAddrPrimary != ethIpAddress.value)||(oldMaskPrimary != ethSubnetMask.value)))
		{
			<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
			alert('Warning: this operation will change the IP address pool. Please restart the device after modification!');
			<% else %>	
			alert('Warning: this operation will change the IP address pool!');
			<% end if %>
			changeAddrFlag = true;
			RouteIPChangeFlag.value="1";
			IpPoolIndex.value = "Computer";
			poolIndex = '1';
		}
		    dhcpStart1_1 = dhcpEthStartFrag.value + dhcpstart1[3];
        	dhcpEnd1_1 = dhcpEthEndFrag.value + dhcpend1[3];
        	dhcpStart1_2 = dhcpEthStartFrag.value + dhcpstart2[3];
        	dhcpEnd1_2 = dhcpEthEndFrag.value + dhcpend2[3];
        	dhcpStart1_3 = dhcpEthStartFrag.value + dhcpstart3[3];
        	dhcpEnd1_3 = dhcpEthEndFrag.value + dhcpend3[3];
        	dhcpStart1_4 = dhcpEthStartFrag.value + dhcpstart4[3];
        	dhcpEnd1_4 = dhcpEthEndFrag.value + dhcpend4[3];
        	dhcpStart1_5 = dhcpEthStartFrag.value + dhcpstart5[3];
        	dhcpEnd1_5 = dhcpEthEndFrag.value + dhcpend5[3];
        	IpPoolIndexChange();
	}
}
function IpPoolIndexChange()
{
with ( document.forms[0] ) {
var index=IpPoolIndex.value;
if(index == 'HGW')
{
	if(dhcpStart1_5 != "N/A")
		dhcpEthStartFrag.value = dhcpStart1_5;
	else
		dhcpEthStartFrag.value = "";
	if(dhcpEnd1_5 != "N/A")
		dhcpEthEndFrag.value = dhcpEnd1_5;
	else
		dhcpEthEndFrag.value = "";
setCheck('enableRelay',enblrelay_hgw);
}
else if(index == 'STB')
{
dhcpEthStartFrag.value = dhcpStart1_1;
dhcpEthEndFrag.value = dhcpEnd1_1;
setCheck('enableRelay',enblrelay_stb);
}
else if(index == 'Phone')
{
dhcpEthStartFrag.value = dhcpStart1_2;
dhcpEthEndFrag.value = dhcpEnd1_2;
setCheck('enableRelay',enblrelay_phone);
}
else if(index == 'Camera')
{
dhcpEthStartFrag.value = dhcpStart1_3;
dhcpEthEndFrag.value = dhcpEnd1_3;
setCheck('enableRelay',enblrelay_camera);
}
else if(index == 'Computer')
{
dhcpEthStartFrag.value = dhcpStart1_4;
dhcpEthEndFrag.value = dhcpEnd1_4;
setCheck('enableRelay',enblrelay_computer);
}
}
}

function getPortRelayStr(relayinfstr, pr_str)
{
if (getCheckVal(pr_str) == 1)
{
if (relayinfstr == '')
{
return  getValue(pr_str);
}
else
{
return  ',' + getValue(pr_str);
}
}
return '';
}
function secPortRelayStr()
{
/*var PortRelayArray = dhcpst[0].PortRelayStr.split(',');
var InsId;
var handle;
for (i = 0; i < PortRelayArray.length; i++)
{
InsId = PortRelayArray[i].substr(PortRelayArray[i].lastIndexOf('.') + 1)
if (PortRelayArray[i].indexOf('LANEthernetInterfaceConfig') > 0)
{
handle =  'setCheck(' + '\'PortRelay_lan' + InsId + '\'' + ',1)';
}
else if (PortRelayArray[i].indexOf('WLANConfiguration') > 0)
{
handle =  'setCheck(' + '\'PortRelay_ssid' + InsId + '\'' + ',1)';
}
else
{
break;
}
eval(handle);
}*/
}
function AddSubmitParam(Form,type)
{
/*if (type == 1 || type == 2 || type == 3)
{
with (document.forms[2])
{
switch(type)
{
case 3:
{
Form.addParameter('y.DHCPServerEnable',getCheckVal('dhcp6SrvType'));
if ( 1 == getCheckVal('dhcp6SrvType') )
{
Form.addParameter('y.UseAllocatedWAN',getValue('UseWan'));
}
if ( 1 == getCheckVal('dhcp6SrvType') && "Normal" == UseWan.value )
{
Form.addParameter('y.Prefix',getValue('dhcpPrefix'));
if ( '' == getValue('PrefixLen') )
{
Form.addParameter('y.PrefixLength',0);
}
else
{
Form.addParameter('y.PrefixLength',getValue('PrefixLen'));
}
if ( '' == getValue('t1') )
{
Form.addParameter('y.Preferredlifetime',0);
}
else
{
Form.addParameter('y.Preferredlifetime',getValue('t1'));
}
if ( '' == getValue('t2') )
{
Form.addParameter('y.Validlifetime',0);
}
else
{
Form.addParameter('y.Validlifetime',getValue('t2'));
}
var DnsStr = '';
DnsStr = '';
if (DnsSrvOne.value != '')
{
DnsStr = getValue('DnsSrvOne');
if (DnsSrvTwo.value != '')
{
DnsStr = getValue('DnsSrvOne') + ',' + getValue('DnsSrvTwo');
}
}
else if (DnsSrvTwo.value != '') 
{
DnsStr = getValue('DnsSrvTwo');
}
Form.addParameter('y.DNSServer',DnsStr);
Form.addParameter('y.DomainName',getValue('DomainNameText'));
}
var RequestFile = '/html/network/dhcp.asp';
var url = 'setcfg.cgi?'
+ 'y=InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.X_CT-COM_DHCPv6'
+ '&RequestFile=' + RequestFile;
Form.setAction(url);
break;
}
case 1:
break;
case 2:
break;
default:
return;
}
}
}
else
{
Form.addParameter('x.IPInterfaceIPAddress',getValue('ethIpAddress'));
Form.addParameter('x.IPInterfaceSubnetMask',getValue('ethSubnetMask'));
Form.usingPrefix('y');
with (document.forms[0])
{
var isRelay = getCheckVal('enableRelay');
Form.addParameter('DHCPServerEnable',getRadioVal('dhcpSrvType'));
if (1 == getRadioVal('dhcpSrvType'))
{
if (IpPoolIndex.value == '1')
{
Form.addParameter('X_CT-COM_STB-MinAddress',dhcpEthStartFrag.value);
Form.addParameter('X_CT-COM_STB-MaxAddress',dhcpEthEndFrag.value);
Form.addParameter('X_CT-COM_STB-DHCPRelay',isRelay);
if (changeAddrFlag == true)
{
Form.addParameter('X_CT-COM_Phone-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Phone-MaxAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Camera-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Camera-MaxAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Computer-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Computer-MaxAddress','0.0.0.0');
}
}
else if (IpPoolIndex.value == '2')
{
Form.addParameter('X_CT-COM_Phone-MinAddress',dhcpEthStartFrag.value);
Form.addParameter('X_CT-COM_Phone-MaxAddress',dhcpEthEndFrag.value);
Form.addParameter('X_CT-COM_Phone-DHCPRelay',isRelay);
if (changeAddrFlag == true)
{
Form.addParameter('X_CT-COM_STB-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_STB-MaxAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Camera-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Camera-MaxAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Computer-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Computer-MaxAddress','0.0.0.0');
}
}
else if (IpPoolIndex.value == '3')
{
Form.addParameter('X_CT-COM_Camera-MinAddress',dhcpEthStartFrag.value);
Form.addParameter('X_CT-COM_Camera-MaxAddress',dhcpEthEndFrag.value);
Form.addParameter('X_CT-COM_Camera-DHCPRelay',isRelay);
if (changeAddrFlag == true)
{
Form.addParameter('X_CT-COM_STB-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_STB-MaxAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Phone-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Phone-MaxAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Computer-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Computer-MaxAddress','0.0.0.0');
}
}
else if (IpPoolIndex.value == '4')
{
Form.addParameter('X_CT-COM_Computer-MinAddress',dhcpEthStartFrag.value);
Form.addParameter('X_CT-COM_Computer-MaxAddress',dhcpEthEndFrag.value);
Form.addParameter('X_CT-COM_Computer-DHCPRelay',isRelay);
if (changeAddrFlag == true)
{
Form.addParameter('X_CT-COM_STB-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_STB-MaxAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Phone-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Phone-MaxAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Camera-MinAddress','0.0.0.0');
Form.addParameter('X_CT-COM_Camera-MaxAddress','0.0.0.0');
}
}
Form.addParameter('MinAddress',getValue('dhcpEthStart'));
Form.addParameter('MaxAddress',getValue('dhcpEthEnd'));
Form.addParameter('DHCPLeaseTime',getValue('dhcpLeasedTimeFrag'));
Form.addParameter('DHCPServerEnable',getRadioVal('dhcpSrvType'));
}
Form.addParameter('X_CT_COM_Port-DHCPRelayEnable',getCheckVal('enablePortRelay'));
var relayinfstr = '';
if (getCheckVal('enablePortRelay') == 1)
{
for (i = 1; i <= 4; i++)
{
relayinfstr = relayinfstr + getPortRelayStr(relayinfstr,'PortRelay_lan'+i);
relayinfstr = relayinfstr + getPortRelayStr(relayinfstr,'PortRelay_ssid'+i);
}
}
Form.addParameter('X_CT_COM_RelayLanInterface', relayinfstr);
Form.endPrefix();
top.lanDevIndex = IpPoolIndex.value;
}
var RequestFile = 'html/network/dhcp.asp';
if (getValue('ethIpAddress') != host[0][1])
{
RequestFile = '';
}
var url = 'setcfg.cgi?'
+ 'y=InternetGatewayDevice.LANDevice.1.LANHostConfigManagement'
+ '&x=InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.IPInterface.1'
+ '&RequestFile=' + RequestFile;
Form.setAction(url);
}*/
}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>IPv4 Settings</P></TD>
          <TD width=8 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") ="Yes" then %>
          <TD vAlign=top width=170 rowSpan=6>
<% else %>
          <TD vAlign=top width=170 rowSpan=8>
<%end if %>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#LAN" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>  
              </TBODY></TABLE>&nbsp; </TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <FORM name="ConfigForm" action="/cgi-bin/net-dhcp.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") <>"Yes" then %>
                <B>LAN Setting</B><BR><BR> LAN DHCP enable and disable, lease time (1 minute, 1 hour, 1 day, 1 week).<BR>DHCP Address interval setting and the map to device's type.<BR>DHCP mode (DHCP Server and DHCP relay) setting. <BR><BR>
<% end if %>  
                      <input type="hidden" name="portDHCPRelayFlag" value="<% tcWebApi_get("Dhcpd_Common","PortDHCPRelay","s") %>">
                      <input type="hidden" name="portLan1" value="<% tcWebApi_get("Dhcpd_Common","PortLan1","s") %>">
                      <input type="hidden" name="portLan2" value="<% tcWebApi_get("Dhcpd_Common","PortLan2","s") %>">
                      <input type="hidden" name="portLan3" value="<% tcWebApi_get("Dhcpd_Common","PortLan3","s") %>">
                      <input type="hidden" name="portLan4" value="<% tcWebApi_get("Dhcpd_Common","PortLan4","s") %>">
                      <input type="hidden" name="portSSID1" value="<% tcWebApi_get("Dhcpd_Common","PortSSID1","s") %>">
                      <input type="hidden" name="portSSID2" value="<% tcWebApi_get("Dhcpd_Common","PortSSID2","s") %>">
                      <input type="hidden" name="portSSID3" value="<% tcWebApi_get("Dhcpd_Common","PortSSID3","s") %>">
                      <input type="hidden" name="portSSID4" value="<% tcWebApi_get("Dhcpd_Common","PortSSID4","s") %>">
                      <input type="hidden" name="DeviceDHCPRelayFlag" value="<% tcWebApi_get("Dhcpd_Common","DeviceDHCPRelay","s") %>">
                      <input type="hidden" name="IPV4_Flag" value="0">
                      <input type="hidden" name="EthendIPcount" value="100">
                      <input type="hidden" name="DeviceendIPcount" value="80"> 
					  
					  <input type="hidden" name="DomainFlag" value="<% tcWebApi_get("Lan_Entry0","Domain","s") %>">
					  <input type="hidden" name="dnsmasqRebootflag" value="0">
                      <script language="JavaScript" type="text/JavaScript">
					  function dhcpSecPortRelay()
					{
						with (document.forms[0])
						{
							if(getCheckVal('enablePortRelay') == 1)
								{
								setDisplay('portrelayInfo', 1);			
								document.ConfigForm.portDHCPRelayFlag.value="Yes";
								}
							else
							{
									setDisplay('portrelayInfo', 0);
									document.ConfigForm.portDHCPRelayFlag.value="No";
							}
						}
					}
					  function checkportcheckboxstate()
					  {
					  	var	vForm = document.ConfigForm;
						
						if(vForm.PortRelay_lan1.checked)
							vForm.portLan1.value = "Yes";
						else vForm.portLan1.value = "No";
						if(vForm.PortRelay_lan2.checked)
							vForm.portLan2.value = "Yes";
						else vForm.portLan2.value = "No";
						if(vForm.PortRelay_lan3.checked)
							vForm.portLan3.value = "Yes";
						else vForm.portLan3.value = "No";
						if(vForm.PortRelay_lan4.checked)
							vForm.portLan4.value = "Yes";
						else vForm.portLan4.value = "No";
						if(vForm.PortRelay_ssid1.checked)
							vForm.portSSID1.value = "Yes";
						else vForm.portSSID1.value = "No";
						if(vForm.PortRelay_ssid2.checked)
							vForm.portSSID2.value = "Yes";
						else vForm.portSSID2.value = "No";
						if(vForm.PortRelay_ssid3.checked)
							vForm.portSSID3.value = "Yes";
						else vForm.portSSID3.value = "No";
						if(vForm.PortRelay_ssid4.checked)
							vForm.portSSID4.value = "Yes";
						else vForm.portSSID4.value = "No";
					  }
					  function GetEndSubStartCount(EndIp, StartIp)
					  {
					  	var vret;
						addrEnd = EndIp.split('.');
						addrStart = StartIp.split('.');
						E = parseInt(addrEnd[3]) + 1;
						S = parseInt(addrStart[3]);
						vret = E - S;
						return vret;
						
					  }
					  function btnSaveIPv4()
					  {
					  	if(CheckForm(1) == false)
							return false;
						var	vForm = document.ConfigForm;
						vForm.EthendIPcount.value = GetEndSubStartCount(vForm.dhcpEthEnd.value, vForm.dhcpEthStart.value);
						vForm.DeviceendIPcount.value = GetEndSubStartCount(vForm.dhcpEthEndFrag.value, vForm.dhcpEthStartFrag.value);
						
					 	checkportcheckboxstate();
					  
						vForm.IPV4_Flag.value = "1";
						vForm.submit();		
					  }
					  function devicedhcpRelay()
					  {
					  	var	vForm = document.ConfigForm;
						if(vForm.enableRelay.checked)
							vForm.DeviceDHCPRelayFlag.value = "Yes";
						else vForm.DeviceDHCPRelayFlag.value = "No";
					  }
					  
					  function initLeaseTimeTable()
					  {
					  	var leaseTime = '<% tcWebApi_get("Dhcpd_Common","lease","s") %>';
					  	var optname = new Array('One minute', 'one hour', 'one day', 'one week');
					  	var optvalue = new Array('60', '3600', '86400', '604800');
					  	var cusname = leaseTime + ' seconds';
					  	var hascusopt = true;
					  	var isSel = 0;

				  		with (getElById('dhcpLeasedTimeFrag'))
							{
								for( i=0; i< optname.length; i++)
								{
									var opt = new Option(optname[i], optvalue[i]);
									if ( leaseTime == optvalue[i] )
									{
										opt.selected = true
										isSel = i;
										hascusopt = false;
									}
									options.add ( opt );
									options[isSel].setAttribute('selected', 'true');
								}
								
								
								if ( hascusopt && isInteger(leaseTime) && '0' != leaseTime )
								{
									var optcus = new Option(cusname, leaseTime);
									optcus.selected = true
									options.add ( optcus );
									isSel = i;
									options[isSel].setAttribute('selected', 'true');
								}
							}
					  }
					  </script>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=150 height="24">IP Address:</TD>
                      <TD><INPUT maxLength=15 onchange=setDhcpAddresses(this.value) 
                      name="ethIpAddress" value="<% if tcWebApi_get("Lan_Entry","IP","h" ) <> "N/A" then tcWebApi_get("Lan_Entry","IP","s" ) end if %>"></TD></TR>
                    <TR>
                      <TD>Subnet Mask:</TD>
                      <TD><INPUT maxLength=15 onchange=setDhcpAddresses(ethIpAddress.value) 
                        name="ethSubnetMask" value="<% if tcWebApi_get("Lan_Entry","netmask","h" ) <> "N/A" then tcWebApi_get("Lan_Entry","netmask","s" ) end if %>"></TD></TR>
					<% if tcwebApi_get("WebCustom_Entry","isLocalDomainNameSupported","h") ="Yes" then %>               

					<TR>
                      <TD>Local Domain Name:</TD>
                      <TD><INPUT  
                      id="LocalDomainName"  name="LocalDomainName" maxlength=64 value="<% if tcWebApi_get("Lan_Entry0","Domain","h" ) <> "N/A" then tcWebApi_get("Lan_Entry0","Domain","s" ) end if %>">
					</TD>
					<TD> <label id="promptId" style="font-size:10px;">(It is not less than 4 characters, and no more than 64 bytes contain "." visible string. It can also be empty.)</label></TD>
					</TR>
					<% end if %>	
						
						
						</TBODY></TABLE><BR>
                  <DIV id=upnpInfo>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY></TBODY></TABLE></DIV>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>		  
                    <TBODY>
                    <TR>
                      <TD colSpan=2>
					  	<div id=dhcpSrvType0> <INPUT id=dhcpSrvType onClick="typeClick()" type=radio value="0" name="dhcpSrvType" <%if tcWebApi_get("Lan_Dhcp","type","h") = "0" then asp_Write("checked") end if %>>Disable DHCP Server </div>
					  	<INPUT id="dhcpSrvType" onClick="typeClick()"  type=radio  value="1" name="dhcpSrvType" <%if tcWebApi_get("Lan_Dhcp","type","h") = "1" then asp_Write("checked") end if %>>Enable DHCP Server  
					  </TD>
					</TR>
                    <TR>
                      <TD colSpan=2>
					  <INPUT id="dhcpSrvType" onClick="typeClick()"  type=radio  value="2" name="dhcpSrvType" <%if tcWebApi_get("Lan_Dhcp","type","h") = "2" then asp_Write("checked") end if %>>Enable DHCP Relay</TD>
                    </TR>
					<TR id="devicetype">
                      <TD width=150 height="24" style="display:block">Device Type:</TD><TD><SELECT onChange="IpPoolIndexChange()" size=1 name="IpPoolIndex"> 
                      	<OPTION value="HGW" <%if tcWebApi_get("Dhcpd_Option60","DeviceStyle","h") = "HGW" then asp_Write("selected") end if%>>HGW
                          <OPTION value="STB" <%if tcWebApi_get("Dhcpd_Option60","DeviceStyle","h") = "STB" then asp_Write("selected") end if%>>STB
						  <OPTION value="Phone" <%if tcWebApi_get("Dhcpd_Option60","DeviceStyle","h") = "Phone" then asp_Write("selected") end if%>>Phone
						  <OPTION value="Camera" <%if tcWebApi_get("Dhcpd_Option60","DeviceStyle","h") = "Camera" then asp_Write("selected") end if%>>Camera
						  <OPTION value="Computer" <%if tcWebApi_get("Dhcpd_Option60","DeviceStyle","h") = "Computer" then asp_Write("selected") end if%>>Computer</OPTION>
						  </SELECT></TD></TR>
                    <TR id="dhcpstartaddr">
                      <TD >Start IP Address:</TD>
                      <TD style="display:none;"><INPUT maxLength=15 name="dhcpEthStart" value="<%if tcWebApi_get("Dhcpd_Common","start","h" ) <> "N/A" then tcWebApi_get("Dhcpd_Common","start","s") end if %>"></TD>
                      <TD style="display:none;"></TD>
                      <TD height="24" style="display:block"><INPUT maxLength=15 name="dhcpEthStartFrag" value="<%if tcWebApi_get("Dhcpd_Option60","start","h" ) <> "N/A" then tcWebApi_get("Dhcpd_Option60","start","s") end if %>"></TD></TR>
                    <TR id="dhcpendaddr">
                      <TD >End IP Address:</TD>
                      <TD style="display:none;"><INPUT maxLength=15 name="dhcpEthEnd" value="<%if tcWebApi_get("Dhcpd_Common","pool_count","h" ) <> "N/A" then tcWebApi_get("Dhcpd_Common","pool_count","s") end if %>"></TD>
                      <TD style="display:none;"></TD>
                      <TD height="24" style="display:block"><INPUT maxLength=15 name="dhcpEthEndFrag" value="<%if tcWebApi_get("Dhcpd_Option60","pool_count","h" ) <> "N/A" then tcWebApi_get("Dhcpd_Option60","pool_count","s") end if %>"></TD></TR>
                    <TR id="dhcplease">
                      <TD>Lease:</TD>
                      <TD><SELECT size=1 name='dhcpLeasedTimeFrag' id='dhcpLeasedTimeFrag'>
                      	</SELECT>
                        <SCRIPT language=JavaScript type=text/javascript>
												initLeaseTimeTable();
												</SCRIPT>
                      </TD>
                      <TD><input type=hidden name=RouteIPChangeFlag value=0></TD>
                      <TD style="display:none">Device DHCP relay: <INPUT type=checkbox onclick=devicedhcpRelay() name=enableRelay <%if tcWebApi_get("Dhcpd_Common","DeviceDHCPRelay","h") = "Yes" then asp_Write("checked") end if %>>
					  </TD></TR>
		            <TR>
                      <TD colSpan=2 id=manualDNSRow>
					  <INPUT id="manualDNS" name="manualDNS"  onClick="manualDNSClick()"  type=checkbox  <%if tcWebApi_get("Dhcpd_Common","autoDNS","h") = "0" then asp_Write("checked") end if %>>Manual DNS</TD>
					  <INPUT TYPE="HIDDEN" NAME="autoDNSvalue" VALUE="0">
                    </TR>
		            <TR id=preferredDNSRow>
                      <TD>Preferred DNS</TD>
					  <TD><INPUT id="preferredDNS"  name="preferredDNS" value="<% if tcWebApi_get("Dhcpd_Common","preferredDNS","h" ) <> "N/A" then tcWebApi_get("Dhcpd_Common","preferredDNS","s" ) end if %>"> </TD>
                    </TR>
		            <TR id=alternateDNSRow>
                      <TD>Alternate DNS</TD>
					  <TD><INPUT id="alternateDNS" name="alternateDNS" value="<% if tcWebApi_get("Dhcpd_Common","alternateDNS","h" ) <> "N/A" then tcWebApi_get("Dhcpd_Common","alternateDNS","s" ) end if %>"> </TD>
                    </TR>
					
	
					  </TBODY></TABLE>
                  <DIV id=portrelayEnable>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                              <TD style="display:none"> <BR>
                                Port DHCP relay 
					  <INPUT id=enablePortRelay onClick="dhcpSecPortRelay()" type=checkbox name="enablePortRelay" <%if tcWebApi_get("Dhcpd_Common","PortDHCPRelay","h") = "Yes" then asp_Write("checked") end if%>> 
					  </TD></TR></TBODY></TABLE></DIV>
                  <DIV id=portrelayInfo>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD>
                        <DIV id=sec_lan1><INPUT id=PortRelay_lan1 type=checkbox name="PortRelay_lan1" <%if tcWebApi_get("Dhcpd_Common","PortLan1","h") = "Yes" then asp_Write("checked") end if %>> LAN 1 &nbsp; </DIV>
                        <DIV id=sec_ssid1><INPUT id=PortRelay_ssid1 
                        type=checkbox name="PortRelay_ssid1" <%if tcWebApi_get("Dhcpd_Common","PortSSID1","h") = "Yes" then asp_Write("checked") end if %>> SSID 1 </DIV></TD>
                      <TD>
                        <DIV id=sec_lan2><INPUT id=PortRelay_lan2 type=checkbox name="PortRelay_lan2" <%if tcWebApi_get("Dhcpd_Common","PortLan2","h") = "Yes" then asp_Write("checked") end if %>> LAN 2 &nbsp; </DIV>
                        <DIV id=sec_ssid2><INPUT id=PortRelay_ssid2 
                        type=checkbox name="PortRelay_ssid2" <%if tcWebApi_get("Dhcpd_Common","PortSSID2","h") = "Yes" then asp_Write("checked") end if %>> SSID 2 </DIV></TD>
                      <TD>
                        <DIV id=sec_lan3><INPUT id=PortRelay_lan3 type=checkbox name="PortRelay_lan3" <%if tcWebApi_get("Dhcpd_Common","PortLan3","h") = "Yes" then asp_Write("checked") end if %>> LAN 3 &nbsp; </DIV>
                        <DIV id=sec_ssid3><INPUT id=PortRelay_ssid3 
                        type=checkbox name="PortRelay_ssid3" <%if tcWebApi_get("Dhcpd_Common","PortSSID3","h") = "Yes" then asp_Write("checked") end if %>> SSID 3 </DIV></TD>
                      <TD>
                        <DIV id=sec_lan4><INPUT id=PortRelay_lan4 type=checkbox name="PortRelay_lan4" <%if tcWebApi_get("Dhcpd_Common","PortLan4","h") = "Yes" then asp_Write("checked") end if %>> LAN 4 &nbsp; </DIV>
                        <DIV id=sec_ssid4><INPUT id=PortRelay_ssid4 type=checkbox name="PortRelay_ssid4" <%if tcWebApi_get("Dhcpd_Common","PortSSID4","h") = "Yes" then asp_Write("checked") end if %>> SSID 4 
                  </DIV></TD></TR></TBODY></TABLE>
                      </DIV>
                      <P align=center> 
                        <INPUT style="DISPLAY: none" onclick=btnSaveIPv4() type=button value=Save name=button>
                        <INPUT style="DISPLAY: none" onclick=btnSaveIPv4() type=button value=Save/reboot name=button>
                      </P>
                      <DIV id=DhcprelayIP>
					  <NOBR>&nbsp;Remote server IP:&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT maxLength=15 name="dhcpRelayServerIP" value="<%if tcWebApi_get("DhcpRelay_Entry","Server","h" ) <> "N/A" then tcWebApi_get("DhcpRelay_Entry","Server","s" ) end if %>"></NOBR></P>
							 <NOBR>Agent Circuit ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT maxLength=254 name="dhcpRelaycircuitId" value="<%if tcWebApi_get("DhcpRelay_Entry","circuitId","h" ) <> "N/A" then tcWebApi_get("DhcpRelay_Entry","circuitId","s" ) end if %>"></NOBR></P>
						 <NOBR>Agent Remote ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT maxLength=254 name="dhcpRelayremoteId" value="<%if tcWebApi_get("DhcpRelay_Entry","remoteId","h" ) <> "N/A" then tcWebApi_get("DhcpRelay_Entry","remoteId","s" ) end if %>"></NOBR></P>
                      </DIV></TD>
                <TD width=10>&nbsp;</TD></TR><BR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD align=middle width=307>
				<BUTTON onClick="btnSaveIPv4();" type="button" name=btnApply1 value="Apply">Save</BUTTON></TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></FORM></TD></TR>
        <TR>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") ="Yes" then %> 
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
<% else %>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>IPv6 Settings</P></TD>
          <TD width=8 bgColor=#ffffff>&nbsp;</TD>
<% end if %> 
          <TD width=674>&nbsp;</TD></TR>
        <TR >
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
              <FORM name="RAConfigForm" action="/cgi-bin/net-dhcp.asp" method="post">
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") ="Yes" then %>               
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 style="display:none;">
<% else %>
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<% end if %>  
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <P>If the preferred lifetime of a IPv6Address expired, this Address would be prohobit to start a new connection in generally<BR>while it can be last for existing connections and input connections, until its useful life is exhausted.</P>
                      <BR></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD width=147><B>RA Configuration</B><BR>
                      <input type="hidden" name="RA_Flag" value="0">
                      <input type="hidden" name="RAEnable_Flag" value="<% tcWebApi_get("Radvd_Entry","Enable","s") %>">
                      <input type="hidden" name="RAMode" value="<% tcWebApi_get("Radvd_Entry","Mode","s") %>">
                      <input type="hidden" name="RAManagedEn_Flag" value="<% tcWebApi_get("Radvd_Entry","ManagedEnable","s") %>">
			<input type="hidden" name="RAOtherEn_Flag" value="<% tcWebApi_get("Radvd_Entry","OtherEnable","s") %>">
                      <script language="JavaScript" type="text/JavaScript">
			function RAUseWanChange()
			{
				with (document.forms[1])
				{
					if ("Normal" == RAUseWan.value && 1 == getCheckVal('radvdSrvType'))
					{
						setDisplay('RadvdPrefixCfg', 1);
						RAMode.value = "1";
					}
					else
					{
						setDisplay('RadvdPrefixCfg', 0);
						RAMode.value = "0";
					}
					
					setDisplay('rapdsourcepart', ('Normal' == RAUseWan.value) ? 0 : 1);
					setDisplay('ramoflagdisp', ('Normal' == RAUseWan.value) ? 0 : 1);
				}
			}
			function RATypeClick()
			{
				with (document.forms[1])
				{
					if (getCheckVal('radvdSrvType') == 0)
					{
						disableRASrv();
						RAEnable_Flag.value = "0";
					}
					else
					{
						enableRASrv(1);
						RAEnable_Flag.value = "1";
						RAUseWanChange();
					}
				}
			}
			function RAMOClick(flag)
			{
				with (document.forms[1])
				{
					if(0 == flag){
						if (getCheckVal('radvdmanageden') == 0)
						{
							RAManagedEn_Flag.value = "0";
						}
						else
						{
							RAManagedEn_Flag.value = "1";
						}
					}
					else if(1 == flag){
						if (getCheckVal('radvdotheren') == 0)
						{
							RAOtherEn_Flag.value = "0";
						}
						else
						{
							RAOtherEn_Flag.value = "1";
						}
					}
				}
			}

			var nEntryNum = "<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>";
				// num 0
				var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
				var vEntryName = vArrayStr.split(','); 
				vArrayStr = "<% tcWebApi_get("WanInfo_Common","ValidIFIndex","s") %>";
				var vEntryIndex = vArrayStr.split(',');
				<% tcWebApi_constSet("WanInfo_Common", "CycleJump", "5") %>
				// num 6
				vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
				var vIPVersion = vArrayStr.split(',');

				function dnsSourceListChg()
				{
					var dnsSourceType = getSelectVal('dnssource');
					
					if ( '998' == dnsSourceType )
					{
						setDisplay('dnssourcepart_2', 1);
						setDisplay('dnssourcepart_3', 1);
					}
					else
					{
						setDisplay('dnssourcepart_2', 0);
						setDisplay('dnssourcepart_3', 0);
					}
				}

				function initDnsSourceList()
				{
					var DnsSourceIdx = '<% tcWebApi_get("Dhcp6s_Entry","DNSWANConnection","s") %>';
					var DnsType = '<% tcWebApi_get("Dhcp6s_Entry","DNSType","s") %>';
					var i = 0;
					var isSel = -1;
					var itemCnt = 0;
				
					with (getElById('dnssource'))
					{
						for( i=0; i< parseInt(nEntryNum) + 2; i++)
						{
							var opt;

							if ( 0 == i )
								opt = new Option('HGWProxy', '999');
							else if ( 1 == i )
								opt = new Option('Static', '998');
							else
							{
								var WAN_Entry = i - 2;
								var CONName = vEntryName[WAN_Entry];
								if ( ( CONName.indexOf('_INTERNET_R_') < 0 && CONName.indexOf('_OTHER_R_') < 0 )
									|| 'IPv4' == vIPVersion[WAN_Entry] )
									continue;

								opt = new Option(CONName, vEntryIndex[WAN_Entry]);
							}
							
							if ( 0 == i && '2' == DnsType )
							{
								opt.selected = true;
								isSel = 0;
							}
							else if ( 1 == i && '1' == DnsType )
							{
								opt.selected = true;
								isSel = 1;
							}
							else if ( i > 1 &&  '0' == DnsType && DnsSourceIdx == vEntryIndex[i - 2] )
							{
								opt.selected = true;
								isSel = itemCnt;
							}
							
							itemCnt ++;
							options.add ( opt );
						}
						
						if ( isSel >= 0 )
							options[isSel].setAttribute('selected', 'true');
					}
				}
				
				function initRaPDSourceList()
				{
					var RaPdSourceIdx = '<% tcWebApi_get("Radvd_Entry","DelegatedWanConnection","s") %>';
					var RaPdType = '<% tcWebApi_get("Radvd_Entry","AutoPrefix","s") %>';
					var RaPdTmpUseIdx = '<% tcWebApi_get("WanInfo_Common","PDRUNIFIdx","s") %>';
					var i = 0;
					var isSel = -1;
					var bakSel = -1;
					var itemCnt = 0;

					with (getElById('rapdsource'))
					{
						for( i=0; i< parseInt(nEntryNum); i++)
						{
							var opt;
							var CONName = vEntryName[i];

							if ( ( CONName.indexOf('_INTERNET_R_') < 0 && CONName.indexOf('_OTHER_R_') < 0 )
								|| 'IPv4' == vIPVersion[i] )
								continue;

							opt = new Option(CONName, vEntryIndex[i]);

							if ( 'N/A' == RaPdType || 0 == RaPdSourceIdx.length )
							{
								if (  'N/A' != RaPdTmpUseIdx && RaPdTmpUseIdx == vEntryIndex[i] )
								{
									opt.selected = true;
									isSel = itemCnt;
								}
							}
							else
							{
								if (  'N/A' != RaPdSourceIdx && RaPdSourceIdx == vEntryIndex[i] )
								{
									opt.selected = true;
									isSel = itemCnt;
								}
								else
								{
									if (  'N/A' != RaPdTmpUseIdx && RaPdTmpUseIdx == vEntryIndex[i] )
									{
										bakSel = itemCnt;
									}
								}
							}

							itemCnt ++;
							options.add ( opt );
						}
						if ( isSel >= 0 )
							options[isSel].setAttribute('selected', 'true');
						else if ( bakSel >= 0 )
						{
								options[bakSel].selected = true;
								options[bakSel].setAttribute('selected', 'true');
						}
					}
				}
					  </script></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE>
                    <TBODY>
                    <TR>
                      <TD align=right width=120>SLAAC:</TD>
                      <TD align=left width=307><INPUT id=radvdSrvType onClick="RATypeClick();" type=checkbox name="radvdSrvType" <%if tcWebApi_get("Radvd_Entry","Enable","h") = "1" then asp_Write("checked") end if%>>enable
					  </TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV id=RAAssConnection style="DISPLAY: none">
                  <TABLE>
                    <TBODY>
                    <TR>
                      <TD align=right width=120>Configuration Mode:</TD>
                      <TD align=left width=307><SELECT id=RAUseWan onChange="RAUseWanChange()" name="RAUseWan"> 
				<OPTION value="Normal" <%if tcWebApi_get("Radvd_Entry","Mode","h") = "1" then asp_Write("selected") end if%>>Manual configuration</OPTION> 
						<OPTION value="UseAllocatedSubnet" <%if tcWebApi_get("Radvd_Entry","Mode","h") = "0" then asp_Write("selected") end if%>>Auto Configuration</OPTION>
						</SELECT></TD></TR>
                    <TR id='rapdsourcepart' style="display: none">
                      <TD align=right>Prefix Source :</TD>
                      <TD align=left>
                          <SELECT id=rapdsource name="rapdsource"></SELECT>
	              		      <script language=JavaScript type=text/javascript>
	                        initRaPDSourceList();
	                        </script>
                      </TD>
                    </TR>
										<TR id='ramoflagdisp' style="display: none">
					          	<TD align=right>&nbsp;</TD>
					         		<TD align=left>
												  <input type="checkbox" name="ramflag" id="ramflag" <%if tcWebApi_get("Radvd_Entry","ManagedEnable","h") = "1" then asp_Write("checked") end if%>>Enable Managed Mark
													<input type="checkbox" name="raoflag" id="raoflag" <%if tcWebApi_get("Radvd_Entry","OtherEnable","h") = "1" then asp_Write("checked") end if%>>Enable Other Mark </TD>
					          </TR>
									</TBODY></TABLE></DIV></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV id=RadvdPrefixCfg style="DISPLAY: none">
                  <TABLE>
                    <TBODY>
                    <TR id=NamePrefix>
                      <TD align=right width=120>Prefix:</TD>
                      <TD align=left width=307><INPUT maxLength=39 onChange="this.value = this.value.toLowerCase( )" name="radvdPrefix" value="<%if tcWebApi_get("Radvd_Entry","PrefixIPv6","h") <> "N/A" then tcWebApi_get("Radvd_Entry","PrefixIPv6","s") end if%>"> <STRONG 
                        style="COLOR: #ff0033">*</STRONG></TD></TR>
                    <TR id=NamePrefixLen>
                      <TD width=120 height="26" align=right>Prefix Length:</TD>
                      <TD align=left width=307><INPUT maxLength=2 name="RAPrefixLen" value="<%if tcWebApi_get("Radvd_Entry","Prefixv6Len","h") <> "N/A" then tcWebApi_get("Radvd_Entry","Prefixv6Len","s") end if%>"> <STRONG 
                        style="COLOR: #ff0033">*</STRONG>[16 - 64]</TD></TR>
                    <TR>
                      <TD align=right width=120>Preferred life:</TD>
                      <TD align=left width=307><INPUT maxLength=10 name="RAt1" value="<%if tcWebApi_get("Radvd_Entry","PreferredLifetime","h") <> "N/A" then tcWebApi_get("Radvd_Entry","PreferredLifetime","s") end if%>"> 
                        <STRONG style="COLOR: #ff0033">*</STRONG>[600 - 4294967295 S]</TD></TR>
                    <TR>
                      <TD align=right width=120>Effective life:</TD>
                      <TD align=left width=307><INPUT maxLength=10 name="RAt2" value="<%if tcWebApi_get("Radvd_Entry","ValidLifetime","h") <> "N/A" then tcWebApi_get("Radvd_Entry","ValidLifetime","s") end if%>"> 
                        <STRONG style="COLOR: #ff0033">*</STRONG>[600 - 4294967295 S]</TD></TR>
					<TR>
                              <TD align=right width=120></TD>
                              <TD align=left width=307>
							  	<input type="checkbox" onClick="RAMOClick(0);" name="radvdmanageden" id="radvdmanageden" <%if tcWebApi_get("Radvd_Entry","ManagedEnable","h") = "1" then asp_Write("checked") end if%>>Open Managed Mark
								<input type="checkbox" onClick="RAMOClick(1);" name="radvdotheren" id="radvdotheren" <%if tcWebApi_get("Radvd_Entry","OtherEnable","h") = "1" then asp_Write("checked") end if%>>Open Other Mark </TD>
                            </TR>
					<TR>
                              <TD align=right width=120>RA minimum interval:</TD>
                      <TD align=left width=307><INPUT maxLength=4 name="RACycMin" value="<%if tcWebApi_get("Radvd_Entry","MinRAInterval","h") <> "N/A" then tcWebApi_get("Radvd_Entry","MinRAInterval","s") end if%>">
                                <STRONG style="COLOR: #ff0033">*</STRONG>[3 - 
                                1350 S]</TD>
                            </TR>
					<TR>
                              <TD align=right width=120>RA maximum interval:</TD>
                      <TD align=left width=307><INPUT maxLength=4 name="RACycMax" value="<%if tcWebApi_get("Radvd_Entry","MaxRAInterval","h") <> "N/A" then tcWebApi_get("Radvd_Entry","MaxRAInterval","s") end if%>">
                                <STRONG style="COLOR: #ff0033">*</STRONG>[4 - 
                                1800 S]</TD>
                            </TR></TBODY></TABLE></DIV></TD></TR>
              <TR>
                <TD colSpan=2><BR></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD align=middle width=307><BUTTON type="button" onclick=RASubmit(); 
                  name="btnRASubmit" value="Apply">Save</BUTTON></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <HR>
                </TD></TR></TBODY></TABLE></FORM></TD></TR>
				
				
				
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <FORM id=ConfigForm1 name="ConfigForm1" action="/cgi-bin/net-dhcp.asp" method="post">
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") ="Yes" then %>            
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 style="display:none;">
<% else %>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<% end if %>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD width=147><B>DHCP Configure</B><BR>
                      <input type="hidden" name="Dhcp1_Flag" value="0"> 
                      <input type="hidden" name="EnDHCPServerFlag" value="<% tcWebApi_get("Dhcp6s_Entry","Enable","s") %>">
                      <input type="hidden" name="DHCPSetTypeFlag" value="<% tcWebApi_get("Dhcp6s_Entry","Mode","s") %>">
                      <script language="JavaScript" type="text/JavaScript">
					  function typev6Click()
					{
					with ( document.forms[2] )
					{
					if (getCheckVal('dhcp6SrvType') == 0)//unchecked
					{
					disableDhcp6Srv();
					EnDHCPServerFlag.value = "0";
					}
					else
					{
					enableDhcp6Srv(1);
					EnDHCPServerFlag.value = "1";
					}
						dnsSourceDisp();
					}
					}

					function dnsSourceHide()
					{
						setDisplay('dnssourcepart', 0);
						setDisplay('dnssourcepart_2', 0);
						setDisplay('dnssourcepart_3', 0);
					}
					function dnsSourceDisp()
					{
						with (document.forms[2])
						{
							if (1 == getCheckVal('dhcp6SrvType'))
							{
								if ( 'Normal' == UseWan.value )
								{
									dnsSourceHide();
								}
								else
								{
									setDisplay('dnssourcepart', 1);
									dnsSourceListChg();
								}
							}
							else
							{
									dnsSourceHide();
							}
						}
					}

					 function UseWanChange()
					{
						with (document.forms[2])
						{
							if ( ("Normal" == UseWan.value) && (1 == getCheckVal('dhcp6SrvType')) )
							{
								setDisplay('DHCP6SPrefixCfg', 1);
								DHCPSetTypeFlag.value = "1";
							}
							else
							{
								if( "UseAllocatedSubnet" == UseWan.value)
									DHCPSetTypeFlag.value = "0";
								else if( "UseAllocatedOther" == UseWan.value)
									DHCPSetTypeFlag.value = "2";
								setDisplay('DHCP6SPrefixCfg', 0);
							}
							
							dnsSourceDisp();
						}
					}

					function DhcpCheckForm(type)
					{
						with (document.forms[2])
						{
							if (1 != getCheckVal('dhcp6SrvType') || "Normal" != UseWan.value)
							{
								if ( 1 == getCheckVal('dhcp6SrvType') )
								{
									var dnsSourceType = getSelectVal('dnssource');
									
									if ( '998' == dnsSourceType )
									{
										if ("" == DnsSrvOne_Source.value || true != CheckPrefix(DnsSrvOne_Source.value,1))
										{
											alert('Primary DNS Server : "' + DnsSrvOne_Source.value + '" is not a valid IPv6 Address !');
											return false;
										}
										
										if ("" != DnsSrvTwo_Source.value && true != CheckPrefix(DnsSrvTwo_Source.value,1))
										{
											alert('Secondary DNS Server : "' + DnsSrvTwo_Source.value + '" is not a valid IPv6 Address !');
											return false;
										}	
									}
								}

								return true;
							}
							
							if (true != CheckPrefix(dhcpPrefix.value,0))
							{
								alert('Prefix : "' + dhcpPrefix.value +'" is not a valid IPv6 Address !');
								return false;
							}
							
							if (true != CheckLength(PrefixLen.value))
							{
								alert("Prefix Length:\"" + PrefixLen.value + "\"is invalid");
								return false;
							}
							
							switch (CheckTime(t1.value,t2.value))
							{
								case 1 :
								{
									alert('Preferred life : "' + t1.value + '" is invalid !');
									return false;
								}
								case 2 :
								{
									alert('Effective life : "' + t2.value + '" is invalid !');
									return false;
								}
								case 3 :
								{
									alert('Effective life : ' + t2.value + 'is less than or equal to' + 'Preferred life : ' + t1.value);
									return false;
								}
							}
							
							if ("" == DnsSrvOne.value || true != CheckPrefix(DnsSrvOne.value,1))
							{
								alert('Primary DNS Server : "' + DnsSrvOne.value + '" is not a valid IPv6 Address !');
								return false;
							}
							
							if ("" != DnsSrvTwo.value && true != CheckPrefix(DnsSrvTwo.value,1))
							{
								alert('Secondary DNS Server : "' + DnsSrvTwo.value + '" is not a valid IPv6 Address !');
								return false;
							}		
						}
						return true;
					}

			function btnDhcp1Save()
			{
				if (DhcpCheckForm() == true){
					document.ConfigForm1.Dhcp1_Flag.value = "1";
					document.ConfigForm1.submit();
			}
}
					  </script>
                    </TD>
                  </TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE>
                    <TBODY>
                    <TR>
                      <TD align=left width=150> Server:</TD>
                      <TD align=left width=307><INPUT id=dhcp6SrvType onClick="typev6Click()" type=checkbox name="dhcp6SrvType" <%if tcWebApi_get("Dhcp6s_Entry","Enable","h") = "1" then asp_Write("checked") end if%>>Enable</TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV id=AssConnection style="DISPLAY: none">
                  <TABLE>
                    <TBODY>
                    <TR>
                      <TD align=left width=150>Configuration Mode:</TD>
                      <TD align=left width=307><SELECT id=UseWan  onchange="UseWanChange()" name="UseWan"> 
						<OPTION value="Normal" <%if tcWebApi_get("Dhcp6s_Entry","Mode","h") = "1" then asp_Write("selected") end if%>>Manual configuration</OPTION> 
						<OPTION value="UseAllocatedSubnet" <%if tcWebApi_get("Dhcp6s_Entry","Mode","h") = "0" then asp_Write("selected") end if%>>Automatically configure the prefix and DNS server</OPTION> 
						<OPTION  value="UseAllocatedOther" <%if tcWebApi_get("Dhcp6s_Entry","Mode","h") = "2" then asp_Write("selected") end if%>>Automatically configure the DNS server</OPTION>
						  </SELECT></TD></TR>
						         <TR id='dnssourcepart' style="display: none">
                      <TD align=left width=150>Source of the DNS Server:</TD>
                      <TD align=left width=307>
                          <SELECT id=dnssource name="dnssource" onchange='dnsSourceListChg()'></SELECT>
	              		      <script language=JavaScript type=text/javascript>
	                        initDnsSourceList();
	                        </script>
                       </TD>
                    </TR> 
										<TR id='dnssourcepart_2' style="display: none">
                      <TD align=left width=150>Primary DNS Server:</TD>
                      <TD align=left width=307><INPUT maxLength=39 name="DnsSrvOne_Source" value="<%if tcWebApi_get("Dhcp6s_Entry","DNSserver","h") <> "N/A" then tcWebApi_get("Dhcp6s_Entry","DNSserver","s") end if%>"><STRONG style="COLOR: #ff0033">*</STRONG>
                      </TD></TR>
                    <TR id='dnssourcepart_3' style="display: none">
                      <TD align=left width=150>Secondary DNS Server:</TD>
                      <TD align=left width=307><INPUT maxLength=39 name="DnsSrvTwo_Source" value="<%if tcWebApi_get("Dhcp6s_Entry","SecDNSserver","h") <> "N/A" then tcWebApi_get("Dhcp6s_Entry","SecDNSserver","s") end if%>">
                      </TD></TR>
						  </TBODY></TABLE></DIV></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV id=DHCP6SPrefixCfg style="DISPLAY: none">
                  <TABLE>
                    <TBODY>
                    <TR>
                      <TD align=left width=150>Distribution Address format:</TD>
                      <TD align=left width=307>
                          <SELECT id=AddrFormat name="AddrFormat"> 
                          <OPTION value="AddrPool" <%if tcWebApi_get("Dhcp6s_Entry","AddrFormat","h") = "AddrPool" then asp_Write("selected") end if%>>Address pool format</OPTION> 
                          <OPTION value="EUI64" <%if tcWebApi_get("Dhcp6s_Entry","AddrFormat","h") = "EUI64" then asp_Write("selected") end if%>>EUI64 Address format</OPTION>
                          </SELECT>
                       </TD>
                    </TR> 
                    <TR>
                      <TD align=left width=150>Prefix:</TD>
                      <TD align=left width=307><INPUT maxLength=39 onChange="this.value = this.value.toLowerCase( )" name="dhcpPrefix" value="<%if tcWebApi_get("Dhcp6s_Entry","PrefixIPv6", "h") <> "N/A" then tcWebApi_get("Dhcp6s_Entry","PrefixIPv6","s") end if%>"><STRONG style="COLOR: #ff0033">*</STRONG></TD></TR>
                    <TR>
                      <TD align=left width=150>Prefix length:</TD>
                      <TD align=left width=307><INPUT maxLength=2 name="PrefixLen" value="<%if tcWebApi_get("Dhcp6s_Entry","Prefixv6Len", "h") <> "N/A" then tcWebApi_get("Dhcp6s_Entry","Prefixv6Len", "s") end if%>"><STRONG style="COLOR: #ff0033">*</STRONG>[16 - 64]</TD></TR>
                    <TR>
                      <TD align=left width=150>Preferred life:</TD>
                      <TD align=left width=307><INPUT maxLength=10 name="t1" value="<%if tcWebApi_get("Dhcp6s_Entry","PreferredLifetime", "h") <> "N/A" then tcWebApi_get("Dhcp6s_Entry","PreferredLifetime", "s") end if%>"><STRONG style="COLOR: #ff0033">*</STRONG>[60 - 4294967295 S]</TD></TR>
                    <TR>
                      <TD align=left width=150>Effective life:</TD>
                      <TD align=left width=307><INPUT maxLength=10 name="t2" value="<%if tcWebApi_get("Dhcp6s_Entry","ValidLifetime", "h") <> "N/A" then tcWebApi_get("Dhcp6s_Entry","ValidLifetime", "s") end if%>"><STRONG style="COLOR: #ff0033">*</STRONG>[60 
                        - 4294967295 S]</TD></TR>
                    <TR>
                      <TD align=left width=150>Primary DNS Server:</TD>
                      <TD align=left width=307><INPUT maxLength=39 name="DnsSrvOne" value="<%if tcWebApi_get("Dhcp6s_Entry","DNSserver","h") <> "N/A" then tcWebApi_get("Dhcp6s_Entry","DNSserver","s") end if%>"><STRONG style="COLOR: #ff0033">*</STRONG></TD></TR>
                    <TR>
                      <TD align=left width=150>Secondary DNS Server:</TD>
                      <TD align=left width=307><INPUT maxLength=39 name="DnsSrvTwo" value="<%if tcWebApi_get("Dhcp6s_Entry","SecDNSserver","h") <> "N/A" then tcWebApi_get("Dhcp6s_Entry","SecDNSserver","s") end if%>"></TD></TR></TBODY></TABLE></DIV></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV id=DHCP6SDomainName style="DISPLAY: none">
                  <TABLE>
                    <TBODY>
                    <TR>
                      <TD align=left width=150>Domain 
                      name:</TD>
                      <TD align=left width=307>
					  <INPUT maxLength=16 name=DomainNameText value="<%if tcWebApi_get("Ddns_Entry","MYHOST","h") <> "N/A" then tcWebApi_get("Ddns_Entry","MYHOST","s") end if%>">
					  </TD></TR></TBODY></TABLE></DIV></TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD align=middle width=307><BUTTON type="button" onClick="btnDhcp1Save();" name=btnApply2 value="Apply">Apply</BUTTON>
				</TD></TR></TBODY></TABLE></FORM></TD></TR>
<% if tcWebApi_get("WebCustom_Entry", "isLoopdetectSupported", "h") = "Yes"  then %>				
				        <TR>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") ="Yes" then %> 
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
<% else %>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>LoopDetect</P></TD>
          <TD width=8 bgColor=#ffffff>&nbsp;</TD>
<% end if %> 
          <TD width=674>&nbsp;</TD></TR>

		<TR>
	   <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
       <TD>
         <FORM name="LoopDetect_ConfigForm" action="/cgi-bin/net-dhcp.asp" method="post">
         <input type="hidden" name="loopdetectFlag" value="0" />
         <input type="hidden" name="LoopDetectMask" value="0" />
        <TABLE cellSpacing=10 cellPadding=0 width="100%" border=0>
           <TBODY>
           
           <TR>
           <TD>
               <P>
               <TABLE cellSpacing=0 cellPadding=3 width="100%" border=1 bordercolor=#e3e3e3>
                 <TBODY>
                 
                 <TR>
                   <TD colspan=3 class=table_title align=middle>Global Configuration</TD>
                 </TR>
                 
                 <TR>
               	<TD>
                   Loop Detection Enable&nbsp;<input id="ethLoopGlobalEnId" type="checkbox" onclick="changeEthLoopGlobalEn()">
                   <input type="hidden" name="ethLooppGlobalEnValue"/>
               	</TD>
               	<TD>
                   Detection Interval&nbsp;
 					<select name=LoopExistPeriod>
                   	<option value=5>5s</option>
                   	<option value=30>30s</option>
                   	<option value=60>1min</option>
                   </select>                 
               	</TD>
               	<TD >
                   Recovery Interval&nbsp;
                   <select name=LoopCancelPeriod>
                     <option value=10>10s</option>
                   	<option value=30>30s</option>
                   	<option value=60>1min</option>
                   	<option value=120>2min</option>
                   	<option value=300>5min</option>
                   </select>
               	</TD>
           	  </TR>
           	</TBODY>
           	</TABLE>
             </P>
            </TD>
           </TR>
           
           <TR>
             <TD>
               <P>
               <TABLE cellSpacing=0 cellPadding=3 width="100%" border=1 bordercolor=#e3e3e3>
                 <TBODY>
                 <TR>
                   <TD class=table_title width="33%" align=middle>Port</TD>
                   <TD class=table_title width="33%" align=middle>Loop Enable</TD>
 
                   <TD class=table_title width="33%" align=middle>Loop Status</TD>
                 </TR>
                 <TR align=middle>
                   <TD>
                   	LAN1
                   </TD>
                   <TD>
                   <input id="eth1LoopEnId" type="checkbox">
                   <input type="hidden" name="eth1LoopEnValue" value="0">
                   </TD>
              
                   <TD id=ETH1_Status>
                   </TD>
				   
                 </TR>
				 <% if tcwebApi_get("WebCustom_Entry","isCT1PORTSupported","h") <> "Yes" then %>
                 <TR align=middle>
                   <TD>
                   	LAN2
                   </TD>
                 <TD>
                   <input id="eth2LoopEnId" type="checkbox">
                   <input type="hidden" name="eth2LoopEnValue" value="0">
                   </TD>
				
                   <TD id=ETH2_Status>
                   </TD>
                 </TR>
				
				 <% if tcwebApi_get("WebCustom_Entry","isCT2PORTSSupported","h") <> "Yes" then %>
                 <TR align=middle>
                   <TD>
                   	LAN3
                   </TD>
                   <TD>
                   <input id="eth3LoopEnId" type="checkbox">
                   <input type="hidden" name="eth3LoopEnValue" value="0">
                   </TD>
				
                   <TD id=ETH3_Status>
                   </TD>
                 </TR>
				
				  <% if tcwebApi_get("WebCustom_Entry","is3PORTSSupported","h") <> "Yes" then %>

                 <TR align=middle>
                   <TD>
                   	LAN4
                   </TD>
                   <TD>
                   <input id="eth4LoopEnId" type="checkbox">
                   <input type="hidden" name="eth4LoopEnValue" value="0">
                   </TD>
				
                   <TD id=ETH4_Status>
                   </TD>
                 </TR>
				   <% end if %>
				    <% end if %>
					  <% end if %>
			
                 </TBODY>
                 </TABLE>
                 </P>
                </TD>
             </TR>
			 <TR>
              <TD align=center>
              	<button onclick="btnSaveLoopDetect()">Apply</button>&nbsp;
                <button onclick="RefreshPage()">Refresh</button>
              </TD>
            </TR>
          
           
           </TBODY></TABLE>
		   </FORM>
		   </TD>
		  </TR>
		  <% end if %>		
				
				
				
				
				
				
				</TBODY></TABLE></TD></TR>
				
				

		  
		  
		  
  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff>&nbsp;</TD>
		  <TD width=7 bgColor=#ffffff border=0></TD>
          <TD width=280 bgColor=#ffffff>&nbsp;</TD>
          <TD width=393 bgColor=#ffffff>
            <P align=center>&nbsp;&nbsp;</P></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><BR></BODY></HTML>
