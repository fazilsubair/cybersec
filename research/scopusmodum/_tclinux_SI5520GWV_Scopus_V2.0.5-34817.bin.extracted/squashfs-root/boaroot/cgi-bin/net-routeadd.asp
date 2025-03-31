<%
if Request_Form("SaveFlag") = "1" then
	TCWebApi_set("WebCurSet_Entry","route_id","add_num")
	TCWebApi_set("Route_Entry","DST_IP","DestIPAddress")
	TCWebApi_set("Route_Entry","Sub_mask","DestSubnetMask")
	if Request_Form("gwflag") = "Yes" then
		TCWebApi_set("Route_Entry","Gateway","GatewayIPAddress")
	end if
	if Request_Form("ifflag") = "Yes" then
		TCWebApi_set("Route_Entry","Device","WanInterfaceFlag")
	end if
	TCWebApi_set("Route_Entry","metric","metricFlag")

	TCWebApi_commit("Route_Entry")
	TCWebApi_save() 
elseif Request_Form("SaveFlag") = "2" then
		TCWebApi_set("WebCurSet_Entry","wan_pvc","Interface")
end if
%>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href='/JS/stylemain.css' type='text/css'>
<title>Static routing</title>
<script language="javascript" src="/JS/menu.js"></script>
<script language="javascript" src="/JS/util.js"></script>
<script language="JavaScript" type="text/JavaScript">
<% if Request_Form("SaveFlag") = "1" then %>
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
      <TABLE height=80 cellSpacing=0 cellPadding=0 width=808 background=/img/framelogo.jpg border=0>
<% else %>
<% if tcwebApi_get("WebCustom_Entry","isCTPONTYLOGOSupported","h") = "Yes" then %>
      <TABLE height=80 cellSpacing=0 cellPadding=0 width=808 
      background=/img/framelogo.jpg border=0>
<% else %>
      <TABLE height=117 cellSpacing=0 cellPadding=0 width=1008 
      background=/img/framelogo.jpg border=0 tyle="background-repeat:no-repeat;">
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
function stWan(domain,wanName,CntType)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.wanName = wanName;
this.CntType = CntType;
this.LinkType = '';
}
function stDsl(domain,LinkType)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.LinkType = LinkType;
}
var WanPPP = new Array(new stWan("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANPPPConnection.2","1_TR069_INTERNET_R_0_35","IP_Routed"),null);
var WanIP = new Array(null);
var CntPvc = new Array(new stDsl("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANDSLLinkConfig","EoA"),null);
if (WanPPP.length > 1)
AssociateParam('WanPPP','CntPvc','LinkType');
if (WanIP.length > 1)
AssociateParam('WanIP','CntPvc','LinkType');
var Wan = new Array();
for (i = 0; i < WanIP.length-1; i++)
{
	Wan[i] = WanIP[i];
}
for (j = 0; j < WanPPP.length-1; i++,j++)
{
	Wan[i] =  WanPPP[j];
}

var routecount = 16;
function stStaticRoute(domain,DestIPAddress)
{
	this.domain = domain;
	this.DestIPAddress = DestIPAddress;
}
function getStaticRouteInfo()
{
	var	nCurTemp = 0;
	var	vDestIPAddress = new Array(routecount);
	var	vcurLinks = new Array(routecount);
	
	vDestIPAddress[0] = "<% tcWebApi_get("Route_Entry0","DST_IP","s") %>";
	vDestIPAddress[1] = "<% tcWebApi_get("Route_Entry1","DST_IP","s") %>";
	vDestIPAddress[2] = "<% tcWebApi_get("Route_Entry2","DST_IP","s") %>";
	vDestIPAddress[3] = "<% tcWebApi_get("Route_Entry3","DST_IP","s") %>";
	vDestIPAddress[4] = "<% tcWebApi_get("Route_Entry4","DST_IP","s") %>";
	vDestIPAddress[5] = "<% tcWebApi_get("Route_Entry5","DST_IP","s") %>";
	vDestIPAddress[6] = "<% tcWebApi_get("Route_Entry6","DST_IP","s") %>";
	vDestIPAddress[7] = "<% tcWebApi_get("Route_Entry7","DST_IP","s") %>";
	vDestIPAddress[8] = "<% tcWebApi_get("Route_Entry8","DST_IP","s") %>";
	vDestIPAddress[9] = "<% tcWebApi_get("Route_Entry9","DST_IP","s") %>";
	vDestIPAddress[10] = "<% tcWebApi_get("Route_Entry10","DST_IP","s") %>";
	vDestIPAddress[11] = "<% tcWebApi_get("Route_Entry11","DST_IP","s") %>";
	vDestIPAddress[12] = "<% tcWebApi_get("Route_Entry12","DST_IP","s") %>";
	vDestIPAddress[13] = "<% tcWebApi_get("Route_Entry13","DST_IP","s") %>";
	vDestIPAddress[14] = "<% tcWebApi_get("Route_Entry14","DST_IP","s") %>";
	vDestIPAddress[15] = "<% tcWebApi_get("Route_Entry15","DST_IP","s") %>";
	
	for(var i=0; i<routecount; i++)
	{
		if(vDestIPAddress[i] != "N/A")
			vcurLinks[nCurTemp++] = new stStaticRoute(i, vDestIPAddress[i]);
	}
	var	vObjRet = new Array(nCurTemp+1);
	for(var m=0; m<nCurTemp; m++)
	{
		vObjRet[m] = vcurLinks[m];
	}
	vObjRet[nCurTemp] = null;
	return vObjRet;
}
var StaticRouteInfo = getStaticRouteInfo();

/*function WriteOption()
{
for (i = 0; i < Wan.length; i++)
{
if (Wan[i].CntType == 'IP_Routed' && (Wan[i].wanName.indexOf("TR069") == -1))
{
document.write('<option value="' + Wan[i].domain + '"' + ' id="routewan_' + i + '">'
+ Wan[i].wanName + '</option>');
}
}
}*/
function btnClear()
{
with ( document.forms[0] )
{
DestIPAddress.value = '';
DestSubnetMask.value = '';
GatewayIPAddress.value = '';
}
}
function LoadFrame()
{
	document.ConfigForm.SaveFlag.value = "0";
}
function getMostRightPosOf1(str)
{
for (i = str.length - 1; i >= 0; i--)
{
if (str.charAt(i) == '1')
{
break;
}
}
return i;
}
function getBinaryString(str)
{
var numArr = [128, 64, 32, 16, 8, 4, 2, 1];
var addrParts = str.split('.');
if (addrParts.length < 3)
{
return "00000000000000000000000000000000";
}
var binstr = '';
for (i = 0; i < 4; i++)
{
var num = parseInt(addrParts[i])
for ( j = 0; j < numArr.length; j++ )
{
if ( (num & numArr[j]) != 0 )
{
binstr += '1';
}
else
{
binstr += '0';
}
}
}
return binstr;
}
function isMatchedIpAndMask(ip, mask)
{
var locIp = getBinaryString(ip);
var locMask = getBinaryString(mask);
if (locIp.length != locMask.length)
{
return false;
}
var most_right_pos_1 = getMostRightPosOf1(locMask);
if (most_right_pos_1 == -1)
{
if (loaIp == '00000000000000000000000000000000')
{
return true;
}
else
{
return false;
}
}
for (i = most_right_pos_1 + 1; i < locIp.length; i++)
{
if (locIp.charAt(i) != '0')
{
return false;
}
}
return true;
}
function CheckForm(Form)
{
	for (i = 0; i < StaticRouteInfo.length - 1; i++)
	{
		if (StaticRouteInfo[i].DestIPAddress == getValue('DestIPAddress'))
		{
			alert('Destination IP address is in use by another static route!');
			return false;
		}
	}
	with ( document.forms[0] )
{
	var DestIp = DestIPAddress.value;
	var index1 = IpAddress.lastIndexOf('.');
	var index2 = DestIp.lastIndexOf('.');
	if ( isValidIpAddress(DestIp) == false
	|| isDeIpAddress(DestIp) == true
	|| isBroadcastIpAddress(DestIp) == true
	|| isLoopIpAddress(DestIp) == true )
	{
		alert('Destination "' + DestIPAddress.value + '" is an invalid IP address.');
		return false;
	}
	if (IpAddress == DestIp
	|| (DestIp.substr(index1 + 1) == '0' && IpAddress.substr(0,index1) == DestIp.substr(0,index2)))
	{
		alert('Destination IP address is invalid!');
		return false;
	}
//Form.addParameter('DestIPAddress',DestIPAddress.value);
	if ( isValidSubnetMask(DestSubnetMask.value) == false &&  DestSubnetMask.value != '255.255.255.255')
	{
		alert('Subnet Mask "' + DestSubnetMask.value + '" is an invalid subnet mask.');
		return false;
	}
//Form.addParameter('DestSubnetMask',DestSubnetMask.value);
	if (isMatchedIpAndMask(DestIPAddress.value, DestSubnetMask.value) == false)
	{
		alert('Destination IP address "' + DestIPAddress.value + '" do not match with subnet mask "' + DestSubnetMask.value + '"');
		return false;
	}
	if (gwStr.checked == false && ifStr.checked == false)
	{
		alert('Please select "Use gateway IP address" and / or "using the interface."');
		return false;
	}
	if (gwStr.checked == true)
	{
		if ( isAbcIpAddress(GatewayIPAddress.value) == false )
		{
			alert('Default Gateway "' + GatewayIPAddress.value + '"is an invalid IP address.');
			return false;
		}
//Form.addParameter('GatewayIPAddress',GatewayIPAddress.value);
	}
	else
	{
//Form.addParameter('GatewayIPAddress','0.0.0.0');
	}
	
	if (ifStr.checked == true)
	{
		var idx = Interface.selectedIndex;
		var WANId = Interface.options[idx].id;
		if ((idx != Interface.length - 1) && (Interface.value.indexOf('nas') > -1) && (gwStr.checked == false))
		{
			alert('The Gateway IP Address must be filled in as IPoE interface is selected.');
			return false;
		}
//Form.addParameter('Interface',getSelectVal('Interface'));
	}
	else
	{
	}
}
//Form.endPrefix();
return true;
}
function SubmitForm()
{
//var Form = new webSubmitForm();
if (true == CheckForm(document.ConfigForm))
{
/*Form.setAction("addcfg.cgi?x=InternetGatewayDevice.Layer3Forwarding.Forwarding"
+ "&RequestFile=html/network/route.asp");
Form.submit();*/
var vForm = document.ConfigForm;
if(vForm.user_def_num.value >= 16)
{
	alert("Users can only add up to 16 static routes!");
	return;
}

	if(vForm.gwStr.checked)
		vForm.gwflag.value = "Yes";
	else vForm.gwflag.value = "No";
	
	if(vForm.ifStr.checked)
		vForm.ifflag.value = "Yes";
	else vForm.ifflag.value = "No";
	
	vForm.WanInterfaceFlag.value = vForm.Interface.value;
	vForm.SaveFlag.value = "1";
	vForm.submit();
}

}
function Cancle()
{
location.replace("/cgi-bin/net-routeset.asp");
}
</script>
<table height="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="157" bgcolor="#dff5ff" height="30"><p class="Item_L1">Static Routing</p></td>
<td width="7" bgcolor="#ffffff">&nbsp;</td>
<td width="674">&nbsp;</td>
<td width="170" rowspan="5" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="20" height='100%'>
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
<form name="ConfigForm" action="/cgi-bin/net-routeadd.asp" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="10">&nbsp;</td>
<td><p> <br>
                      Enter the destination network address, subnet mask, gateway and (or) the available WAN interface, and then click "OK" to add records to the routing table.<br>
                      <input type="hidden" name="add_num" value="<% tcWebApi_get("Route","add_num","s") %>">
                      <input type="hidden" name="user_def_num" value="<% tcWebApi_get("Route","User_def_num","s") %>">
                      <input type="hidden" name="WanInterfaceFlag" value="PVC0">
                      <input type="hidden" name="metricFlag" value="0">
                      <input type="hidden" name="gwflag" value="No">
                      <input type="hidden" name="ifflag" value="No">
                      <script language="JavaScript" type="text/JavaScript">
	
function WriteWanNameSelected()
{
	for (var i = 0; i < nEntryNum; i++)
	{
		if((vEntryName[i].indexOf('_INTERNET_')<0 && vEntryName[i].indexOf('OTHER')<0) || (vEntryName[i].indexOf('_B_')>-1)
		|| 'IPv6' == Wan_IPVERSION[i] )
				continue;

		document.write('<option value=' + vEntryValue[i] + '>' + vEntryName[i] + '</option>');
	}
}
function ChangeInterface()
{
	//document.ConfigForm.SaveFlag.value = "2";
	//document.ConfigForm.submit();
}
					  </script>
                      <br>
                      <br>
                    </p>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="180">Destination IP Address:</td>
<td><input type='text' name='DestIPAddress' maxlength='15' value="<%if TCWebApi_get("Route_Entry","DST_IP","h") <> "N/A" then TCWebApi_get("Route_Entry","DST_IP","s") else asp_Write("0.0.0.0") end if %>"></td>
</tr>
<tr>
<td>Subnet Mask:</td>
<td><input type='text' name='DestSubnetMask' maxlength='15' value="<%if TCWebApi_get("Route_Entry","Sub_mask","h") <> "N/A" then TCWebApi_get("Route_Entry","Sub_mask","s") else asp_Write("0.0.0.0") end if %>"></td>
</tr>
</table>
<br>
<table>
<tr>
<td><input type="checkbox" name='gwStr' <%if TCWebApi_get("Route_Entry","Gateway","h") <> "N/A" then asp_Write("checked") end if%>>
&nbsp;Gateway IP Address&nbsp;&nbsp;</td>
<td><input type='text' maxlength='15' name='GatewayIPAddress' value="<%if TCWebApi_get("Route_Entry","Gateway","h") <> "N/A" then TCWebApi_get("Route_Entry","Gateway","s") end if%>"></td>
</tr>
<tr>
<td><input type="checkbox" name='ifStr' <%if TcWebApi_get("Route_Entry","Device","h") <> "N/A" then asp_Write("checked")  end if%>>
&nbsp;Interface</td>
                        <td><select name='Interface'  id="select" style="width:153px" onChange="ChangeInterface()">
                            <script language="javascript">
WriteWanNameSelected();
document.writeln("  <option value='br0'> LAN/br0");
</script>
                          </select></td>
</tr>
</table>
<br>
<center>
</center>
<p><br>
<br>
</p></td>
<td width="10">&nbsp;</td>
</tr>
<tr>
<td width="10">&nbsp;</td>
<td><input type="hidden" name="SaveFlag" value="0"></td>
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
<td width="157" height="" valign="top" bgcolor="#dff5ff"></td>
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
<td width="169" >&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
