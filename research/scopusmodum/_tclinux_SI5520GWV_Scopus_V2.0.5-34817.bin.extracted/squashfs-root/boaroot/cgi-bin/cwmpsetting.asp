<%
if Request_Form("save_flag") = "1" then 
	TCWebApi_set("RegInfo_Entry","productclass","productclass")
	TCWebApi_set("RegInfo_Entry","manufacturerOUI","manufacturerOUI")
	TCWebApi_set("RegInfo_Entry","serialnum","serialnum")
	TCWebApi_set("RegInfo_Entry","Manufacturer","Manufacturer")
	TCWebApi_set("RegInfo_Entry","CustomerSWVersion","CustomerSWVersion")
	TCWebApi_set("RegInfo_Entry","CustomerHWVersion","CustomerHWVersion")
	TCWebApi_commit("RegInfo_Entry")
	TCWebApi_save()	
end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>CwmpSetting</TITLE>
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
                <TD vAlign=bottom align=middle width=100>Welcome!</TD>
                <TD vAlign=bottom width=70><A href="/cgi-bin/index2.asp" target=_top>Back to Home
				</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=table2 height=100 cellSpacing=0 cellPadding=0 width=1008 
border=0>
        <TBODY>
        <TR>
          <TD class=LocationDisplay id=LocationDisplay align=middle width=157 
          bgColor=#ef8218 rowSpan=3></TD>
          <TD width=673 bgColor=#427594 height=33>
            <P align=right><FONT face="Arial" color=#ffffff><B><FONT face="Arial" 
            color=#ffffff size=6></FONT></B><SPAN class=GatewayName></SPAN></FONT></P></TD>
          <TD width=170 bgColor=#427594 height=33>
            </TD></TR>
        <TR>
          <TD id=MenuArea_L1 vAlign=bottom bgColor=#ef8218 colSpan=2 
          height=43>&nbsp;</TD></TR>
        <TR>
          <TD id=MenuArea_L2 bgColor=#427594 colSpan=2 
      height=24></TD></TR></TBODY></TABLE>
      <TABLE id=table3 height=15 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD height=15><IMG height=15 src="/img/panel1.gif" 
            width=164 border=0> </TD>
          <TD><IMG height=15 src="/img/panel2.gif" width=844 
            border=0> </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=top>
<SCRIPT language=JavaScript type=text/javascript>
function LoadFrame()
{
	
}

function btnCommit()
{
	var cform = document.ConfigForm;
	cform.save_flag.value = "1";
	cform.submit();
}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#ef8218 height=30>
            <P class=Item_L1>Cwmp parameter settings</P></TD>
          <TD width=7 bgColor=#ef8218>&nbsp;</TD>
          <TD width=674></TD>
          <TD vAlign=top width=170 background=/img/panel4.gif rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
  
              </TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#e7e7e7 height=10></TD>
          <TD width=7 background=/img/panel3.gif>&nbsp;</TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#e7e7e7 height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 background=/img/panel3.gif>&nbsp;</TD>
          <TD>
            <FORM name="ConfigForm" action="/cgi-bin/cwmpsetting.asp" method="post">
						<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>productclass</TD>
                <TD>
									<INPUT maxLength=63 name="productclass" value="<%if TCWebApi_get("RegInfo_Entry","productclass","h" ) <> "N/A" then TCWebApi_get("RegInfo_Entry","productclass","s" ) end if %>"> 
									<input type="hidden" name="save_flag" value="0">
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>manufacturerOUI</TD>
                <TD>
									<INPUT maxLength=63 name="manufacturerOUI" value="<%if TCWebApi_get("RegInfo_Entry","manufacturerOUI","h" ) <> "N/A" then TCWebApi_get("RegInfo_Entry","manufacturerOUI","s" ) end if %>"> 
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>serialnum</TD>
                <TD>
									<INPUT maxLength=127 name="serialnum" value="<%if TCWebApi_get("RegInfo_Entry","serialnum","h" ) <> "N/A" then TCWebApi_get("RegInfo_Entry","serialnum","s" ) end if %>"> 
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>Manufacturer</TD>
                <TD>
									<INPUT maxLength=63 name="Manufacturer" value="<%if TCWebApi_get("RegInfo_Entry","Manufacturer","h" ) <> "N/A" then TCWebApi_get("RegInfo_Entry","Manufacturer","s" ) end if %>"> 
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>CustomerSWVersion</TD>
                <TD>
									<INPUT maxLength=63 name="CustomerSWVersion" value="<%if TCWebApi_get("RegInfo_Entry","CustomerSWVersion","h" ) <> "N/A" then TCWebApi_get("RegInfo_Entry","CustomerSWVersion","s" ) end if %>"> 
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>CustomerHWVersion</TD>
                <TD>
									<INPUT maxLength=63 name="CustomerHWVersion" value="<%if TCWebApi_get("RegInfo_Entry","CustomerHWVersion","h" ) <> "N/A" then TCWebApi_get("RegInfo_Entry","CustomerHWVersion","s" ) end if %>"> 
               	</TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>
									&nbsp;
								</TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></FORM></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#e7e7e7 height=10></TD>
          <TD width=7 background=/img/panel3.gif>&nbsp;</TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#e7e7e7></TD>
          <TD width=7 background=/img/panel3.gif>&nbsp;</TD>
          <TD></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=162 bgColor=#ef8218>　</TD>
          <TD width=278 bgColor=#427594>　</TD>
          <TD width=196 bgColor=#427594>
            <P align=center><IMG id="btnOK" onclick="btnCommit()" height="23"
            src="/img/ok.gif" width="80" border="0">&nbsp;&nbsp;<IMG 
            id="btnCancel" onclick="RefreshPage()" height="23" src="/img/cancel.gif" 
            width="80" border="0"> </P></TD>
          <TD width=170 bgColor=#313031>　</TD></TR>
        </TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
