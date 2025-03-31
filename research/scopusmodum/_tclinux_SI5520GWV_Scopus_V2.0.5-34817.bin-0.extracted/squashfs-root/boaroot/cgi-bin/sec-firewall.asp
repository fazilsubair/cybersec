<%
if Request_Form("Fire_Flag") = "1" then 

	TCWebApi_unset("Firewall_Entry")
	TCWebApi_set("Firewall_Entry","firewall_status","EnableFire_Flag")
	TCWebApi_set("Firewall_Entry","spi_status","SPIFW_Flag")
	
	TCWebApi_set("Firewall_Entry","firewall_level","SecurityLevel")
	
	TCWebApi_commit("Firewall_Entry")
	TCWebApi_save()
end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Firewall</TITLE>
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
          bgColor=#6ACAFC rowSpan=3></TD>
          <TD width=673 bgColor=#6ACAFC height=33>
            <P align=right><FONT face="Arial" color=#ffffff><B><FONT face="Arial" 
            color=#ffffff size=6><INPUT id=Selected_Menu type=hidden 
            value="Security->Firewall" name=Selected_Menu> </FONT></B><SPAN 
            class=GatewayName>CPE Name:
            <SCRIPT 
            language=javascript>
document.write(top.gateWayName);
</SCRIPT>
			</SPAN></FONT></P></TD>
          <TD width=170 bgColor=#6ACAFC height=33>
            <P class=GatewayType align=center>Model:
            <SCRIPT language=javascript>
				document.write(top.ModelName);
			</SCRIPT>
             </P></TD></TR>
        <TR>
          <TD id=MenuArea_L1 vAlign=bottom bgColor=#6ACAFC colSpan=2 
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
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 id="mainTableSet" width="1008">
        <TBODY>
        <TR>
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>Firewall Level</P></TD>
          <TD width=7 bgColor=#FFFFFF>&nbsp;</TD>
              <TD width=674>
                <script language=JavaScript type=text/javascript>
var FltsecLevel = '1'
var AttackProtectEnable = '1'

function LoadFrame()
{
	with (getElById('ConfigForm'))
	{
		setAttackProtect();
		if (curUserName != sptUserName)
		{
			getElement('protectatack1').style.display = "none";
			getElement('protectatack2').style.display = "none";
			getElement('protectatack3').style.display = "none";
		}
	}
	
	autoRefreshMainTable("mainTableSet");
}

function SubmitForm()
{
	var	Form = document.ConfigForm;
	Form.Fire_Flag.value = "1";
	Form.submit();
}

function ChangeLevel(level)
{
}

function setAttackProtect()
{
	var attackChecked = getCheckVal('enableAttackProtect');
	if (attackChecked == '1')
	{
		document.ConfigForm.EnableFire_Flag.value = "1";
	}
	else
	{
		document.ConfigForm.EnableFire_Flag.value = "0";
	}
}
</script></TD>
          <TD vAlign=top width=170  
          rowSpan=7 id="TRSpan">
          <script language=JavaScript type=text/javascript>	
          	if (curUserName != sptUserName)
          	{
          		getElById('TRSpan').rowSpan="4";
          	}
          </script>	
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#Firewall" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
              </TBODY></TABLE>　 　　　　　　 
　　　　　　</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
            <TD vAlign=top width=157 bgColor=#DFF5FF height=30></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
		  <FORM name="ConfigForm" action="/cgi-bin/sec-firewall.asp" method="post">
		  	<input type="hidden" name="Fire_Flag" value="0">
			<input type="hidden" name="SPIFW_Flag" value="0">
        	<input type="hidden" name="EnableFire_Flag" value="<% tcWebApi_get("Firewall_Entry","firewall_status","s") %>">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <P>Firewall Level:<SELECT onchange="ChangeLevel(this)" size=1 name="SecurityLevel"> 
				  <OPTION value="low" <%if tcWebApi_get("Firewall_Entry","firewall_level","h") = "low" then asp_Write("selected") end if%>>Low
				  <OPTION value="medium" <%if tcWebApi_get("Firewall_Entry","firewall_level","h") = "medium" then asp_Write("selected") end if%>>Medium
				  <OPTION value="high" <%if tcWebApi_get("Firewall_Entry","firewall_level","h") = "high" then asp_Write("selected") end if%>>High</OPTION>
				  </SELECT></P></TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></FORM></TD></TR>
        <TR id=protectatack1>
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>Attack Protected Settings</P></TD>
          <TD width=7 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD width=0></TD></TR>
        <TR id=protectatack2>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR id=protectatack3>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR id=AttackProtect>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <P>Attack Protected Setting: Enable<INPUT id=enableAttackProtect onclick="setAttackProtect()" type="checkbox" name="enableAttackProtect" <%if tcWebApi_get("Firewall_Entry","firewall_status","h") = "1" then asp_Write("checked") end if%>>
				  </P></TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
				
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
            <P align=center><INPUT type=button value="Apply" id=btnOK onclick="SubmitForm()" height=23 
            width=80 border=0>&nbsp;&nbsp;<INPUT type=button value="Cancel" 
            id=btnCancel onclick="RefreshPage()" height=23
            width=80 border=0> </P></TD>
          <TD width=169 >&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
