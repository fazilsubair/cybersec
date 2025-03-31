<%
if Request_Form("postflag") = "1" then
		tcWebApi_constSet("WebCustom_Entry","web_upgrade","1")
		TCWebApi_set("System_Entry","upgrade_fw","HTML_HEADER_TYPE")
		TCWebApi_commit("System_Entry")
end if	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<%if tcWebApi_get("System_Entry","upgrade_fw_status","h") <> "SUCCESS" then%>
<HEAD><TITLE>FW Upgrade</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="/JS/stylemain.css" type=text/css rel=stylesheet>
<% if tcwebApi_get("WebCustom_Entry","isUpgradePageShow","h") = "Yes" then %>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>
<% else %>
<% if tcwebApi_get("Account_Entry1","Logged","h") = "1" then %>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>
<% end if %>
<% end if %>
<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>

<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<% if tcwebApi_get("WebCustom_Entry","isUpgradePageShow","h") = "Yes" then %>
<BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000 
leftMargin=0 topMargin=0 onload="DisplayLocation(getElement('Selected_Menu').value);FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()"
onunload=DoUnload() marginheight="0" marginwidth="0">
<% else %>
<BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000 
leftMargin=0 topMargin=0 onload="if(getElById('ConfigForm') != null)LoadFrame()" onunload=DoUnload() marginheight="0" marginwidth="0">

<% end if %>
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
<% if tcwebApi_get("WebCustom_Entry","isUpgradePageShow","h") = "Yes" then %>
				<TD class=welcom vAlign=bottom align=middle width=120>Welcome! </TD>
                <TD vAlign=bottom width=50><A onclick=DoLogout() href="/cgi-bin/logout.cgi" target=_top><SPAN class=logout>Logout</SPAN>
<% else %>
                <TD vAlign=bottom align=middle width=100><FONT face="Arial" color=#ffffff>Welcome!</TD>
                <TD vAlign=bottom width=70><A href="../" target=_top><FONT face="Arial" color=#ffffff>Back to Homepage				
<% end if %>
				</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=table2 height=100 cellSpacing=0 cellPadding=0 width=1008 border=0>
        <TBODY>
<% if tcwebApi_get("WebCustom_Entry","isUpgradePageShow","h") = "Yes" then %>
        <TR>
	  <TD class=LocationDisplay id=LocationDisplay align=middle width=157 
          bgColor=#6acafc rowSpan=3></TD>
          <TD width=673 bgColor=#6acafc height=33>
            <P align=right><FONT face="Arial" color=#ffffff><B><FONT face="Arial" 
            color=#ffffff size=6><INPUT id=Selected_Menu type=hidden 
            value="Maintenance->FW Upgrade" name=Selected_Menu> </FONT></B><SPAN 
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
<% else %>
		    <TR>
	  <TD class=LocationDisplay id=LocationDisplay align=middle width=157 
          bgColor=#6acafc rowSpan=3></TD>
          <TD width=673 bgColor=#6acafc height=33>
            <P align=right><FONT face="Arial" color=#ffffff><B><FONT face="Arial" 
            color=#ffffff size=6></FONT></B><SPAN class=GatewayName></SPAN></FONT></P></TD>
          <TD width=211 bgColor=#6acafc height=33>
            </TD></TR>
        <TR>
          <TD id=MenuArea_L1 vAlign=bottom bgColor=#6acafc colSpan=2 
          height=43>&nbsp;</TD></TR>			
<% end if %>
        <TR>
          <TD id=MenuArea_L2 bgColor=#6acafc colSpan=2 
      height=24></TD></TR></TBODY></TABLE>
 <% if tcwebApi_get("WebCustom_Entry","isUpgradePageShow","h") = "Yes" then %>
	<SCRIPT 
      	language=javascript>
	MakeMenu(getElById ('Selected_Menu').value);
	</SCRIPT>
 <% end if %>
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

function btnCommit()
{
	var form=document.ConfigForm;
	var string3 = form.FW_UploadFile.value.search(/romfile/);
	var string4 = form.FW_UploadFile.value.search(/tclinux/);
<% if tcwebApi_get("WebCustom_Entry","isAllinoneUploadSupported","h") ="Yes" then %>
	var string5 = form.FW_UploadFile.value.search(/tclinux_allinone/);
<%end if %>

	if (form.FW_UploadFile.value=="") {
		alert("Pls select a file to update!");
	}
	else {
		if (((form.upload_type[0].checked) && (string3 >= 0))
<% if tcwebApi_get("WebCustom_Entry","isAllinoneUploadSupported","h") ="Yes" then %>
				|| ((form.upload_type[1].checked) && (string4 >= 0 && string5<0))
				|| ((form.upload_type[2].checked) && (string5 >= 0))
<% else %>
				 || ((form.upload_type[1].checked) && (string4 >= 0))
<%end if %>
		) {
			document.getElementById('upload_text').innerHTML = "Uploading, Please wait……";
			form.postflag.value = "1";
			form.submit();
		}
		else
			alert("You put a wrong file!");
	}
}
function backup_settings()
{
	var cfg = '/romfile.cfg';
	var code = 'location.assign("' + cfg + '")';
	eval(code);
}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Upgrade Management</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
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
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <FORM ENCTYPE="multipart/form-data" name="ConfigForm" method="post">
              <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=12>&nbsp;</TD>
                <TD width="447">
					<INPUT TYPE="HIDDEN" NAME="postflag" VALUE="1">
					<INPUT TYPE="HIDDEN" NAME="HTML_HEADER_TYPE" VALUE="2">
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
			  <TR>
                <TD width=12>&nbsp;</TD>
                <TD align="center" width="447">
						<input name="upload_type" type="radio" value="1">romfile
						<input name="upload_type" type="radio" value="4" CHECKED>tclinux.bin
<% if tcwebApi_get("WebCustom_Entry","isAllinoneUploadSupported","h") ="Yes" then %>
						<input name="upload_type" type="radio" value="5">tclinux_allinone
<%end if %>
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=12>&nbsp;</TD>
                <TD>
					File Location [128 characters maximum]:<INPUT TYPE="FILE" NAME="FW_UploadFile" SIZE="30" MAXLENGTH="128">
				</TD>
                <TD width=10>&nbsp;</TD></TR>
			 <TR>
                <TD width=12>&nbsp;</TD>
                <TD align="center">
					<input type="button" value="ROMFILE BACKUP" onClick='backup_settings()'>
				</TD>
                <TD width=10>&nbsp;</TD></TR>
			 <TR>
                <TD width=12>&nbsp;</TD>
                <TD align="center">
					
				</TD>
                <TD width=10>&nbsp;</TD></TR>
			  <TR>
                <TD width=12>&nbsp;</TD>
                <TD width="447">
			<font color="#FF0000"><span id="upload_text"><% if tcWebApi_get("System_Entry","upgrade_fw_status","h") = "NONE" then asp_Write("") elseif tcWebApi_get("System_Entry","upgrade_fw_status","h") = "FAIL" then asp_Write("Update failed, please try it again!") end if%> </span></font>	
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
			 <TR>
                <TD width=12>&nbsp;</TD>
                <TD align="center">
					
				</TD>
                <TD width=10>&nbsp;</TD></TR>
			 <TR>
                <TD width=12>&nbsp;</TD>
                <TD>
					<font color="#FF0000">Note: It might take several minutes, don't power off it during upgrading. Device will restart after the upgrade.</font>
				</TD>
                <TD width=10>&nbsp;</TD></TR>
				</TBODY></TABLE></FORM></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff>&nbsp;</TD>
		  <TD width=7 bgColor=#ffffff border=0></TD>
          <TD width=280 bgColor=#ffffff>&nbsp;</TD>
          <TD width=393 bgColor=#ffffff>
            <P align=center>
			<INPUT type=button value="Apply" id="btnOK" onclick="btnCommit()" height="23" width="80" border="0">&nbsp;&nbsp;
			<INPUT type=button value="Cancel" id="btnCancel" onclick="RefreshPage()" height="23" width="80" border="0">
			</P></TD>
          <TD width=169>&nbsp;</TD></TR>
        </TABLE></TD></TR></TBODY></TABLE></BODY>
<%else%>
<% if tcwebApi_get("WebCustom_Entry","isAllinoneUploadSupported","h") ="Yes" then %>
<%if tcWebApi_get("System_Entry","upgrade_fw_type","h") = "5" then%>
<HEAD></HEAD>
<BODY><font color=red>Allinone upgrade was successful, Pls power off and on the device to reboot!</font></BODY>
<%else%>
<HEAD><meta http-equiv="Refresh" content="115"; url="upgrade.asp"></HEAD>
<BODY><font color=red>File uploaded successfully, starting flash erasing and programming……</font></BODY>
<%end if%>
<%else%>
<HEAD><meta http-equiv="Refresh" content="115"; url="upgrade.asp"></HEAD>
<BODY><font color=red>File uploaded successfully, starting flash erasing and programming……</font></BODY>
<%end if%>
<%end if%>
</HTML>
