<%
if Request_Form("Port_Flag") = "5" then
	TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
	TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
	TCWebApi_set("IpMacFilter_Common","ActivePortOut","EnPortFilterOut_Flag")
	TCWebApi_set("IpMacFilter_Common","ListTypeIpUp","PortListType_Up_Flag")
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()
elseif Request_Form("Port_Flag") = "6" then
	TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
	TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
	TCWebApi_set("IpMacFilter_Common","ActivePortIn","EnPortFilterIn_Flag")
	TCWebApi_set("IpMacFilter_Common","ListTypeIpDown","PortListType_Down_Flag")
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()
	
elseif Request_Form("Port_Flag") = "2" then
	if Request_Form("delnum") <> "" then
		TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
		TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
		TCWebApi_set("IpMacFilter_Common","DeleteIndex","delnum")
	end if
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()
elseif Request_Form("Port_Flag") = "3" then
	TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
	TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
	TCWebApi_set("IpMacFilter_Common","ListTypeIpUp","PortListType_Up_Flag")
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()
elseif Request_Form("Port_Flag") = "4" then
	TCWebApi_set("IpMacFilter_Common","Action","Actionflag")
	TCWebApi_set("IpMacFilter_Common","IpMacType","IpMacType_Flag")
	TCWebApi_set("IpMacFilter_Common","ListTypeIpDown","PortListType_Down_Flag")
	TCWebApi_commit("IpMacFilter_Entry")
	TCWebApi_save()		
end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>IP/Port Settings</TITLE>
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
            value="Security->IP/Port Filter" name=Selected_Menu> </FONT></B><SPAN 
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
      <SCRIPT language=JavaScript type=text/javascript>
var portFilter = [
["InternetGatewayDevice.X_ATP_Security","<% tcWebApi_get("IpMacFilter_Common","ActivePortOut","s")%>","<% tcWebApi_get("IpMacFilter_Common","ListTypeIpUp","s")%>","<% tcWebApi_get("IpMacFilter_Common","ListTypeIpDown","s")%>","<% tcWebApi_get("IpMacFilter_Common","ActivePortIn","s")%>"],
null
]
var enblFilterOut = portFilter[0][1];
var ModeUp = portFilter[0][2];
var ModeDown = portFilter[0][3];
var enblFilterIn = portFilter[0][4];

function stWanInfo(domain,Name)
{
this.domain = domain;
this.Name = Name;
}
var WanIP  = new Array(null);
var WanPPP = new Array(new stWanInfo("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANPPPConnection.2","1_TR069_INTERNET_R_0_35"),null);
var WanInfo = new Array();
var i;
for (i = 0; i < WanIP.length-1; i++)
{
WanInfo[i] = WanIP[i];
}
for (j = 0; j < WanPPP.length-1; i++,j++)
{
WanInfo[i] =  WanPPP[j];
}
function ShowSrcAddr(val,arrMsgInfo)
{
return val + '-' + arrMsgInfo[i][10];
}
function ShowSrcPort(val,arrMsgInfo)
{
return val + '-' + arrMsgInfo[i][11];
}
function ShowDestAddr(val,arrMsgInfo)
{
return val + '-' + arrMsgInfo[i][12];
}
function ShowDestPort(val,arrMsgInfo)
{
return val + '-' + arrMsgInfo[i++][13];
}
function ShowIface(val,arrMsgInfo)

{
for (k = 0; k < WanInfo.length; k++)
{
if (WanInfo[k].domain == arrMsgInfo[i-1][14])
{
return WanInfo[k].Name;
}
}
}
function ShowEnable(val,arrMsgInfo)
{
if (val == 1)
{
return 'Enable';
}
else
{
return 'Disabled';
}
}
var FilterOut = new Array(
new Array("html/security/portfilter.asp", "FilterOut", "", "18%", "10%", "14%", "12%", "12%", "12%", "12%","10%",""),
new Array("html/security/addportfilter.asp","", "InternetGatewayDevice.X_ATP_Security.IpFilterOut", "Filtering Name", "Protocol", "Source Address", "Source Port", "Destination Address", "Destination Port","Enable"),
new Array("", "", "", "", "", "ShowSrcAddr", "ShowSrcPort", "ShowDestAddr", "ShowDestPort","ShowEnable"),

new Array()
);
var FilterIn = new Array(
new Array("html/security/portfilter.asp", "FilterIn", "", "10%", "10%", "14%", "12%", "12%", "12%", "10%", "8%","12%",""),
new Array("html/security/addportfilter.asp","", "InternetGatewayDevice.X_ATP_Security.IpFilterIn", "Name", "Protocol", "Source Address", "Source Port", "Destination Address", "Destination Port","Enable","Interface"),
new Array("", "", "", "", "", "ShowSrcAddr", "ShowSrcPort", "ShowDestAddr", "ShowDestPort","ShowEnable","ShowIface"),

new Array()
);
var stateUp,stateDown;
function LoadFrame()
{
	document.ConfigForm.delnum.value = "";
	document.ConfigForm.Port_Flag.value = "0";
	var FilterMode = getElById("FilterMode");
	var FilterModeDown = getElById("FilterModeDown");
	var FilterInfo = getElById("FilterOutInfo");
	if (ModeUp == "black")
	{
		FilterMode[0].checked = true;
		stateUp = false;
	}
	else
	{
		FilterMode[1].checked = true;
		stateUp = true;
	}
	
	if (ModeDown == "black")
	{
		FilterModeDown[0].checked = true;
		stateDown = false;
	}
	else
	{
		FilterModeDown[1].checked = true;
		stateDown = true;
	}
	
	setCheck('enblFilterOut',enblFilterOut);
	setCheck('enblFilterIn',enblFilterIn);
}

function selFilter(filter,enable,divinfo)
{
	var Form = document.ConfigForm;
	var enableFilter = filter.checked;
	if(0 == enable){
		if (enableFilter == false)
		{
			if(!confirm("Whether to disable the uplink port filter?"))
			{
				filter.checked = true;
				Form.Port_Flag.value = "0";
				return;
			}
			Form.Port_Flag.value = "5";
			Form.IpMacType_Flag.value = "IpUp";
			setDisplay(divinfo,enableFilter);
		}
		else
		{
			if(!confirm("Whether to enable the uplink port filter?"))
			{
				filter.checked = false;
				Form.Port_Flag.value = "0";
				return;
			}
			Form.Port_Flag.value = "5";
			Form.IpMacType_Flag.value = "IpUp";
			setDisplay(divinfo,enableFilter);
		}
	}
	else if(1 == enable)
	{
		if (enableFilter == false)
		{
			if(!confirm("Whether to disable the downlink port filter?"))
			{
				filter.checked = true;
				Form.Port_Flag.value = "0";
				return;
			}
			Form.Port_Flag.value = "6";
			Form.IpMacType_Flag.value = "IpDown";
			setDisplay(divinfo,enableFilter);
		}
		else
		{
			if(!confirm("Whether to enable the downlink port filter?"))
			{
				filter.checked = false;
				Form.Port_Flag.value = "0";
				return;
			}
			Form.Port_Flag.value = "6";
			Form.IpMacType_Flag.value = "IpDown";
			setDisplay(divinfo,enableFilter);
		}
	}
	Form.Actionflag.value = "Mod";
	btnSubmit();
	
}
function ChangeMode()
{
	var FilterMode = getElById("FilterMode");
	var isFilter = getElById("enblFilterOut");
	if (FilterMode[0].checked == true && stateUp)
	{
		if (confirm("Changing the filtering mode will switch all filter rules, are you sure to change the filtering mode to Blacklist?"))
		{
			stateUp = false;
			document.ConfigForm.PortListType_Up_Flag.value="black";
			document.ConfigForm.IpMacType_Flag.value = "IpUp";
			document.ConfigForm.Actionflag.value = "Mod";
			document.ConfigForm.Port_Flag.value = "3";
			document.ConfigForm.submit();
		}
		else
		{
			FilterMode[0].checked = false;
			FilterMode[1].checked = true;
			return;
		}
	}
	else if (FilterMode[1].checked == true && !stateUp)
	{
		if (confirm("Changing the filtering mode will switch all filter rules, are you sure to change the filtering mode to Whitelist?"))
		{
			stateUp = true;
			document.ConfigForm.PortListType_Up_Flag.value="white";
			document.ConfigForm.IpMacType_Flag.value = "IpUp";
			document.ConfigForm.Actionflag.value = "Mod";
			document.ConfigForm.Port_Flag.value = "3";
			document.ConfigForm.submit();
		}
		else
		{
			FilterMode[0].checked = true;
			FilterMode[1].checked = false;
			return;
		}
	}
}

function ChangeModeDown()
{
	var FilterMode = getElById("FilterModeDown");
	var isFilter = getElById("enblFilterIn");
	if (FilterMode[0].checked == true && stateDown)
	{
		if (confirm("Changing the filtering mode will switch all filtering rules, are you sure to change the filtering mode to Blacklist?"))
		{
			stateDown = false;
			document.ConfigForm.PortListType_Down_Flag.value="black";
			document.ConfigForm.IpMacType_Flag.value = "IpDown";
			document.ConfigForm.Actionflag.value = "Mod";
			document.ConfigForm.Port_Flag.value = "4";
			document.ConfigForm.submit();
		}
		else
		{
			FilterMode[0].checked = false;
			FilterMode[1].checked = true;
			return;
		}
	}
	else if (FilterMode[1].checked == true && !stateDown)
	{
		if (confirm("Changing the filtering mode will switch all filtering rules, are you sure to change the filtering mode to Whitelist?"))
		{
			stateDown = true;
			document.ConfigForm.PortListType_Down_Flag.value="white";
			document.ConfigForm.IpMacType_Flag.value = "IpDown";
			document.ConfigForm.Actionflag.value = "Mod";
			document.ConfigForm.Port_Flag.value = "4";
			document.ConfigForm.submit();
		}
		else
		{
			FilterMode[0].checked = true;
			FilterMode[1].checked = false;
			return;
		}
	}
}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Port Filter Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170 
          rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#PortFilter" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
              </TBODY></TABLE>　 </TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <FORM name="ConfigForm" action="/cgi-bin/sec-portfilter.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV>Configure the uplink port filter rules</DIV>
                          <input type="hidden" name="Port_Flag" value="0">
						  <input type="hidden" name="PortListType_Up_Flag" value="<% tcWebApi_get("IpMacFilter_Common","ListTypeIpUp","s") %>">
						  <input type="hidden" name="PortListType_Down_Flag" value="<% tcWebApi_get("IpMacFilter_Common","ListTypeIpDown","s") %>">
						  <input type="hidden" name="EnPortFilterOut_Flag" value="<% tcWebApi_get("IpMacFilter_Common","ActivePortOut","s") %>">
						  <input type="hidden" name="EnPortFilterIn_Flag" value="<% tcWebApi_get("IpMacFilter_Common","ActivePortIn","s") %>">
                          <input type="hidden" name="delnum" value="">
                          <input type="hidden" name="Actionflag" value="Mod">
						  <input type="hidden" name="IpMacType_Flag" value="IpUp">
                          <input type="hidden" name="ipup_num" value="<% tcWebApi_get("IpMacFilter","ipup_num","s") %>">
                          <input type="hidden" name="ipdown_num" value="<% tcWebApi_get("IpMacFilter","ipdown_num","s") %>"> 
                          <SCRIPT language=JavaScript src="/JS/printbox.js"></SCRIPT>
						  <script language="JavaScript" type="text/JavaScript">
function addClick(iType)
{
	var Form = document.ConfigForm;
	var FilterType;
	var typeFlag = '&typeFlag=';

	if(iType == 0)
	{
		FilterType = "40";
		if(parseInt(Form.ipup_num.value) >= 40)
		{
			alert("Uplink port filter reaches the maximum number of rules!");
			return false;
		}
		typeFlag += 'IpUp';
	}
	else
	{
		FilterType = "80";
		if(parseInt(Form.ipdown_num.value) >= 40)
		{
			alert("Downlink port filter reaches the maximum number of rules!");
			return false;
		}
		typeFlag += 'IpDown';
	}
	window.location = '/cgi-bin/sec-addportfilter.asp?PortFilterType='+FilterType+typeFlag;
}
function removeClick(iType)
{
	document.ConfigForm.Port_Flag.value = "2";
	if(0 == iType)
	{
		document.ConfigForm.IpMacType_Flag.value = "IpUp";
	}
	else
	{
		document.ConfigForm.IpMacType_Flag.value = "IpDown";
	}
	document.ConfigForm.Actionflag.value = "Del";
	document.ConfigForm.submit();
}
function	btnSubmit()
{
	var Form = document.ConfigForm;
	if(Form.enblFilterOut.checked)
	{
		Form.EnPortFilterOut_Flag.value = "1";
		if (Form.FilterMode[0].checked)
			Form.PortListType_Up_Flag.value = "black";
		else if (Form.FilterMode[1].checked)
			Form.PortListType_Up_Flag.value = "white";
	}
	else
	{
		Form.EnPortFilterOut_Flag.value = "0";
	}
	if(Form.enblFilterIn.checked)
	{
		Form.EnPortFilterIn_Flag.value = "1";
		if (Form.FilterModeDown[0].checked)
			Form.PortListType_Down_Flag.value = "black";
		else if (Form.FilterModeDown[1].checked)
			Form.PortListType_Down_Flag.value = "white";		
	}
	else
	{
		Form.EnPortFilterIn_Flag.value = "0";		
	}
	Form.submit();
}
</script>
                          <DIV>Enable: <INPUT id=enblFilterOut onclick="selFilter(this, 0,'FilterOutInfo')" type=checkbox name="enblFilterOut" <%if tcWebApi_get("IpMacFilter_Common","ActivePortOut","h") = "1" then asp_Write("checked") end if%>></DIV><BR>
                  <DIV id=FilterOutInfo>Filter Mode： 
				  <INPUT id=FilterMode onclick="ChangeMode()" type=radio name="FilterMode" <%if tcWebApi_get("IpMacFilter_Common","ListTypeIpUp","h") = "black" then asp_Write("checked") end if%>>Blacklist 
				  <INPUT id=FilterMode onclick="ChangeMode()" type=radio name="FilterMode" <%if tcWebApi_get("IpMacFilter_Common","ListTypeIpUp","h") = "white" then asp_Write("checked") end if%>>Whitelist <BR><BR>
                  <SCRIPT language=JavaScript type=text/javascript>
				  	setDisplay("FilterOutInfo",enblFilterOut);
				  </SCRIPT>
                            <% if tcWebApi_get("IpMacFilter_Common","ActivePortOut","h") = "1" then %>
                            <iframe src="/cgi-bin/sec_portfilteroutlist.cgi" frameborder="0" width="550" height="220" ></iframe>
                            <% end if %>
                            <BR>
                            <BR>
				  <INPUT id=btnAdd onclick="addClick(0)" type=button value=Add> 
				  <INPUT id=btnRemove onclick="removeClick(0)" type=button value=Delete>
                          </DIV>                            
						  <HR>

                  <DIV>Configure the downlink port filter rules</DIV><BR>
                  <DIV>Enable: <INPUT id=enblFilterIn  onclick="selFilter(this, 1,'FilterInInfo')" type=checkbox name="enblFilterIn" <%if tcWebApi_get("IpMacFilter_Common","ActivePortIn","h") = "1" then asp_Write("checked") end if%>> </DIV><BR>
                  <DIV id=FilterInInfo>Filter Mode： 
				  <INPUT id=FilterMode onclick="ChangeModeDown()" type=radio name="FilterModeDown" <%if tcWebApi_get("IpMacFilter_Common","ListTypeIpDown","h") = "black" then asp_Write("checked") end if%>>Blacklist 
				  <INPUT id=FilterMode onclick="ChangeModeDown()" type=radio name="FilterModeDown" <%if tcWebApi_get("IpMacFilter_Common","ListTypeIpDown","h") = "white" then asp_Write("checked") end if%>>Whitelist <BR><BR>
                  <SCRIPT language=JavaScript type=text/javascript>
					  setDisplay("FilterInInfo",enblFilterIn);
				  </SCRIPT>
                            <% if tcWebApi_get("IpMacFilter_Common","ActivePortIn","h") = "1" then %>
                            <iframe src="/cgi-bin/sec_portfilterinlist.cgi" frameborder="0" width="550" height="220" ></iframe>
					<% end if %>
                            <p><BR>
                              <BR>
                              <INPUT id=btnAdd onclick="addClick(1)" type=button value=Add>
                              <INPUT id=btnRemove onclick="removeClick(1)" type=button value=Delete>
                            </p>
                          </DIV>							
						  
                        </TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD> </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></FORM></TD></TR>
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
          <TD width=164 bgColor=#dff5ff>&nbsp;</TD>
		  <TD width=7 bgColor=#ffffff border=0></TD>
          <TD width=280 bgColor=#ffffff>&nbsp;</TD>
          <TD width=393 bgColor=#ffffff>
            <P align=center><INPUT type=button value="Apply" id=btnOK onclick="btnSubmit()" height=23 
            width=80 border=0>&nbsp;&nbsp;<INPUT type=button value="Cancel" 
            id=btnCancel onclick="RefreshPage()" height=23
            width=80 border=0> </P></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
