<%
if Request_Form("ApplyFlag")="1" then
	TCWebApi_set("Account_Entry0","web_passwd","cfmPassword")
	TCWebApi_commit("Account_Entry0")
	TCWebApi_save()
end if
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Login</TITLE>
<script LANGUAGE="JavaScript">

function checkPass(pass){
	var str = 0;
	
	if(pass.match(/([a-z])+/)){
		str++;
	}
	
	if(pass.match(/([0-9])+/)){
		str++;
	}
	
	if(pass.match(/([A-Z])+/)){
		str++;
	}
	
	if(pass.match(/[^a-zA-Z0-9]+/)){
		str++;
	}
	return str;
}	
function CheckForm()
{
	if(document.ConfigForm.newPassword.value.length > 31)
	{
		alert("New password can not be longer than 31 characters ！");
		return false;
	}
	if (document.ConfigForm.newPassword.value == "")
	{
		alert("New password can not be empty!");
		return false;
	}
	if(document.ConfigForm.newPassword.value.length < 6)
	{
		alert("New password can not be less than 6 characters ！");
		return false;
	}
	if (checkPass(document.ConfigForm.newPassword.value) < 2)
	{
		alert("New password is not complex enough");
		return false;
	}
	if (document.ConfigForm.cfmPassword.value != document.ConfigForm.newPassword.value)
	{
		alert("Confirm password do not match!");
		return false;
	}else
	{
		  var arr = new Array();
		  arr = document.ConfigForm.newPassword.value.split(" ");

		  if(arr.length != 1)
		  {
				alert("passwd has space!\n");
				return false;
		  }
	}
	return true;
}


function doApply()
{
	if (CheckForm())
	{
		document.ConfigForm.ApplyFlag.value = "1";;
		document.ConfigForm.submit();
	}
}

function doCancel()
{
	top.window.location.href='/cgi-bin/index2.asp';
}

function LoadFrame()
{
<%
if Request_Form("ApplyFlag")="1" then
	asp_write("top.window.location.href='/cgi-bin/index2.asp';");
end if
%>
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


<META content="Microsoft FrontPage 5.0" name="GENERATOR"></HEAD>
<BODY onload="LoadFrame()">

<DIV id=div_visite>
<FORM id="ConfigForm" name="ConfigForm" action="/cgi-bin/account_mod.asp" method="post">		
<TABLE style="POSITION: relative" borderColor="#e7e7e7" height="45%" cellSpacing="0" cellPadding="0" align="center" bgColor="#e7e7e7" border="0">
  <TBODY>
  <TR>
    <TD colSpan="3" >
	<DIV id=div_tips align="left" style="line-height:30px;MARGIN: 20px 40px;">
	<DIV style="color:red">
	It is recommended to change your default password for this device for security
	</DIV>
	1 The password must contain at least 6 characters <BR>
	2 The password must contain at least two of the following conbinations <BR>
	3 0-9,a-z,A-Z,special characters(._/@!~#%^*()+=?)
	</DIV>
    </TD></TR>
  <TR>
    <TD align=right width="30%" height=50>
	New password:
	</TD>
    <TD width=30>　</TD>
    <TD>
    <INPUT id="newPassword" style="WIDTH: 140px; FONT-FAMILY: Arial" type="password" name="newPassword" size="20">
	</TD></TR>
	
  <TR>
    <TD align=right height=30>
		Confirm password:
    </TD>
    <TD>　</TD>
    <TD>
    <INPUT id="cfmPassword" style="WIDTH: 140px; FONT-FAMILY: Arial" type="password" name="cfmPassword" size="20"></TD>
  </TR>
  <TR>
    <TD style="COLOR: #ff0000" align="center" colspan="3">
    </TD></TR>
	
	
  <TR  style="height:40px">
    <TD align=center colSpan=3>
		<BUTTON onclick="doApply()" type="button" name=btnApply value="Apply">Apply</BUTTON>&nbsp;&nbsp;
		<BUTTON onclick="doCancel()" type="button" name=btnCancel value="Cancel">Cancel</BUTTON>
		<input type="hidden" name="ApplyFlag">
	</TD></TR> 
	</TBODY></TABLE></FORM></DIV>
	
	<SCRIPT language=JavaScript type=text/javascript>

	</SCRIPT>
</BODY></html>
