<%
if Request_Form("IPv6_Flag") = "1" then
	TCWebApi_set("WebCurSet_Entry","route6_id","curSetIdx")
	
	TCWebApi_set("Route6_Entry","Active","hEnableflag")
	TCWebApi_set("Route6_Entry","DST_IP","DestIPAddress")
	TCWebApi_set("Route6_Entry","Prefix_len","PrefixLen")
	if Request_Form("gwEnableflag") = "Yes" then
		TCWebApi_set("Route6_Entry","Gateway","GatewayIPAddress")
	end if
	TCWebApi_set("Route6_Entry","Device","WanInterfaceFlag")
	
	TCWebApi_set("Route6_Entry","metric","metricFlag")
	
	TCWebApi_commit("WebCurSet_Entry")
	TCWebApi_commit("Route6_Entry")
	TCWebApi_save()
end if
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href='/JS/stylemain.css' type='text/css'>
<title>IPv6 Static routing</title>
<script language="javascript" src="/JS/menu.js"></script>
<script language="javascript" src="/JS/util.js"></script>
<script language="JavaScript" type="text/JavaScript">
<% if Request_Form("IPv6_Flag") = "1" then %>
	location.replace("/cgi-bin/net-routeset.asp");
<%end if%>
</script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" alink="#000000" link="#000000" vlink="#000000" style="text-align: center" onLoad="DisplayLocation(getElement('Selected_Menu').value);FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()"
onunload="DoUnload()">
<table width="1008" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td height="1">
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
<TABLE height=80 cellSpacing=0 cellPadding=0 width=1008 background=/img/framelogo.jpg border=0 style="background-repeat:no-repeat;">
<% else %>
<% if tcwebApi_get("WebCustom_Entry","isCTPONTYLOGOSupported","h") = "Yes" then %>
      <TABLE height=80 cellSpacing=0 cellPadding=0 width=808 
      background=/img/framelogo.jpg border=0>
<% else %>
      <TABLE height=117 cellSpacing=0 cellPadding=0 width=1008 
      background=/img/framelogo.jpg border=0 style="background-repeat:no-repeat;">
<% end if %>       
<% end if %> 
<tr>
<td>&nbsp;</td>
<td width="358" align="right" valign="bottom">
<table border="0" cellpadding="0" cellspacing="0" id="table8">
<tr>
<td align="right" valign="bottom">
<span class="curUserName">
&nbsp;
</span>
</td>
<td width="120" align="center" valign="bottom" class="welcom">
Welcome!
</td>
<td width="50" valign="bottom"><a href="/cgi-bin/logout.cgi" target="_top" onClick="DoLogout()">
<span class="logout">
Logout
</span>
</a>
</td>
</tr>
</table></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="1008" height="100" id="table2">
<tr>
<td width="157" rowspan="3" align="center" bgcolor="#6acafc" class="LocationDisplay" id="LocationDisplay"></td>
<td height="33" width="673" bgcolor="#6acafc">
<p align="right"><font color="#FFFFFF" face="Arial"><b><font face="Arial" size="6" color="#FFFFFF">
<input name="Selected_Menu" type="hidden" id="Selected_Menu" value="Network->Routing">
</font></b><span class="GatewayName">CPE Name:
<script language="javascript">
document.write(top.gateWayName);
</script>
</span></font></td>
<td height="33" width="170" bgcolor="#6acafc">
<p align="center" class="GatewayType">Model:
<script language="javascript">
document.write(top.ModelName);
</script></td>
</tr>
<tr>
<td height="43" colspan="2"  bgcolor="#6acafc" valign="bottom" id="MenuArea_L1">&nbsp;</td>
</tr>
<tr>
<td colspan="2" height="24" bgcolor="#dff5ff" id="MenuArea_L2"></td>
</tr>
</table>
<script language="javascript">
MakeMenu(getElById ('Selected_Menu').value);
</script>
<TABLE id="table3" height="15" cellSpacing="0" cellPadding="0" width="1008" border="0">
<TBODY>
<TR>
		<TD width="157" bgColor="#dff5ff" height="15"></TD>
		<TD width="851" bgColor="#ffffff" height="15"></TD>
</TR>
</TBODY>
</TABLE>
</TD>
</TR>
<tr>
<td valign="top">
<script language="JavaScript" type="text/javascript">
	var nEntryNum = <% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
	// num 0
	var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryName = vArrayStr.split(',');
	// num 1
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryValue = vArrayStr.split(',');
	// num 2~5
	<% tcWebApi_constSet("WanInfo_Common", "CycleJump", "4") %>
	// num 6
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var Wan_IPVERSION = vArrayStr.split(',');

	vEntryName = SortUtil.UpdateWanIFName( vEntryName, nEntryNum );
	vEntryValue = SortUtil.SortMyArray( vEntryValue );
	Wan_IPVERSION = SortUtil.SortMyArray( Wan_IPVERSION );
	
var host = [["InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.IPInterface.1","192.168.1.1","255.255.255.0"],null];
var IpAddress = host[0][1];
var SubnetMask = host[0][2];
function stWanppp(domain,wanName,CntType,address,enable,servicelist)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.wanName = wanName;
this.CntType = CntType;
this.LinkType = '';
this.address = address;
this.enable = enable;
this.servicelist = servicelist;
}
function stWanip(domain,wanName,CntType,address,enable,servicelist)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.wanName = wanName;
this.CntType = CntType;
this.LinkType = '';
this.address = address;
this.enable = enable;
this.servicelist = servicelist;
}
function stDsl(domain,LinkType,address,enable,servicelist)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.LinkType = LinkType;
this.address = address;
this.enable = enable;
this.servicelist = servicelist;
}
var WanPPP = new Array(new stWanppp("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANPPPConnection.2","1_TR069_INTERNET_R_0_35","IP_Routed","","1","TR069_INTERNET"),null);
var WanIP = new Array(null);
var CntPvc = new Array(new stDsl("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANDSLLinkConfig","EoA"),null);
var k = 0;
var Wan = new Array();
for (i = 0; i < WanPPP.length-1; i++)
{
if ((WanPPP[i].enable == 0)
|| (WanPPP[i].servicelist.indexOf('TR069') >= 0)
|| (WanPPP[i].CntType.indexOf('Bridge') > -1))
{
continue;
}
Wan[k] = WanPPP[i];
k++;
}
for (j = 0; j < WanIP.length-1; j++)
{
if ((WanIP[j].enable == 0)
|| (WanIP[j].servicelist.indexOf('TR069') >= 0)
|| (WanIP[j].CntType.indexOf('Bridge') > -1))
{
continue;
}
Wan[k] = WanIP[j];
k++;
}

var route6count = 16;
function stStaticRoute6(Domain, DestIPAddress, PrefixLength, GatewayIPAddress, Interface)
{
	this.Domain = Domain;
	this.DestIPAddress = DestIPAddress;
	this.PrefixLength = PrefixLength;
	this.GatewayIPAddress = GatewayIPAddress;
	this.Interface = Interface;
}
function getStaticRoute6Info()
{
	var	nCurTemp = 0;
	var	vDestIPAddress = new Array(route6count);
	var	vPrefixLength = new Array(route6count);
	var	vcurLinks = new Array(route6count);
	
	vDestIPAddress[0] = "<% tcWebApi_get("Route6_Entry0","DST_IP","s") %>";
	vDestIPAddress[1] = "<% tcWebApi_get("Route6_Entry1","DST_IP","s") %>";
	vDestIPAddress[2] = "<% tcWebApi_get("Route6_Entry2","DST_IP","s") %>";
	vDestIPAddress[3] = "<% tcWebApi_get("Route6_Entry3","DST_IP","s") %>";
	vDestIPAddress[4] = "<% tcWebApi_get("Route6_Entry4","DST_IP","s") %>";
	vDestIPAddress[5] = "<% tcWebApi_get("Route6_Entry5","DST_IP","s") %>";
	vDestIPAddress[6] = "<% tcWebApi_get("Route6_Entry6","DST_IP","s") %>";
	vDestIPAddress[7] = "<% tcWebApi_get("Route6_Entry7","DST_IP","s") %>";
	vDestIPAddress[8] = "<% tcWebApi_get("Route6_Entry8","DST_IP","s") %>";
	vDestIPAddress[9] = "<% tcWebApi_get("Route6_Entry9","DST_IP","s") %>";
	vDestIPAddress[10] = "<% tcWebApi_get("Route6_Entry10","DST_IP","s") %>";
	vDestIPAddress[11] = "<% tcWebApi_get("Route6_Entry11","DST_IP","s") %>";
	vDestIPAddress[12] = "<% tcWebApi_get("Route6_Entry12","DST_IP","s") %>";
	vDestIPAddress[13] = "<% tcWebApi_get("Route6_Entry13","DST_IP","s") %>";
	vDestIPAddress[14] = "<% tcWebApi_get("Route6_Entry14","DST_IP","s") %>";
	vDestIPAddress[15] = "<% tcWebApi_get("Route6_Entry15","DST_IP","s") %>";
	
	vPrefixLength[0] = "<% tcWebApi_get("Route6_Entry0","Prefix_len","s") %>";
	vPrefixLength[1] = "<% tcWebApi_get("Route6_Entry1","Prefix_len","s") %>";
	vPrefixLength[2] = "<% tcWebApi_get("Route6_Entry2","Prefix_len","s") %>";
	vPrefixLength[3] = "<% tcWebApi_get("Route6_Entry3","Prefix_len","s") %>";
	vPrefixLength[4] = "<% tcWebApi_get("Route6_Entry4","Prefix_len","s") %>";
	vPrefixLength[5] = "<% tcWebApi_get("Route6_Entry5","Prefix_len","s") %>";
	vPrefixLength[6] = "<% tcWebApi_get("Route6_Entry6","Prefix_len","s") %>";
	vPrefixLength[7] = "<% tcWebApi_get("Route6_Entry7","Prefix_len","s") %>";
	vPrefixLength[8] = "<% tcWebApi_get("Route6_Entry8","Prefix_len","s") %>";
	vPrefixLength[9] = "<% tcWebApi_get("Route6_Entry9","Prefix_len","s") %>";
	vPrefixLength[10] = "<% tcWebApi_get("Route6_Entry10","Prefix_len","s") %>";
	vPrefixLength[11] = "<% tcWebApi_get("Route6_Entry11","Prefix_len","s") %>";
	vPrefixLength[12] = "<% tcWebApi_get("Route6_Entry12","Prefix_len","s") %>";
	vPrefixLength[13] = "<% tcWebApi_get("Route6_Entry13","Prefix_len","s") %>";
	vPrefixLength[14] = "<% tcWebApi_get("Route6_Entry14","Prefix_len","s") %>";
	vPrefixLength[15] = "<% tcWebApi_get("Route6_Entry15","Prefix_len","s") %>";
	
	for(var i=0; i<route6count; i++)
	{
		if(vDestIPAddress[i] != "N/A")
			vcurLinks[nCurTemp++] = new stStaticRoute6(i, vDestIPAddress[i], vPrefixLength[i], "", "");
	}
	var	vObjRet = new Array(nCurTemp+1);
	for(var m=0; m<nCurTemp; m++)
	{
		vObjRet[m] = vcurLinks[m];
	}
	vObjRet[nCurTemp] = null;
	return vObjRet;
}
var StaticRoute = getStaticRoute6Info();

function btnClear()
{
with ( document.forms[0] )
{
	DestIPAddress.value = '';
	PrefixLen.value = '';
	GatewayIPAddress.value = '';
	gEnable.checked = false;
}
}
function LoadFrame()
{
	document.ConfigForm.IPv6_Flag.value = "0";
}
function CheckForm(Form)
{
//Form.usingPrefix('x');
with ( document.forms[0] )
{
	for (i = 0; i < StaticRoute.length - 1; i++)
	{
		if ((StaticRoute[i].DestIPAddress == getValue('DestIPAddress'))
		&& (StaticRoute[i].PrefixLength == getValue('PrefixLen')))
		{
			alert('Destination IP address error, it has been occupied by other static routing!');
			return false;
		}
	}
	var DestIp = DestIPAddress.value;
	if (DestIp == '')
	{
		alert('Invalid destination IP address!');
		return false;
	}
	if (isIpv6Address(DestIp) == false)
	{
		alert('Invalid destination IP address!');
		return false;
	}
	if ((PrefixLen.value == '')
	|| (!isInteger(PrefixLen.value))
	|| (parseInt(PrefixLen.value) > 128)
	|| (parseInt(PrefixLen.value) < 0))
	{
		alert('Prefix length error!');
		return false;
	}
	var addrTmp = getValue('DestIPAddress');
	var plen1 = getValue('PrefixLen');
	var plen2 = 0;
	/*for (i = 0; i < StaticRoute.length - 1; i++)
	{
		if ((StaticRoute[i].PrefixLength == '')
		|| (StaticRoute[i].DestIPAddress == ''))
		{
			continue;
		}
		plen2 = StaticRoute[i].PrefixLength;
		if (true == CompareTwoAddress(addrTmp, plen1, StaticRoute[i].DestIPAddress, plen2))
		{
			alert('Destination IP address error!');
			return false;
		}
	}*/
	if (gwStr.checked == true)
	{
		if (isIpv6Address(GatewayIPAddress.value) == false)
		{
			alert("Invalid default Gateway!");
			return false;
		}
		if (isUnicastIpv6Address(GatewayIPAddress.value) == false)
		{
			alert("Invalid default Gateway!");
			return false;
		}
	}
	if ('' == getSelectVal('Interface'))
	{
		alert('Invalid output interface!');
		return false;
	}
	var selectobj = getSelectVal('Interface');
	/*if (Wan.length > 0)
	{
		for (z=0; z < Wan.length; z++)
		{
			if (Wan[z].domain == selectobj)
			{
				if ( Wan[z].address.indexOf(":") < 0 )
				{
					alert("Use interface is not acquired Ipv6 address!");
					return false;
				}
			}
		}
	}*/
//Form.addParameter('DestIPAddress', DestIPAddress.value);
//Form.addParameter('PrefixLength', PrefixLen.value);
//if (gwStr.checked == true)
//{
//Form.addParameter('GatewayIPAddress',GatewayIPAddress.value);
//}
//else
//{
//Form.addParameter('GatewayIPAddress', '');
//}
//Form.addParameter('Enable', getCheckVal('gEnable'));
//Form.addParameter('Interface', getSelectVal('Interface'));
}
/*if (0 == getValue('PrefixLen'))
{
	for (i = 0; i < StaticRoute.length - 1; i++)
	{
		if (0 == StaticRoute[i].PrefixLength)
		{
			alert('Destination IP address error!');
			return false;;
		}
	}
}*/
//Form.endPrefix();
return true;
}

function checkFormstatus()
{
	var Form = document.ConfigForm;
	if(Form.gEnable.checked)
		Form.hEnableflag.value = "Yes";
	else Form.hEnableflag.value = "No";
	
	if(Form.gwStr.checked)
		Form.gwEnableflag.value = "Yes";
	else Form.gwEnableflag.value = "No";
	
	
}
function SubmitForm()
{
var Form = document.ConfigForm;
	if (true == CheckForm(Form))
	{
	//if(Form.Interface.value == "br0")
		Form.WanInterfaceFlag.value = Form.Interface.value;	
	//else Form.WanInterfaceFlag.value = Form.Interface.value;
		checkFormstatus();
		Form.IPv6_Flag.value = "1";
		Form.submit();
	}
}
function Cancle()
{
location.replace("net-routeset.asp");
}
</script>
<table height="100%" border="0" cellpadding="0" cellspacing="0" width="1008">
<tr>
<td width="157" bgcolor="#dff5ff" height="30"><p class="Item_L1">IPv6 Static Routing</p></td>
<td width="7" bgcolor="#ffffff">&nbsp;</td>
<td width="674">&nbsp;</td>
<td width="170" rowspan="5" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="20"  height='100%'>
<tr>
<td valign='top'><a href="../cgi-bin/help_content.asp#Routing" target="_blank"><INPUT type="button" value="Help" height="34" width="40" border="0"></a></td>
</tr>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
</table>&nbsp;      </td>
</tr>
<tr>
<td width="157" height="10" valign="top" bgcolor="#dff5ff"></td>
<TD width="7" height="15" bgColor="#ffffff" border="0"></TD>
<td></td>
</tr>
<tr>
<td width="157" height="30" valign="top" bgcolor="#dff5ff"><p class="Item_L2"></p></td>
<TD width="7" height="15" bgColor="#ffffff" border="0"></TD>
<td>
<form name="ConfigForm" action="/cgi-bin/net-route6add.asp" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="10">&nbsp;</td>
<td><p> 
                      <input type="hidden" name="IPv6_Flag" value="0">
                      <input type="hidden" name="curSetIdx" value="<% tcWebApi_get("Route6","add_num","s") %>">
                      <input type="hidden" name="WanInterfaceFlag" value="nas0_0">
                      <input type="hidden" name="metricFlag" value="0">
                      <input type="hidden" name="hEnableflag" value="No">
                      <input type="hidden" name="gwEnableflag" value="No">
                      <script language="JavaScript" type="text/JavaScript">
var 	nCount = 8;
var		nEntryCount = 8;
function WanIndexConstruction(domain,WanName,WanMode)
{
	this.domain = domain;
	this.WanName = WanName;
	this.WanMode = WanMode;
}
	
function WriteWanNameSelected()
{
	/*var	iSlected = 0;
	var WanIDNums = CurWan;
	var nlength = WanIDNums.length-1;
	for(var i=0; i< nlength; i++)
	{
			if((WanIDNums[i].WanName.search(/TR069/i) < 1) && (WanIDNums[i].WanMode == "Route"))
				document.writeln("<option value=" + WanIDNums[i].domain + ">" + WanIDNums[i].WanName + "</option>");
			if(document.dmzForm.CurWan_Flag.value == WanIDNums[i].domain)
			{
					document.dmzForm.Interface.selectedIndex= iSlected;
			}
			iSlected++;
	}*/
	for (var i = 0; i < nEntryNum; i++)
	{
		
		if((vEntryName[i].indexOf('_INTERNET_')<0) || (vEntryName[i].indexOf('_B_')>-1)
		|| 'IPv4' == Wan_IPVERSION[i] )
				continue;
		document.write('<option value=' + vEntryValue[i] + '>' + vEntryName[i] + '</option>');
	}
}
</script>
                      <br>
                    </p>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="100">Static Routing:</td>
<td width="309"><input type="checkbox" name='gEnable' value="Yes">Enable</td>
</tr>
<tr>
<td width="100">Destination IP Address:</td>
<td width="309"><input type='text' name='DestIPAddress' maxlength='64'></td>
</tr>
<tr>
<td>Prefix Length:</td>
<td><input type="text" name="PrefixLen" maxlength="64" ><strong style="color:#FF0033">*</strong></td>
</tr>
</table>
<br>
<table>
<tr>
<td><input type="checkbox" name='gwStr'>
&nbsp;Default Gateway&nbsp;&nbsp;</td>
<td><input type='text' maxlength='64' name='GatewayIPAddress'></td>
</tr>
<tr>
<td>&nbsp;Interface</td>
<td><select name='Interface'  id="Interface" style="width:153px">
<script language="javascript">
WriteWanNameSelected();
document.writeln("<option value='br0'> LAN/br0");
</script>
</select>
</td>
</tr>
</table>
<br>
<center>
                      <br>
                    </center>
</td>
<td width="10">&nbsp;</td>
</tr>
<tr>
<td width="10">&nbsp;</td>
<td></td>
<td width="10">&nbsp;</td>
</tr>
</table>
</form>
</td>
</tr>
<tr>
<td width="157" height="10" valign="top" bgcolor="#dff5ff"></td>
<TD width="7" height="15" bgColor="#ffffff" border="0"></TD>
<td></td>
</tr>
<tr>
<td width="157" height="50" valign="top" bgcolor="#dff5ff"></td>
<TD width="7" height="15" bgColor="#ffffff" border="0"></TD>
<td></td>
</tr>
</table>
</td>
</tr>
<tr>
<td height="1">
<table border="0" cellpadding="0" cellspacing="0" width="1008" height="35" id="table7">
<tr>
<td width="157" bgcolor="#dff5ff">&nbsp;</td>
<TD width="7" height="15" bgColor="#ffffff" border="0"></TD>
<td width="280" bgcolor="#ffffff">&nbsp;</td>
<td width="393" bgcolor="#ffffff">
<p align="center"><INPUT type=button value="Apply" width="80" height="23" border="0" id="btnOK" onClick="SubmitForm()">&nbsp;&nbsp;<INPUT type=button value="Cancel" width="80" height="23" border="0" id="btnCancel" onClick="Cancle()"> </td>
<td width="169">&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
