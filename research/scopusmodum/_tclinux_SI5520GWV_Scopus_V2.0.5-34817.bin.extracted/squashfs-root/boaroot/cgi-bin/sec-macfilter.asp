<%
if Request_Form("Mac_Flag") = "3" then
	TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
	TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
	TCWebApi_set("IpMacFilter_Common","DeleteIndex","delnum")
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()
elseif Request_Form("Mac_Flag") ="2" then
	TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
	TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
	TCWebApi_set("IpMacFilter_Common","ActiveMac","EnMacFilter_Flag")
	TCWebApi_set("IpMacFilter_Common","ListTypeMac","ListType_Flag")
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()
elseif Request_Form("Mac_Flag") ="4" then
	TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
	TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
	TCWebApi_set("IpMacFilter_Common","ListTypeMac","ListType_Flag")
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()	
end if	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Mac Filter</TITLE>
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
            color=#ffffff size=6><INPUT id=Selected_Menu type=hidden value="Security->Mac Filter" name="Selected_Menu"> </FONT></B><SPAN 
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
      <SCRIPT 
      language=javascript>
MakeMenu(getElById ('Selected_Menu').value);
</SCRIPT>
     </TD></TR>
  <TR>
    <TD vAlign=top>
      <SCRIPT language=JavaScript src="/JS/printbox.js"></SCRIPT>
	  
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>Mac Filter Settings</P></TD>
          <TD width=7 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170 
          rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#MACFilter" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
                  </TBODY></TABLE>　 </TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <FORM name="ConfigForm" action="/cgi-bin/sec-macfilter.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <P>Enable: <INPUT id=isFilter onclick="selFilter(this)" type="checkbox" name="isFilter" <%if tcWebApi_get("IpMacFilter_Common","ActiveMac","h") = "1" then asp_Write("checked") end if%>></P>
                          <input type="hidden" name="ListType_Flag" value="<% tcWebApi_get("IpMacFilter_Common","ListTypeMac","s") %>">
                          <input type="hidden" name="Mac_Flag" value="0">
                          <input type="hidden" name="delnum" value="">
                          <input type="hidden" name="EnMacFilter_Flag" value="<% tcWebApi_get("IpMacFilter_Common","ActiveMac","s") %>">
                          <input type="hidden" name="mac_num" value="<% tcWebApi_get("IpMacFilter","mac_num","s") %>">
                          <input type="hidden" name="Actionflag" value="Del">
						  <input type="hidden" name="IpMacType_Flag" value="Mac">
                          <script language="JavaScript" type="text/JavaScript">
var enableFilter = "<% tcWebApi_get("IpMacFilter_Common","ActiveMac","s") %>";
var Mode = "<% tcWebApi_get("IpMacFilter_Common","ListTypeMac","s") %>";
var state;
function stMacFilter(domain,Name,MACAddress,Enable)
{
this.domain = domain;
this.Name = Name;
this.MACAddress = MACAddress;
this.Enable = Enable;
}
var MacFilter = new Array(null);

function addClick()
{
	if(parseInt(document.ConfigForm.mac_num.value) >= 40)
	{
		alert('Support up to 40 Mac Filtering Rules')
		return;
	}
	location.replace('sec-addmacfilter.asp');
}
function removeClick(rml)
{
	document.ConfigForm.Actionflag.value = "Del";
	document.ConfigForm.Mac_Flag.value = "3";
	document.ConfigForm.submit();
/*if (rml == null)
return;
var Form = new webSubmitForm();
var k;
if (rml.length > 0)
{
for (k = 0; k < rml.length; k++)
{
if ( rml[k].checked == true )
{
Form.addParameter(rml[k].value,'');
}
}
}
else if ( rml.checked == true )
{
Form.addParameter(rml.value,'');
}
Form.setAction('del.cgi?RequestFile=html/security/macfilter.asp');
Form.submit();*/
}
function LoadFrame()
{
	document.ConfigForm.delnum.value = "";
	document.ConfigForm.Mac_Flag.value = "0";
var FilterMode = getElById("FilterMode");
var FilterInfo = getElById("FilterInfo");
if (Mode == "Black")
{
FilterMode[0].checked = true;
state = false;
}
else
{
FilterMode[1].checked = true;
state = true;
}
if (enableFilter == 1)
{
var FilterOption = getElById("isFilter");
FilterOption.checked = true;
}
}
function selFilter(filter)
{
if (filter.checked)
{
getElement('FilterInfo').style.display = "";
if (enableFilter == 0)
{
with (getElById('ConfigForm'))
{
btnAdd.disabled = true;
btnRemove.disabled = true;
FilterMode[0].disabled = true;
FilterMode[1].disabled = true;
}
}
}
else
{
FilterInfo.style.display = "none";
}
}
function ChangeMode()
{
	//var Form = new webSubmitForm();
	var	Form = document.ConfigForm;
	var FilterMode = getElById("FilterMode");
	var isFilter = getElById("isFilter");
	if (FilterMode[0].checked == true && state)
	{
		if (confirm("Changing the filter mode will update all the filtering rules, are you sure to change the filtering mode to Blacklist?"))
		{
			state = false;
			Form.ListType_Flag.value = "Black";
			Form.Mac_Flag.value = "4";
			Form.Actionflag.value = "Mod";
			Form.submit();
		//Form.addParameter('InternetGatewayDevice.X_ATP_Security.MacFilterPolicy',0);
		}
		else
		{
			FilterMode[0].checked = false;
			FilterMode[1].checked = true;
			return;
		}
	}
	else if (FilterMode[1].checked == true && !state)
	{
		if (confirm("Change the filter mode will switch all filter rules, if you really want to change the filter mode is Whitelist?"))
		{
			state = true;
			Form.ListType_Flag.value = "White";
			Form.Mac_Flag.value = "4";
			Form.Actionflag.value = "Mod";
			Form.submit();
			//Form.addParameter('InternetGatewayDevice.X_ATP_Security.MacFilterPolicy',1);
		}
		else
		{
			FilterMode[0].checked = true;
			FilterMode[1].checked = false;
			return;
		}
	}
	//Form.setAction('set.cgi?RequestFile=html/security/macfilter.asp');
	//Form.submit();
}
function SubmitForm()
{
	var Form = document.ConfigForm;
	Form.Actionflag.value = "Add";
	Form.Mac_Flag.value = "2";
	if(Form.isFilter.checked)
		Form.EnMacFilter_Flag.value = "1";
	else Form.EnMacFilter_Flag.value = "0";
	Form.submit();
/*var Form = new webSubmitForm();
Form.addParameter('InternetGatewayDevice.X_ATP_Security.MacFilterRight',getCheckVal('isFilter'));
Form.addParameter('InternetGatewayDevice.X_ATP_Security.MacFilterPolicy',getRadioVal('FilterMode'));
Form.setAction('set.cgi?RequestFile=html/security/macfilter.asp');
Form.submit();*/
}
</script>
                          <BR>
                  <DIV id=FilterInfo>
                  <SCRIPT language=JavaScript type=text/javascript>
if (enableFilter == 0)
{
getElById("FilterInfo").style.display = "none";
}
</SCRIPT>
                  Filter Mode: <INPUT id=FilterMode onclick="ChangeMode()" type="radio" value="0" name="FilterMode" <%if tcWebApi_get("IpMacFilter_Common","ListTypeMac","h") = "Black" then asp_Write("checked")  end if%>>Blacklist 
				  <INPUT id=FilterMode onclick="ChangeMode()" type="radio" value="1" name="FilterMode" <%if tcWebApi_get("IpMacFilter_Common","ListTypeMac","h") = "White" then asp_Write("checked")  end if%>>Whitelist 
                  <BR><BR>
				  <% if tcWebApi_get("IpMacFilter_Common","ActiveMac","h") = "1" then %>
					<iframe src="/cgi-bin/sec_macfilterlist.cgi" frameborder="0" width="100%" ></iframe>
                  <% end if %>
                  <P></P><BR><INPUT id=btnAdd onclick="addClick()" type=button value=Add> 
<INPUT id=btnRemove onclick="removeClick(this.form.rml)" type=button value=Delete> 
                  </DIV></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD></TD>
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
            <P align=center><INPUT type=button value="Apply" id=btnOK onclick=SubmitForm() height=23 
            width=80 border=0>&nbsp;&nbsp;<INPUT type=button value="Cancel" 
            id=btnCancel onclick="RefreshPage()" height=23
            width=80 border=0> </P></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
