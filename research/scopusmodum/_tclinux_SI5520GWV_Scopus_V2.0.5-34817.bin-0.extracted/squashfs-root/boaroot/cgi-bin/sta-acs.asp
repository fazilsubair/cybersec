<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0038)http://192.168.1.1/html/status/acs.asp -->
<HTML><HEAD><TITLE>Remote Management Status</TITLE>
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
            value="Status->TR069" name=Selected_Menu> </FONT></B><SPAN 
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
          <TD height=15 width=157 border=0 bgColor=#dff5ff></TD>
          <TD height=15 width=851 border=0 bgColor=#ffffff>
          </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=top>
      <SCRIPT language=JavaScript src="/JS/printtable.js"></SCRIPT>

      <SCRIPT language=JavaScript type=text/javascript>

var resultinfo = "<%TCWebApi_get("Diagnostic_PVC","ReportResult","s")%>";
var autoreportinfo = "<%TCWebApi_get("Diagnostic_PVC","AutoReport","s")%>";
var itmsconn = "<%TCWebApi_get("Diagnostic_PVC","ItmsConn","s")%>";
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD class=Item_L1 width=157 bgColor=#dff5ff height=30>
            <P>Establish Interaction</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170 rowSpan=7>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#TR069Status" 
                  target=_blank> <INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
            </TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2>&nbsp;</P></TD>
         <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=3 width=653 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR>
                      <TD class=table_title width=171>Active report of event:</TD>
                      <TD width=245>
                        <SCRIPT language=javascript>
						var result = "<%TCWebApi_get("Cwmp_Entry","Inform_Status","s")%>";
						switch(result)
						{
							case "0":
								document.writeln("Not Reported（Device Starting）");
								break;
							case "1":
								document.writeln("Not Reported(No remote management WAN interface)");
								break;
							case "2":
								document.writeln("Not Reported(Remote Management WAN interface is not in effect)");
								break;
							case "3":
								document.writeln("Not Reported(No DNS information of channel management)");
								break;
							case "4":
								document.writeln("Not Reported(No parameters of ACS configuration)");
								break;
							case "5":
								document.writeln("Not Reported(ACS DNS Failed)");
								break;
							case "6":
								document.writeln("No response to report");
								break;
							case "7":
								document.writeln("Process of escalation interrupted"); 
								break;
							case "8":
								document.writeln("Reported success");
								break;
							 default:
								document.writeln("N/A");
								break;			
						}						
						</SCRIPT>
                      </TD></TR></TBODY></TABLE><BR><BR>
                  <TABLE cellSpacing=0 cellPadding=3 width=653 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR>
                      <TD class=table_title width=172>Event of accepting connecting requests from ITMS:</TD>
                      <TD width=244>
                        <SCRIPT language=javascript>
						var result = "<%TCWebApi_get("Cwmp_Entry","AcsConnStatus","s")%>";
						switch(result)
						{
							case "0":
								document.writeln("Not received remote connection request");
								break;
							case "1":
								document.writeln("Remote connection process initiated from ITMS is interrupted");
								break;
							case "2":
								document.writeln("Remote connection process initiated from ITMS success");
								break;
							 default:
								document.writeln("Not received Remote connection request");
								break;			
						}						
						</SCRIPT>
                      </TD></TR></TBODY></TABLE></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
              
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD class=Item_L1 width=157 bgColor=#dff5ff height=30>
            <P>State</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2>&nbsp;</P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=3 width=653 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR>
                      <TD class=table_title width=172>Service Configuration Distributing:</TD>
                      <TD width=244>
                        <SCRIPT language=javascript>
						var rstatus = "<%tcWebApi_get("deviceAccount_Entry","registerStatus","s") %>";
						var rresult = "<%tcWebApi_get("deviceAccount_Entry","registerResult","s") %>";
							if(rstatus=="0" && rresult == "99")
							{
								document.write('Not received remote service configuration');
							}
							else if(rstatus=="0" && rresult == "0")
							{
								document.write('Being receiveing remote service configuration initiated by ITMS');
							}
							else if(rstatus=="0" && rresult == "1")
							{
								document.write('Service configured success');
							}
							else if(rstatus=="5" && rresult == "0")
							{
								document.write('Service configured success');
							}
							else if(rstatus=="0" && rresult == "2")
							{
								document.write('Service configured failed');
							}
							else
							{
								document.write('Not received remote service configuration');
							}
						</SCRIPT>
                      </TD></TR></TBODY></TABLE></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR></TBODY></TABLE>
      <SCRIPT language=JavaScript type=text/javascript>
var curUserType = '0';  
if (curUserType == '1')
{
tabOption.style.display = "none";
secDslStat.style.display = "none";
}
</SCRIPT>
    </TD></TR>
  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff>&nbsp;</TD>
		  <TD width=7 bgColor=#ffffff border=0></TD>
          <TD width=280 bgColor=#ffffff>&nbsp;</TD>
          <TD width=393 bgColor=#ffffff>
            <P align=center>&nbsp;</P></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
