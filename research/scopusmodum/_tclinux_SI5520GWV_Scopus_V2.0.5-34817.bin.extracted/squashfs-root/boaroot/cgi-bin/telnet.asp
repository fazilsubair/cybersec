<%
if Request_Form("telnet_flag") = "1" then 

	TCWebApi_set("Account_TelnetEntry","Active","telnetenable_flag")
	TCWebApi_commit("Account_TelnetEntry")
	TCWebApi_save()
	
end if
if Request_Form("onutype_flag") = "1" then 

	TCWebApi_set("EPON_ONU","Type","onutypeStr_flag")
	TCWebApi_commit("EPON_ONU")
	TCWebApi_save()
	
end if

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Telnet</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>

<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000 
leftMargin=0 topMargin=0 
onload="if(getElById('ConfigForm') != null)LoadFrame()" 
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
                <TD vAlign=bottom align=middle width=100><FONT face="Arial" color=#ffffff>Welcome!</TD>
                <TD vAlign=bottom width=70><A href="/cgi-bin/index.asp" target=_top><FONT face="Arial" color=#ffffff>Back to home page
				</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=table2 height=100 cellSpacing=0 cellPadding=0 width=1008 
border=0>
        <TBODY>
        <TR>
          <TD class=LocationDisplay id=LocationDisplay align=middle width=157 
          bgColor=#6acafc rowSpan=3></TD>
          <TD width=673 bgColor=#6acafc height=33>
            <P align=right><FONT face="Arial" color=#ffffff><B><FONT face="Arial" 
            color=#ffffff size=6></FONT></B><SPAN class=GatewayName></SPAN></FONT></P></TD>
          <TD width=170 bgColor=#6acafc height=33>
            </TD></TR>
        <TR>
          <TD id=MenuArea_L1 vAlign=bottom bgColor=#6acafc colSpan=2 
          height=43>&nbsp;</TD></TR>
        <TR>
          <TD id=MenuArea_L2 bgColor=#6acafc colSpan=2 
      height=24></TD></TR></TBODY></TABLE>
      <TABLE id=table3 height=15 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
       <TR>
		<TD width=157 bgColor=#dff5ff height=15></TD>
		<TD width=851 bgColor=#ffffff height=15></TD>
		</TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=top>
<SCRIPT language=JavaScript type=text/javascript>

function LoadFrame()
{
	
}

function setTelnet()
{
	with (getElById('ConfigForm'))
	{
		if (enabletelnet.checked == true)
			telnetenable_flag.value = "Yes";
		else
			telnetenable_flag.value = "No";
	}
}
function setHgu()
{
	with (getElById('ConfigForm'))
	{
		if (enablehgu[0].checked == true)
			onutypeStr_flag.value = "HGU";
		else
			onutypeStr_flag.value = "SFU";
	}
}
function btnCommit()
{
	var cform = document.ConfigForm;
	cform.telnet_flag.value = "1";
	cform.onutype_flag.value = "1";
	cform.submit();
}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>Telnet Management</P></TD>
          <TD width=7 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674></TD>
          <TD vAlign=top width=170 rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
             
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
            <FORM name="ConfigForm" action="/cgi-bin/telnet.asp" method="post">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                     <input type="hidden" name="telnet_flag" value="0">
					 <input type="hidden" name="telnetenable_flag" value="<% tcWebApi_get("Account_TelnetEntry","Active","s") %>">
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
				Telnet setting: Enable<INPUT id="enabletelnet" onclick="setTelnet()" type="checkbox" name="enabletelnet" <%if tcWebApi_get("Account_TelnetEntry","Active","h") = "Yes" then asp_Write("checked") end if%>>
				</TD>
                <TD width=10>&nbsp;</TD></TR>
   			 <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                     <input type="hidden" name="onutype_flag" value="0">
					 <input type="hidden" name="onutypeStr_flag" value="<% tcWebApi_get("EPON_ONU","Type","s") %>">
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
			     	HGU  Mode:<INPUT id="enablehgu" onclick="setHgu()" type=radio value="1"  name="enablehgu" <%if tcWebApi_get("EPON_ONU","Type","h") = "HGU" then asp_Write("checked") end if%>>
				</TD>
				</TR>
				<TR>
				<TD width=10>&nbsp;</TD>
				   <TD>
                	SFU Mode:<INPUT id="enablehgu" onclick="setHgu()" type=radio value="0" name="enablehgu" <%if tcWebApi_get("EPON_ONU","Type","h") = "SFU" then asp_Write("checked") end if%>>
                </TD>
                <TD width=10>&nbsp;&nbsp; </TD>
                <TD width=10>&nbsp;</TD></TR>
                <TR></TR>
 			   <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                If Change ONU type . System will be reboot!!!
                </TD>
                <TD width=10>&nbsp;</TD></TR>
                </TBODY></TABLE></FORM></TD></TR>
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
            <P align=center><INPUT type=button value="Apply" id="btnOK" onclick="btnCommit()" height="23"
             width="80" border="0">&nbsp;&nbsp;<INPUT type=button value="Cancel"
            id="btnCancel" onclick="RefreshPage()" height="23"
            width="80" border="0"> </P></TD>
          <TD width=169>&nbsp;</TD></TR>
        </TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
