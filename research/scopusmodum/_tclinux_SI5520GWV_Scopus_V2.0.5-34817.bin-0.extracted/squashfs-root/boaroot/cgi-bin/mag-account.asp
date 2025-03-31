<%
if Request_Form("accountflg")="1" then
	if tcWebApi_get("WebCurSet_Entry","CurrentAccess","h") = "1" then
		if Request_Form("oldPassword") = tcWebApi_get("Account_Entry0","web_passwd","h") then
			TCWebApi_set("WebCurSet_Entry","CurPage","1")
			TCWebApi_set("Account_Entry0","web_passwd","cfmPassword")
			TCWebApi_commit("Account_Entry")
			TCWebApi_save()
		else
			TCWebApi_set("WebCurSet_Entry","CurPage","2")
		end if
	else
		TCWebApi_set("WebCurSet_Entry","CurPage","1")
		TCWebApi_set("Account_Entry0","web_passwd","cfmPassword")
		TCWebApi_commit("Account_Entry")
		TCWebApi_save()
	end If
else
	TCWebApi_set("WebCurSet_Entry","CurPage","0")
end If
if Request_Form("accountflg")="2" then
	if tcWebApi_get("WebCurSet_Entry","CurrentAccess","h") = "1" then
		if Request_Form("oldPassword") = tcWebApi_get("Account_Entry1","web_passwd","h") then
			TCWebApi_set("WebCurSet_Entry","CurPage","1")
			TCWebApi_set("Account_Entry1","web_passwd","cfmPassword")
			TCWebApi_commit("Account_Entry")
			TCWebApi_save()
		else
			TCWebApi_set("WebCurSet_Entry","CurPage","2")
		end if
	else
		TCWebApi_set("WebCurSet_Entry","CurPage","1")
		TCWebApi_set("Account_Entry1","web_passwd","cfmPassword")
		TCWebApi_commit("Account_Entry")
		TCWebApi_save()
	end If
else
	TCWebApi_set("WebCurSet_Entry","CurPage","0")
end If
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>User Management</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>

<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>

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
            value="Maintenance->Account" name=Selected_Menu> </FONT></B><SPAN 
            class=GatewayName>CPE Name:
<SCRIPT language=javascript>
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
          <TD id=MenuArea_L2 bgColor=#DFF5FF colSpan=2 
      height=24></TD></TR></TBODY></TABLE>
      <SCRIPT language=javascript>
			MakeMenu(getElById('Selected_Menu').value);
	  </SCRIPT>
      </TD></TR>
  <TR>
    <TD vAlign=top>
<SCRIPT language=JavaScript type=text/javascript>
var signal = "<% tcWebApi_get("WebCurSet_Entry","CurPage","s") %>";

function LoadFrame()
{	
		with (getElById('ConfigForm'))
		{
			accountflg.value = "0";
			if((0 != parseInt(signal)) && (signal != "N/A"))
			{
				var istate = parseInt(signal);
				if(1 == istate)
				{
					if (curUserName == sptUserName){
						var tdResultElement = getElement('stResult');
						tdResultElement.innerHTML = '<P><strong><font color="#0000FF" size="2">Password modification success!</font></strong></P>';
					}
					else{
						alert("Password modification is successful, it will return to the login page!");
						window.location.href="/cgi-bin/logout.cgi";
					}
				}
				else{
					window.location.href="/cgi-bin/ErrMsg.asp";
				}
			}
		}
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
	
	
	function userChange()
	{
		var myselect=document.getElementById("oldUsername");
		document.ConfigForm.accountflg.value=parseInt(myselect.options[myselect.selectedIndex].value)+1;
		
	}
	
	function OnOK()
	{
		if (CheckForm())
		{
			userChange();		
		
			document.ConfigForm.submit();
		}
	}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>Account Management</P></TD>
          <TD width=7 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674></TD>
          <TD vAlign=top width=170 rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#Account" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
              </TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L2></P></TD>
         <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <FORM name=ConfigForm action="/cgi-bin/mag-account.asp" method="post" >
			<INPUT TYPE="HIDDEN" NAME="name0" VALUE="<%TCWebApi_get("Account_Entry0","username","s")%>">
			<INPUT TYPE="HIDDEN" NAME="name1" VALUE="<%TCWebApi_get("Account_Entry1","username","s")%>">
			<INPUT TYPE="HIDDEN" NAME="name2" VALUE="<%TCWebApi_get("Account_Entry2","username","s")%>">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 >
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD align="left">
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR id=secUsername>
                      <TD width=91 height="26">Account:</TD>
                      <TD width=169>
					  <SELECT id=oldUsername style="WIDTH: 115px"  size=1 name=oldUsername onchange="userChange();"> 
                        	<SCRIPT language=JavaScript type=text/javascript>
							if (curUserName == sptUserName)
							{
			
								if(document.ConfigForm.name0.value != "")
								{
									document.write('<option selected="selected" value="0" >' + document.ConfigForm.name0.value);
								}
								if(document.ConfigForm.name1.value != "")
								{
									document.write('<option value="1" >' + document.ConfigForm.name1.value);
								}
								/*
								if(document.ConfigForm.name2.value != "")
								{
									document.write('<option value="2" >' + document.ConfigForm.name2.value);
								}
								*/
							}else
							{
							
								if(document.ConfigForm.name1.value != "")
								{
									document.write('<option selected="selected" value="1" >' + document.ConfigForm.name1.value);
								}
								/*
								if(document.ConfigForm.name2.value != "")
								{
									document.write('<option value="2" >' + document.ConfigForm.name2.value);
								}
								*/
							
							
							
							}
							</SCRIPT>
                        </SELECT></TD></TR>
                    <TR id=trNewUsername name=trNewUsername >
                      <TD width=89>New user name:</TD>
                      <TD width=169><LABEL><INPUT id=newUsername 
                        style="WIDTH: 115px" maxLength=35 size=15 
                        name=newUsername> </LABEL></TD></TR>
                    <TR id=TroldPassword name=TroldPassword >
                      <TD>Old password：</TD>
                      <TD><INPUT id=oldPassword type=password maxLength=35 
                        size=15 name=oldPassword></TD></TR>
                    <TR>
                      <TD>New password:</TD>
                      <TD><INPUT id=newPassword type=password maxLength=35 
                        size=15 name=newPassword>
					<script language="JavaScript" type="text/JavaScript">
					setDisplay("trNewUsername", 0);
					if (curUserName == sptUserName)
					{
						setDisplay("TroldPassword", 0);
					}
					</script></TD></TR>
                    <TR>
                      <TD>Confirm password:</TD>
                      <TD><INPUT id=cfmPassword type=password maxLength=35 
                        size=15 name=cfmPassword></TD></TR></TBODY></TABLE><BR></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD><DIV id=stResult style="FONT-SIZE: 13px"></DIV></TD>
				<INPUT TYPE="HIDDEN" NAME="accountflg" VALUE="0">
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></FORM></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=157 bgColor=#DFF5FF>&nbsp;</TD>
		  <TD width=7 bgColor=#ffffff border=0></TD>
          <TD width=280 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=393 bgColor=#FFFFFF>
            <P align=center><INPUT type=button value="Apply" id="btnOK" onClick="OnOK()" height="23"
            width="80" border="0">&nbsp;&nbsp;<INPUT type=button value="Cancel" 
            id="btnCancel" onClick="RefreshPage()" height="23"
            width="80" border="0"> </P></TD>
          <TD width=169 
>&nbsp;</TD></TR>
        </TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
