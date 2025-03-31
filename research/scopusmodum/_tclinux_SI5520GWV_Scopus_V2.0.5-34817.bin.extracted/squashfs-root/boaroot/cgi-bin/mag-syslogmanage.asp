<%
If Request_Form("loglevelchange")="1" then 
	TCWebApi_set("SysLog_Entry","WriteLevel","loglevel")
	TCWebApi_set("SysLog_Entry","LogEnable","Enable")
	TCWebApi_set("SysLog_Entry","RemoteLogEnable","logRemoteEnable")
	TCWebApi_set("SysLog_Entry","RemoteLogIP","MainServer")
	TCWebApi_set("SysLog_Entry","RemoteLogPort","MainServerPort")
	TCWebApi_commit("SysLog_Entry")
	TCWebApi_save()
End If
%>

<%
if Request_form("frameloglevel") <> "" then
		TCWebApi_set("SysLog_Entry","DisplayLevel","frameloglevel")
end if
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Log File Management</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>

<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>

<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
<SCRIPT language=javascript>

function SubmitChange(){
	document.ConfigForm.loglevelchange.value = "1"; 
	document.ConfigForm.loglevel.value = document.ConfigForm.Level.value;
<% if tcWebApi_get("WebCustom_Entry", "isRemoteLogSupported", "h") = "Yes"  then %>		
	if (isValidIpAddress(MainServer.value) == false)
	{
		alert('Address "' + MainServer.value + '"is invalid.');
		return false;
	}
<% end if%>
	document.ConfigForm.submit();
}

function Back_Syslog()
{
   var cfg = '/syslog.txt';
	 var code ;
	 if (document.ConfigForm.logenable.value == "Yes")
	 {
	     code = 'location.assign("'+cfg+'")';
	     eval(code);
	 }
}
<% if tcWebApi_get("WebCustom_Entry", "isRemoteLogSupported", "h") = "Yes"  then %>
function logSrvClick()
{
	if(getCheckVal('logSrvEnable') == 0)
	{
		setText('logRemoteEnable', 0);
		document.ConfigForm.MainServer.disabled = true;
		document.ConfigForm.MainServerPort.disabled = true;
	}
	else
	{	
		setText('logRemoteEnable', 1);
		document.ConfigForm.MainServer.disabled = false;
		document.ConfigForm.MainServerPort.disabled = false;
	}
}
<% end if%>
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
            value="Maintenance->Log File" name=Selected_Menu> </FONT></B><SPAN 
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
          <TD id=MenuArea_L2 bgColor=#dff5ff colSpan=2 
      height=24></TD></TR></TBODY></TABLE>
      <SCRIPT language=javascript>
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

		function LoadFrame()
		{
<% if tcWebApi_get("WebCustom_Entry", "isRemoteLogSupported", "h") = "Yes"  then %>
			var setRemoteLog = "<% tcWebApi_get("SysLog_Entry","RemoteLogEnable","s") %>";
			setCheck('logSrvEnable',setRemoteLog);
			if(getCheckVal('logSrvEnable') == 0) {
				document.ConfigForm.MainServer.disabled = true;
				document.ConfigForm.MainServerPort.disabled = true;
			}
			else {
				document.ConfigForm.MainServer.disabled = false;
				document.ConfigForm.MainServerPort.disabled = false;
			}
<% end if%>
			return;
		}
		function SetLogEnbl()
		{
			alert("Note: Long-term enable the gateway log will reduce the device life!");
		}
	</SCRIPT>
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
	    <FORM name="ConfigForm" action="/cgi-bin/mag-syslogmanage.asp" method="post" >
		<INPUT TYPE="HIDDEN" NAME="loglevel" VALUE="<%TCWebApi_get("SysLog_Entry","WriteLevel","s")%>">
		<INPUT TYPE="HIDDEN" NAME="loglevelchange" VALUE="0">
		<INPUT TYPE="HIDDEN" NAME="logenablechange" VALUE="0">
		<INPUT TYPE="HIDDEN" NAME="logenable" VALUE="<% TCWebApi_get("SysLog_Entry","LogEnable","s") %>">		
		<INPUT TYPE="HIDDEN" NAME="logRemoteEnable" VALUE="0">
		<INPUT TYPE="HIDDEN" NAME="frameloglevel">
        <TBODY id="syslog_set">
        <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>
        <SCRIPT language=JavaScript type=text/javascript>
					if (curUserName != sptUserName)
						getElement("syslog_set").style.display = "none";
				</SCRIPT>
        <% end if %>	        
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Log Level</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170
            rowSpan=11><TABLE cellSpacing=0 cellPadding=20 width="100%" 
              border=0 height='<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then asp_write("100%") else asp_write("auto") end if%>'><TBODY>
              <TR>
                <TD valign='top'><A href="/cgi-bin/help_content.asp#LogFile" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
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
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=80>Log:</TD>
                      <TD><INPUT type="radio"  name="Enable" VALUE="No" <% If TCWebApi_get("SysLog_Entry","LogEnable","h") = "No" then asp_Write("checked") end if %> >Disable</TD>
                      <TD><INPUT onclick="SetLogEnbl()" value="Yes" type="radio" name="Enable" <% If TCWebApi_get("SysLog_Entry","LogEnable","h") = "Yes" then asp_Write("checked") end if %>  > Enable</TD></TR></TBODY></TABLE><BR>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD>Log Level:</TD>
                      <TD colSpan=2>
					  <SELECT id="Level" size="1" name="Level" > 
					  
<script language="JavaScript" type='text/javascript'>
	var agearr = new Array(8);
	agearr[0]="Emergency";
	agearr[1]="Alert";
	agearr[2]="Critical";
	agearr[3]="Error";
	agearr[4]="Warning";
	agearr[5]="Notice";
	agearr[6]="Informal";
	agearr[7]="Debugging";
	
	for(i=0;i<8;i++)
	{
		if(document.ConfigForm.loglevel.value == i)
		{
			document.ConfigForm.Level[i]=new Option(agearr[i],i,false,false);
			document.ConfigForm.Level[i].selected=true;
		}
		else
		{
		 	if(agearr[i] == "Emergency")
		 	{
				document.ConfigForm.Level[i]=new Option(agearr[i],i,false,false);
				document.ConfigForm.Level[i].selected=true;
			}
			else		
			{
				document.ConfigForm.Level[i]=new Option(agearr[i],i,false,false);
				document.ConfigForm.Level[i].selected=false;
			}
		}
	}
</SCRIPT>					  
				  </SELECT></TD></TR></TBODY></TABLE>
				  <%if tcWebApi_get("WebCustom_Entry", "isRemoteLogSupported", "h") = "Yes"  then %>  
                  <DIV id=srvInfo>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
					<TR>
                      <TD width=120>Remote Log Enable：</TD>
                      <TD><INPUT onclick=logSrvClick() type=checkbox 
                        name=logSrvEnable></TD></TR>
                    <TR>
                      <TD width=120>Server IP Address:</TD>
                      <TD><INPUT id=MainServer maxLength=15 size=15 type="text" style="height:20px"
                        name=MainServer value="<% if tcWebApi_get("SysLog_Entry","RemoteLogIP","h") <> "N/A" then tcWebApi_get("SysLog_Entry","RemoteLogIP","s") end if %>">
						</TD></TR><TR><BR></TR>
                    <TR>
                      <TD>Server UDP Port:</TD>
                      <TD><INPUT maxLength=15 size=15 type="text" style="height:20px"
                    name=MainServerPort value="<% if tcWebApi_get("SysLog_Entry","RemoteLogPort","h") <> "N/A" then tcWebApi_get("SysLog_Entry","RemoteLogPort","s") end if %>">
					</TD></TR></TBODY></TABLE></DIV>
				  <% end if %>
                  <P></P></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <HR>
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>  	
        </TBODY>
        <TBODY> 
        <% end if %> 	 	
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Log</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
          <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>         	
          <TD vAlign=top width=170 
            rowSpan=11><TABLE id='syslog_help' cellSpacing=0 cellPadding=20 width="100%" 
              border=0 height='<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then asp_write("100%") else asp_write("auto") end if%>'><TBODY>
              <TR>
                <TD valign='top'><A href="/cgi-bin/help_content.asp#LogFile" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>                  
                  
              </TBODY></TABLE></TD>              
        			<SCRIPT language=JavaScript type=text/javascript>
								if (curUserName == sptUserName)
									getElement("syslog_help").style.display = "none";
							</SCRIPT>
        			<% end if %>        	             
          </TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
							<iframe src="/cgi-bin/syslog.cgi" frameborder="0" scrolling="no" width="650" height="650" align=left></iframe></TR>
							<TR><TD>
							<P align=center>
          		<input type="button" value="Save Log"  name="SysLogSave"  onClick="Back_Syslog()" >
          		<%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>
          		<SCRIPT language=JavaScript type=text/javascript>
							if (curUserName != sptUserName)
								getElement("SysLogSave").style.display = "none";
							</SCRIPT>
          		<% end if %>
          <BR></P></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>  	
        </TBODY> 	
      	<TBODY id="syslog_mantain">      	
        <SCRIPT language=JavaScript type=text/javascript>
					if (curUserName != sptUserName)
						getElement("syslog_mantain").style.display = "none";
				</SCRIPT>
        <% end if %>	
        	
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR></TBODY></FORM></TABLE></TD></TR>
  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff>&nbsp;</TD>
		  <TD width=7 bgColor=#ffffff border=0></TD>
          <TD width=280 bgColor=#ffffff>&nbsp;</TD>
          <TD width=393 bgColor=#ffffff>
            <P align=center><INPUT type=button value="Apply" id=btnOK onclick=SubmitChange() height=23 
            width=80 border=0>&nbsp;&nbsp;<INPUT type=button value="Cancel" 
            id=btnCancel onclick="RefreshPage()" height=23 
            width=80 border=0> </P>
            <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>
        			<SCRIPT language=JavaScript type=text/javascript>
								if (curUserName != sptUserName)
								{
									getElement("btnOK").style.display = "none";
									getElement("btnCancel").style.display = "none";
								}
							</SCRIPT>
        			<% end if %>
			</TD>
          <TD width=169>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
