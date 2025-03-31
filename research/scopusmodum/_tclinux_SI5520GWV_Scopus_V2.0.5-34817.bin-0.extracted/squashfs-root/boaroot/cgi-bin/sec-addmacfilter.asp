<%
if Request_Form("Save_Flag") = "1" then 
	TCWebApi_set("WebCurSet_Entry","ipfilter_id","curNum")
	TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
	TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
	TCWebApi_set("IpMacFilter_Entry","Active","EnableMac_Flag")
	TCWebApi_set("IpMacFilter_Entry","RuleType","RuleType_Flag")
	TCWebApi_set("IpMacFilter_Entry","MacName","Name")
	TCWebApi_set("IpMacFilter_Entry","MacAddr","SourceMACAddress")
	TCWebAPI_set("IpMacFilter_Entry","Interface","Interface_Flag")
	TCWebAPI_set("IpMacFilter_Entry","Direction","Direction_Flag")
	
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()
end if
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href='/JS/stylemain.css' type='text/css'>
<title>Add Mac Filter</title>
<script language="javascript" src="/JS/menu.js"></script>
<script language="javascript" src="/JS/util.js"></script>
<script language="JavaScript" type="text/JavaScript">
<% if Request_Form("Save_Flag") = "1" then %>
	location.replace("/cgi-bin/sec-macfilter.asp");
<%end if%>
</script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" alink="#000000" link="#000000" vlink="#000000" style="text-align: center" onLoad="DisplayLocation(getElement('Selected_Menu').value);FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()"
onunload="DoUnload()">
<table width="1008" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td height="1">
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
<input name="Selected_Menu" type="hidden" id="Selected_Menu" value="Security->Mac Filter">
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
var MacFilterRuleIndex = 0;
var MacFilterRule = new Array();
	
function LoadFrame()
{
	with (getElById('ConfigForm'))
	{
		Save_Flag.value = "0";
	}
}
function CheckForm(type)
{
with (getElById('ConfigForm'))
{
if (Name.length > 31)
{
alert("Filter name must not be more than 31 characters!")
return false;
}
/*for (i = 0; i < MacFilter.length - 1; i++)
{
if (MacFilter[i][1] == Name.value)
{
alert('Filter names can not be repeated!');
return false;
}
}*/
if (Name.value == '')
{
alert("Filter name can not be empty");
return false;
}
if (isValidName(Name.value) == false)
{
alert("Filter name is incorrect");
return false;
}
if (SourceMACAddress.value == '')
{
alert("MAC address is incorrect");
return false;
}
if (isValidMacAddress(SourceMACAddress.value) == false )
{
alert('MAC Address "' + SourceMACAddress.value + '" is incorrect, the correct format(AA:BB:CC:DD:EE:FF)');
return false;
}
for(var i=0;i<MacFilterRuleIndex;i++)
{
	
	if(Name.value == MacFilterRule[i].Name)
	{
		alert("The same filter name has already existed!");
		return false;		
	}
	if(SourceMACAddress.value.toLowerCase() == MacFilterRule[i].MACAddress.toLowerCase())
	{
		alert("The same filter MAC address has already existed!");
		return false;		
	}
}
}
return true;
}
function AddSubmitParam(SubmitForm,type)
{
SubmitForm.addForm('ConfigForm','x');
SubmitForm.setAction('addcfg.cgi?x=InternetGatewayDevice.X_ATP_Security.MacFilter'
+ '&RequestFile=html/security/macfilter.asp');
}
function Cancel()
{
	location.replace('sec-macfilter.asp');
}
</script>
<script language="javascript" for="document" event="onkeydown">
if(event.keyCode==13)
{
SubmitForm();
return false;
}
</script>
<table height="100%" border="0" cellpadding="0" cellspacing="0" width="1008">
<tr>
<td width="157" bgcolor="#dff5ff" height="30"><p class="Item_L1">Add Mac Filter</p></td>
<td width="7" bgcolor="#ffffff">&nbsp;</td>
<td width="674">&nbsp;</td>
<td width="170" rowspan="5" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="20" height='100%'>
<tr>
<td valign='top'><a href="/cgi-bin/help_content.asp#MACFilter" target="_blank"><INPUT type="button" value="Help" height="34" width="40" border="0"></a></td>
</tr>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
</table>　      </td>
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
<form name="ConfigForm" action="/cgi-bin/sec-addmacfilter.asp" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="10">&nbsp;</td>
<td>
<b>MAC Filter Rule</b><br>

                    <input type="hidden" name="Save_Flag" value="0">
                    <input type="hidden" name="EnableMac_Flag" value="Yes">
                    <input type="hidden" name="curNum" value="<% tcWebApi_get("IpMacFilter","add_macnum","s") %>">
                    <input type="hidden" name="RuleType_Flag" value="MAC">
					<input type="hidden" name="Direction_Flag" value="Incoming">
                    <input type="hidden" name="IpMacType_Flag" value="Mac">
                    <input type="hidden" name="Actionflag" value="Add">
                    <input type="hidden" name="Interface_Flag" value="br0"> 
                    <script language="JavaScript" type="text/JavaScript">

function btnSubmit()
{
	var Form = document.ConfigForm;
	if(CheckForm(0) == false)
		return;
	Form.Save_Flag.value = "1";
	Form.submit();
}		
</script>
                    <br>
                    <br>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>Filter Rule Name:</td>
<td><input type='text' name="Name" id="Name" maxlength='31'></td>
<td>&nbsp;</td>
</tr>
<tr>
<td>Mac Address：</td>
<td><input type='text' name="SourceMACAddress" id="SourceMACAddress" maxlength='17'></td>
<td>（Format：AA:BB:CC:DD:EE:FF）</td>
</tr>
<tr>
<td style="display:none"><br>
Enable：
<input type='checkbox' id="Enable" name="Enable" checked></td>
</tr>
</table>
<br><br>
<iframe style="display:none" src="/cgi-bin/sec_macfilterlist.cgi" frameborder="0" width="100%" ></iframe>
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
<td width="164" bgcolor="#dff5ff">&nbsp;</td>
<TD width="7" height="15" bgColor="#ffffff" border="0"></TD>
<td width="280" bgcolor="#ffffff">&nbsp;</td>
<td width="393" bgcolor="#ffffff">
<p align="center"><INPUT type=button value="Apply" width="80" height="23" border="0" id="btnOK" onClick="btnSubmit()">&nbsp;&nbsp;<INPUT type=button value="Cancel" width="80" height="23" border="0" id="btnCancel" onClick="RefreshPage()"> </td>
<td width="169">&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
