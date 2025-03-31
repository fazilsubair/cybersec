<%
if Request_Form("Username") <> "" then
	tcWebApi_set("pppset_Entry","username","Username")
	tcWebApi_set("pppset_Entry","passwd","Password")
	tcWebApi_commit("pppset_Entry")
end if
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Login</TITLE>

<script LANGUAGE="JavaScript">
	var isIPv4 = "<% tcWebApi_get("WebCurSet_Entry","IsIPv4","s") %>";
	var ServerLanIP;
	if('0' == isIPv4)
		ServerLanIP = "http://[" + "<% tcWebApi_get("Lan_Entry0","IP6","s") %>" + "]";
	else ServerLanIP = "http://" + "<% tcWebApi_get("Lan_Entry0","IP","s") %>";


	function refreshself()
	{
		top.window.location.href ='/cgi-bin/pppoeset.asp';
	}

</script>

<META http-equiv=Content-Type content="text/html; charset=UTF-8">

<SCRIPT language=JavaScript src="/JS/util.js"></SCRIPT>

<STYLE type=text/css>#div_visite {
	FONT-SIZE: 12px; MARGIN: 100px 50px; COLOR: #333333; FONT-FAMILY: "Arial"
}
TABLE {
	FONT-SIZE: 15px; FONT-FAMILY: "Arial"
}
</STYLE>


<SCRIPT language=JavaScript type=text/javascript>

function getIPv4FromURL(url)
{
	var ip = /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/;/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/;
	var ipaddr = ip.exec(url);
	return ipaddr;
}
function SubmitForm()
{
	var Username = document.getElementById('Username');
	var Password = document.getElementById('Password');
	
	if (Username.value == "")
	{
		alert("Username can not be empty!");
		return false;
	}
	if (Password.value == "")
	{
		alert("Password can not be blank!");
		return false;
	}
	
	document.ConfigForm.submit();
	
	return true;
}

function resetOnClick()
{
	var Username = document.getElementById('Username');
	var Password = document.getElementById('Password');
	
	Username.value="";
	Password.value="";

}


function LoadFrame()
{

}

</SCRIPT>

<META content="Microsoft FrontPage 5.0" name="GENERATOR"></HEAD>
<BODY onload="LoadFrame()">

<SCRIPT language=JavaScript type=text/javascript>
var	isIPv4 = "<% tcWebApi_get("WebCurSet_Entry","IsIPv4","s") %>";
var	lanip;
var lanip_v4 = "<% tcWebApi_get("Lan_Entry0","IP","s") %>";
var lanip_v6 = "[" + "<% tcWebApi_get("Lan_Entry0","IP6","s") %>" + "]";
if ( 'N/A' == lanip_v4 )
	lanip_v4 = '192.168.1.1';
if ( 'N/A' == lanip_v6 )
	lanip_v6 = '[fe80::1]';
var lanip_v4=getIPv4FromURL(top.window.location.href);


function writereturnhref()
{
	var httpip;
	if("0" == isIPv4){
		lanip = "[" + "<% tcWebApi_get("Lan_Entry0","IP6","s") %>" + "]";
		if(lanip == "N/A")
			httpip = "http://[fe80::1]";
		else
			httpip = "http://" + lanip;
	}
	else{
	//	lanip = "<% tcWebApi_get("Lan_Entry0","IP","s") %>";
     lanip= lanip_v4;
		if(lanip == "N/A")	
			httpip = "http://192.168.1.1";
		else
			httpip = "http://" + lanip;
	}
	document.write('<A href="' + httpip + '">Back to login page</A>');
}
</SCRIPT>

<TABLE width="90%">
  <TR>
    <TD align="right" bgColor="#ffffff" height="10" > 
		<script language="JavaScript" type="text/JavaScript">
		writereturnhref();
		</script>
	</TD></TR>
  <TR>
</TABLE>

<DIV id=div_visite>
<FORM id="ConfigForm" name="ConfigForm" action="/cgi-bin/pppoeset.asp" method="post">		
<TABLE style="POSITION: relative" borderColor="#e7e7e7" height="45%" cellSpacing="0" cellPadding="0" align="center" bgColor="#e7e7e7" border="0">
  <TBODY>
  <TR>
    <TD align="middle"  colSpan="3" height="50">
	Please input username and password
	</TD></TR>
	
  <TR>
    <TD align=right height=30>
	&nbsp;Servicename:
    </TD>
    <TD>　</TD>
    <TD>
	<INPUT id="Servicename" style="WIDTH: 140px; FONT-FAMILY: Arial" name="Servicename" size="20" value="<%if TCWebAPI_get("pppset_Entry", "servicename", "h") <> "N/A" then TCWebAPI_get("pppset_Entry", "servicename", "s") end if%>"> 
    </TD></TR>
	
  <TR>
    <TD align=right width="30%" height=50>
	&nbsp;Username:
	</TD>
    <TD width=30>　</TD>
    <TD>
    <INPUT id="Username" style="WIDTH: 140px; FONT-FAMILY: Arial" name="Username" size="20" value="<%if TCWebAPI_get("pppset_Entry", "username", "h") <> "N/A" then TCWebAPI_get("pppset_Entry", "username", "s") end if%>"> 
	</TD></TR>
	
  <TR>
    <TD align=right height=30>
	&nbsp;Password:
    </TD>
    <TD>　</TD>
    <TD>
    <INPUT id="Password" style="WIDTH: 140px; FONT-FAMILY: Arial" type="password" name="Password" size="20" value="<%if TCWebAPI_get("pppset_Entry", "passwd", "h") <> "N/A" then TCWebAPI_get("pppset_Entry", "passwd", "s") end if%>">
	</TD></TR>
	
  <TR>
    <TD align=right height=30>
	ConnectState:
    </TD>
    <TD>　</TD>
    <TD>
	<%if TCWebAPI_get("pppset_Entry", "status", "h") <> "N/A" then TCWebAPI_get("pppset_Entry", "status", "s") end if%>
	</TD></TR>	
	
  <TR>
    <TD style="COLOR: #ff0000" align="center" colspan="3">

    </TD></TR>
	
  <TR  style="height:40px">
    <TD align=center colSpan=3>
	 <INPUT id="btnSubmit" onclick="SubmitForm()" type="button" value="Apply" name="btnSubmit">&nbsp;
	 <INPUT id="btnReset" onclick="resetOnClick()"  type="button"  value="Reset"  name="btnReset">	 
	</TD></TR> 
	
	</TBODY></TABLE></FORM></DIV>
	
	<SCRIPT language=JavaScript type=text/javascript>
		document.getElementById("Servicename").disabled = true
	</SCRIPT>
	
</BODY></html>
