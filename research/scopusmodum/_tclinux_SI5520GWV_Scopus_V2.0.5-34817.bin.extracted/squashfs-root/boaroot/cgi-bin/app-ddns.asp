<%
if Request_Form("DDNS_Flag") = "0" then
	TCWebApi_set("WebCurSet_Entry","ddns_id","Curddns_Flag")
elseif Request_Form("DDNS_Flag") = "1" then
	TCWebApi_set("WebCurSet_Entry","ddns_id","Curddns_Flag")
	TCWebApi_set("Ddns_Entry","Active","EnableDDNS_Flag")
	TCWebApi_set("Ddns_Entry","DDNS_Name","ddns_Servername")
	TCWebApi_set("Ddns_Entry","DDNS_Protocal","DDNSProtocol")
	TCWebApi_set("Ddns_Entry","SERVERNAME","DDNSServer")
	TCWebApi_set("Ddns_Entry","SERVICEPORT","ServicePort")
	TCWebApi_set("Ddns_Entry","DDNS_Interface","Interface")
	TCWebApi_set("Ddns_Entry","MYHOST","DDNSHostName")
	TCWebApi_set("Ddns_Entry","DDNS_Domain","DDNSDomainName")
	TCWebApi_set("Ddns_Entry","USERNAME","DDNSUsername")
	TCWebApi_set("Ddns_Entry","PASSWORD","DDNSPassword")	
	TCWebApi_commit("Ddns_Entry")
	TCWebApi_save()
elseif Request_Form("DDNS_Flag") = "2" then
	if Request_Form("hDdnsEntry0") <> "-1" then
		TCWebApi_unset("Ddns_Entry0")
	end if
	
	if Request_Form("hDdnsEntry1") <> "-1" then
		TCWebApi_unset("Ddns_Entry1")
	end if
	
	if Request_Form("hDdnsEntry2") <> "-1" then
		TCWebApi_unset("Ddns_Entry2")
	end if

	if Request_Form("hDdnsEntry3") <> "-1" then
		TCWebApi_unset("Ddns_Entry3")
	end if

	if Request_Form("hDdnsEntry4") <> "-1" then
		TCWebApi_unset("Ddns_Entry4")
	end if

	if Request_Form("hDdnsEntry5") <> "-1" then
		TCWebApi_unset("Ddns_Entry5")
	end if

	if Request_Form("hDdnsEntry6") <> "-1" then
		TCWebApi_unset("Ddns_Entry6")
	end if

	if Request_Form("hDdnsEntry7") <> "-1" then
		TCWebApi_unset("Ddns_Entry7")
	end if
	if Request_Form("hDdnsEntry8") <> "-1" then
		TCWebApi_unset("Ddns_Entry8")
	end if
	
	if Request_Form("hDdnsEntry9") <> "-1" then
		TCWebApi_unset("Ddns_Entry9")
	end if
	
	if Request_Form("hDdnsEntry10") <> "-1" then
		TCWebApi_unset("Ddns_Entry10")
	end if

	if Request_Form("hDdnsEntry11") <> "-1" then
		TCWebApi_unset("Ddns_Entry11")
	end if

	if Request_Form("hDdnsEntry12") <> "-1" then
		TCWebApi_unset("Ddns_Entry12")
	end if

	if Request_Form("hDdnsEntry13") <> "-1" then
		TCWebApi_unset("Ddns_Entry13")
	end if

	if Request_Form("hDdnsEntry14") <> "-1" then
		TCWebApi_unset("Ddns_Entry14")
	end if

	if Request_Form("hDdnsEntry15") <> "-1" then
		TCWebApi_unset("Ddns_Entry15")
	end if
	if Request_Form("hDdnsEntry16") <> "-1" then
		TCWebApi_unset("Ddns_Entry16")
	end if
	
	if Request_Form("hDdnsEntry17") <> "-1" then
		TCWebApi_unset("Ddns_Entry17")
	end if
	
	if Request_Form("hDdnsEntry18") <> "-1" then
		TCWebApi_unset("Ddns_Entry18")
	end if

	if Request_Form("hDdnsEntry19") <> "-1" then
		TCWebApi_unset("Ddns_Entry19")
	end if

	if Request_Form("hDdnsEntry20") <> "-1" then
		TCWebApi_unset("Ddns_Entry20")
	end if

	if Request_Form("hDdnsEntry21") <> "-1" then
		TCWebApi_unset("Ddns_Entry21")
	end if

	if Request_Form("hDdnsEntry22") <> "-1" then
		TCWebApi_unset("Ddns_Entry22")
	end if

	if Request_Form("hDdnsEntry23") <> "-1" then
		TCWebApi_unset("Ddns_Entry23")
	end if
		if Request_Form("hDdnsEntry24") <> "-1" then
		TCWebApi_unset("Ddns_Entry24")
	end if
	
	if Request_Form("hDdnsEntry25") <> "-1" then
		TCWebApi_unset("Ddns_Entry25")
	end if
	
	if Request_Form("hDdnsEntry26") <> "-1" then
		TCWebApi_unset("Ddns_Entry26")
	end if

	if Request_Form("hDdnsEntry27") <> "-1" then
		TCWebApi_unset("Ddns_Entry27")
	end if

	if Request_Form("hDdnsEntry28") <> "-1" then
		TCWebApi_unset("Ddns_Entry28")
	end if

	if Request_Form("hDdnsEntry29") <> "-1" then
		TCWebApi_unset("Ddns_Entry29")
	end if

	if Request_Form("hDdnsEntry30") <> "-1" then
		TCWebApi_unset("Ddns_Entry30")
	end if

	if Request_Form("hDdnsEntry31") <> "-1" then
		TCWebApi_unset("Ddns_Entry31")
	end if
		if Request_Form("hDdnsEntry32") <> "-1" then
		TCWebApi_unset("Ddns_Entry32")
	end if
	
	if Request_Form("hDdnsEntry33") <> "-1" then
		TCWebApi_unset("Ddns_Entry33")
	end if
	
	if Request_Form("hDdnsEntry34") <> "-1" then
		TCWebApi_unset("Ddns_Entry34")
	end if

	if Request_Form("hDdnsEntry35") <> "-1" then
		TCWebApi_unset("Ddns_Entry35")
	end if

	if Request_Form("hDdnsEntry36") <> "-1" then
		TCWebApi_unset("Ddns_Entry36")
	end if

	if Request_Form("hDdnsEntry37") <> "-1" then
		TCWebApi_unset("Ddns_Entry37")
	end if

	if Request_Form("hDdnsEntry38") <> "-1" then
		TCWebApi_unset("Ddns_Entry38")
	end if

	if Request_Form("hDdnsEntry39") <> "-1" then
		TCWebApi_unset("Ddns_Entry39")
	end if
		if Request_Form("hDdnsEntry40") <> "-1" then
		TCWebApi_unset("Ddns_Entry40")
	end if
	
	if Request_Form("hDdnsEntry41") <> "-1" then
		TCWebApi_unset("Ddns_Entry41")
	end if
	
	if Request_Form("hDdnsEntry42") <> "-1" then
		TCWebApi_unset("Ddns_Entry42")
	end if

	if Request_Form("hDdnsEntry43") <> "-1" then
		TCWebApi_unset("Ddns_Entry43")
	end if

	if Request_Form("hDdnsEntry44") <> "-1" then
		TCWebApi_unset("Ddns_Entry44")
	end if

	if Request_Form("hDdnsEntry45") <> "-1" then
		TCWebApi_unset("Ddns_Entry45")
	end if

	if Request_Form("hDdnsEntry46") <> "-1" then
		TCWebApi_unset("Ddns_Entry46")
	end if

	if Request_Form("hDdnsEntry47") <> "-1" then
		TCWebApi_unset("Ddns_Entry47")
	end if
		if Request_Form("hDdnsEntry48") <> "-1" then
		TCWebApi_unset("Ddns_Entry48")
	end if
	
	if Request_Form("hDdnsEntry49") <> "-1" then
		TCWebApi_unset("Ddns_Entry49")
	end if
	
	if Request_Form("hDdnsEntry50") <> "-1" then
		TCWebApi_unset("Ddns_Entry50")
	end if

	if Request_Form("hDdnsEntry51") <> "-1" then
		TCWebApi_unset("Ddns_Entry51")
	end if

	if Request_Form("hDdnsEntry52") <> "-1" then
		TCWebApi_unset("Ddns_Entry52")
	end if

	if Request_Form("hDdnsEntry53") <> "-1" then
		TCWebApi_unset("Ddns_Entry53")
	end if

	if Request_Form("hDdnsEntry54") <> "-1" then
		TCWebApi_unset("Ddns_Entry54")
	end if

	if Request_Form("hDdnsEntry55") <> "-1" then
		TCWebApi_unset("Ddns_Entry55")
	end if
		if Request_Form("hDdnsEntry56") <> "-1" then
		TCWebApi_unset("Ddns_Entry56")
	end if
	
	if Request_Form("hDdnsEntry57") <> "-1" then
		TCWebApi_unset("Ddns_Entry57")
	end if
	
	if Request_Form("hDdnsEntry58") <> "-1" then
		TCWebApi_unset("Ddns_Entry58")
	end if

	if Request_Form("hDdnsEntry59") <> "-1" then
		TCWebApi_unset("Ddns_Entry59")
	end if

	if Request_Form("hDdnsEntry60") <> "-1" then
		TCWebApi_unset("Ddns_Entry60")
	end if

	if Request_Form("hDdnsEntry61") <> "-1" then
		TCWebApi_unset("Ddns_Entry61")
	end if

	if Request_Form("hDdnsEntry62") <> "-1" then
		TCWebApi_unset("Ddns_Entry62")
	end if

	if Request_Form("hDdnsEntry63") <> "-1" then
		TCWebApi_unset("Ddns_Entry63")
	end if

	TCWebApi_commit("Ddns_Entry")
	TCWebApi_save()
elseif Request_Form("DDNS_Flag") = "3" then
	TCWebApi_set("WebCurSet_Entry","ddns_id","Curddns_Flag")
	TCWebApi_set("Ddns_Common","CurIndex","Curddns_Flag")
	TCWebApi_commit("Ddns")
end if
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>DDNS Configuration</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>

<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>

<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>

<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000 
leftMargin=0 topMargin=0 
onload="DisplayLocation(getElement('Selected_Menu').value);FinishLoad();if(getElById('DdnsForm') != null)LoadFrame()" 
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
            <P align=right><FONT face=Arial color=#ffffff><B><FONT face=Arial 
            color=#ffffff size=6><INPUT id=Selected_Menu type=hidden 
            value="Application->DDNS" name=Selected_Menu> </FONT></B><SPAN 
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
      <SCRIPT language=JavaScript>
var IfaceNumber = 0;
var temp = 'InternetGatewayDevice.WANDevice.1.WANConnectionDevice.';
var prefixLength = temp.length;
function stWan(domain,Name,ServiceList)
{
this.domain = domain;
this.key = domain.substr(prefixLength);
this.InterfaceName = Name;
this.ServiceList = ServiceList;
}
var WanPPP = new Array(new stWan("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANPPPConnection.2","1_TR069_INTERNET_R_0_35","TR069_INTERNET"),null);
var WanIP = new Array(null);
var Wan = new Array();
for (j = 0; j < WanIP.length - 1; j++)
{
Wan[j] = WanIP[j];
}
for (k = 0; k < WanPPP.length - 1; k++,j++)
{
Wan[j] = WanPPP[k];
}
function stDDNS(domain,Enable,Provider,Username,Password,Port,Protocol,Server,DomainName,HostName)
{
this.domain = domain;
this.key = domain.substr(prefixLength);
this.Enable = Enable;
this.Provider = Provider;
this.Username = Username;
this.Password = Password;
this.Port = Port;
this.Protocol = Protocol;
this.Server = Server;
this.DomainName = DomainName;
this.InterfaceName = '';
this.HostName = HostName;
}
var WanPPPDDNS = 
new Array
(
null
);
var WanIPDDNS = 
new Array
(
null
);
var DDNS = new Array();
for (j = 0; j < WanPPPDDNS.length - 1; j++)
{
DDNS[j] = WanPPPDDNS[j];
}
for (k = 0; k < WanIPDDNS.length - 1; k++,j++)
{
DDNS[j] = WanIPDDNS[k];
}
AssociateParam('DDNS','Wan','InterfaceName');
function WriteOption()
{
var k;
for (k = 0; k < Wan.length; k++)
{
if (Wan[k].ServiceList != 'TR069')
{
document.write('<option value="' + Wan[k].domain + '">'
+ Wan[k].InterfaceName + '</option>');
}
}
}
function isTValidName(name) {
var i = 0;
var unsafeString = "\"<>%\\^[]`\+\$\,='#&:;*/{} \t";
for ( i = 0; i < name.length; i++ )
{
for( j = 0; j < unsafeString.length; j++)
if ( (name.charAt(i)) == unsafeString.charAt(j) )
return false;
}
return true;
}
function isValidHostName(name) {
var i = 0;
for ( i = 0; i < name.length; i++ )
{
if ((name.charAt(i) >= 'a' && name.charAt(i) <= 'z')
||(name.charAt(i) >= 'A' && name.charAt(i) <= 'Z')
||(name.charAt(i) >= '1' && name.charAt(i) <= '9')
||(name.charAt(i) == '-')
)
{
continue;
}
else
{
return false;
}
}
return true;
}
function btnAdd(place)
{
var loc = place + '?action=add';
with ( document.forms[0] )
{
loc += '&service=' + ispname[ispname.selectedIndex].value;
loc += '&iface=' + ifc[ifc.selectedIndex].value;
loc += '&hostname=' + domainname.value;
loc += '&username=' + username.value;
loc += '&password=' + password.value;
loc += '&domainname=' + domainname.value;
if (ispname.selectedIndex == 1)
{
loc += '&protocol=' + infoprotocol[infoprotocol.selectedIndex].value;
loc += '&serveraddr=' + infoserveraddress.value;
}
else
{
loc += '&protocol=' + 'GNUDip.http';
loc += '&serveraddr=' + 'ns.eagleeyes.com.cn';
}
}
var code = 'location="' + loc + '"';
eval(code);
}
function btnRemove()
{
	document.DdnsForm.DDNS_Flag.value = "2";
	document.DdnsForm.submit();
/*var rml = getElById('rml');
if (rml == null)
return;
var SubmitForm = new webSubmitForm();
with (document.forms[0])
{
if (rml.length > 0)
{
var i;
for (i = 0; i < rml.length; i++)
{
if (rml[i].checked == true)
{
SubmitForm.addParameter(rml[i].value,'');
}
}
}
else if (rml.checked == true)
{
SubmitForm.addParameter(rml.value,'');
}
}
SubmitForm.setAction('del.cgi?RequestFile=html/application/ddns.asp');
SubmitForm.submit();*/
}
function LoadFrame()
{
if (typeof(top.DDNSProvider) != 'undefined' && top.DDNSProvider != '')
setSelect('DDNSProviderType',top.DDNSProvider);
ISPChange();

	if ( 0 == IfaceNumber )
		setDisable('Add_Button', 1);
//document.DdnsForm.DDNS_Flag.value = "0";
}
function FindString(sourceStr, subStr)
{
	var i,j,k;
	var len;
	len = sourceStr.length;
	for(i = 0; i < len; i++)
	{
		if ( (i + subStr.length) > len )
		{
			return false;
		}
		if (sourceStr.charAt(i) != subStr.charAt(0) )
		{
			continue;
		}
		else
		{
			for (j = 0, k = i; j < subStr.length, k< (i + subStr.length); j++, k++ )
			{
				if ( (i + subStr.length) > len )
				{
					return false;
				}
				if( sourceStr.charAt(k) != subStr.charAt(j) )
				{
					break;
				}
			}
			if(k == ( i + subStr.length))
			{
				break;
			}
		}
	}
	return true;
}
function CheckForm()
{
if(DDNS.length >= 32)
{
alert('Can store up to 32 virtual host rules!');
return false;
}
with (getElById('DdnsForm'))
{
if(Interface.value == "")
{
alert("Interface can't be empty!");
return false;
}
var selObj = getElById("Interface");
var temp = selObj.options[selObj.selectedIndex].innerHTML;
if(FindString(temp , "_B_") ==  true)
{
alert("Interface type can't be bridge!");
return false;
}
if (DDNSHostName.value == "")
{
alert('the host name is incorrect.' );
return false;
}
if (isValidHostName(DDNSHostName.value) == false)
{
alert('Invalid hostname format.'  );
return false;
}
if (DDNSDomainName.value == "")
{
alert('The domain is incorrect.' );
return false;
}
if (isTValidName(DDNSDomainName.value) == false)
{
alert('Invalid domain format.' );
return false;
}
for (j = 0; j < DDNSDomainName.value.length; j++)
{
var dm = DDNSDomainName.value;
if (dm.charAt(j) == '.')
{
break;
}
}
if (j >= DDNSDomainName.value.length - 1 || j == 0)
{
alert('Invalid domain format.' );
return false;
}
for (i = 0; i < DDNS.length; i++)
{
if ( (DDNSDomainName.value == DDNS[i].DomainName) &&
(DDNSHostName.value == DDNS[i].HostName) )
{
alert('The same hostname and domain name already exits.' );
return false;
}
}
if (DDNSUsername.value == "")
{
alert('The username is incorrect.' );
return false;
}
if (isTValidName(DDNSUsername.value) == false)
{
alert('Invalid username format.' );
return false;
}
if (DDNSPassword.value == "")
{
alert('Password is incorrect.' );
return false;
}
if(DDNSServer.value == "")
{
alert("The address of the server can't be empty." );
return false;
}
if (isValidPort(ServicePort.value) == false)
{
alert(ServicePort.value + 'is a invalid port!');
return false;
}
}
return true;
}
function AddSubmitParam(SubmitForm)
{
var ProviderType = getSelectVal('DDNSProviderType');
if (ProviderType == 'China Telecom')
{
setText('DDNSProvider','China Telecom');
}else if(ProviderType == 'No-IP')
{
	setText('DDNSProvider','No-IP');
}else if(ProviderType == 'DynDNS')
{
	setText('DDNSProvider','DynDNS');

}else
{

}
setDisable('DDNSProviderType',1);
setDisable('Interface',1);
SubmitForm.addForm('DdnsForm','x');
var DomainPrefix = getSelectVal('Interface') + '.X_CT-COM_DDNSConfiguration';
SubmitForm.setAction('addcfg.cgi?x=' + DomainPrefix
+ '&RequestFile=html/application/ddns.asp');
top.DDNSProvider = ProviderType;
}
function ISPChange()
{
with (document.forms[0])
{
if (DDNSProviderType.value == 'China Telecom'||DDNSProviderType.value == 'No-IP'||DDNSProviderType.value =='DynDNS')
{
setDisplay('tr_ProviderName',0);
}
else
{
setDisplay('tr_ProviderName',1);
		setText('DDNSProvider','');
}
}
}
function interfaceChange()
{
	with (document.forms[0])
	{		
		var selObj = getElById("Interface");
		var temp = selObj.options[selObj.selectedIndex].id;
		Curddns_Flag.value = temp;
		DDNS_Flag.value = "3";
	}
	document.forms[0].submit();
}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>DDNS Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170 rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#DDNS" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
              </TBODY></TABLE>&nbsp; &nbsp; &nbsp;</TD></TR>
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
                  <FORM name="DdnsForm" action="/cgi-bin/app-ddns.asp" method="post">
                          <input type="hidden" name="DDNS_Flag" value="0">
                          <input type="hidden" name="ddns_Servername" value="China Telecom">
                          <input type="hidden" name="EnableDDNS_Flag" value="<% tcWebApi_get("Ddns_Entry","Active","s") %>">
                          <input type="hidden" name="Curddns_Flag" value="<% tcWebApi_get("Ddns_Common","CurIndex","s") %>">
                          <input type="hidden" name="delnum">
						  
                          <input type="hidden" name="hDdnsEntry0" value="-1">
                          <input type="hidden" name="hDdnsEntry1" value="-1">
                          <input type="hidden" name="hDdnsEntry2" value="-1">
                          <input type="hidden" name="hDdnsEntry3" value="-1">
                          <input type="hidden" name="hDdnsEntry4" value="-1">
                          <input type="hidden" name="hDdnsEntry5" value="-1">
                          <input type="hidden" name="hDdnsEntry6" value="-1">
                          <input type="hidden" name="hDdnsEntry7" value="-1">   						  
                          <input type="hidden" name="hDdnsEntry8" value="-1">
                          <input type="hidden" name="hDdnsEntry9" value="-1">
                          <input type="hidden" name="hDdnsEntry10" value="-1">
                          <input type="hidden" name="hDdnsEntry11" value="-1">
                          <input type="hidden" name="hDdnsEntry12" value="-1">
                          <input type="hidden" name="hDdnsEntry13" value="-1">
                          <input type="hidden" name="hDdnsEntry14" value="-1">
                          <input type="hidden" name="hDdnsEntry15" value="-1"> 					  						  
                          <input type="hidden" name="hDdnsEntry16" value="-1">
                          <input type="hidden" name="hDdnsEntry17" value="-1">
                          <input type="hidden" name="hDdnsEntry18" value="-1">
                          <input type="hidden" name="hDdnsEntry19" value="-1">
                          <input type="hidden" name="hDdnsEntry20" value="-1">
                          <input type="hidden" name="hDdnsEntry21" value="-1">
                          <input type="hidden" name="hDdnsEntry22" value="-1">
                          <input type="hidden" name="hDdnsEntry23" value="-1"> 					  						  
                          <input type="hidden" name="hDdnsEntry24" value="-1">
                          <input type="hidden" name="hDdnsEntry25" value="-1">
                          <input type="hidden" name="hDdnsEntry26" value="-1">
                          <input type="hidden" name="hDdnsEntry27" value="-1">
                          <input type="hidden" name="hDdnsEntry28" value="-1">
                          <input type="hidden" name="hDdnsEntry29" value="-1">
                          <input type="hidden" name="hDdnsEntry30" value="-1">
                          <input type="hidden" name="hDdnsEntry31" value="-1"> 			  						  
                          <input type="hidden" name="hDdnsEntry32" value="-1">
                          <input type="hidden" name="hDdnsEntry33" value="-1">
                          <input type="hidden" name="hDdnsEntry34" value="-1">
                          <input type="hidden" name="hDdnsEntry35" value="-1">
                          <input type="hidden" name="hDdnsEntry36" value="-1">
                          <input type="hidden" name="hDdnsEntry37" value="-1">
                          <input type="hidden" name="hDdnsEntry38" value="-1">
                          <input type="hidden" name="hDdnsEntry39" value="-1"> 			  						  
                          <input type="hidden" name="hDdnsEntry40" value="-1">
                          <input type="hidden" name="hDdnsEntry41" value="-1">
                          <input type="hidden" name="hDdnsEntry42" value="-1">
                          <input type="hidden" name="hDdnsEntry43" value="-1">
                          <input type="hidden" name="hDdnsEntry44" value="-1">
                          <input type="hidden" name="hDdnsEntry45" value="-1">
                          <input type="hidden" name="hDdnsEntry46" value="-1">
                          <input type="hidden" name="hDdnsEntry47" value="-1"> 					  						  
                          <input type="hidden" name="hDdnsEntry48" value="-1">
                          <input type="hidden" name="hDdnsEntry49" value="-1">
                          <input type="hidden" name="hDdnsEntry50" value="-1">
                          <input type="hidden" name="hDdnsEntry51" value="-1">
                          <input type="hidden" name="hDdnsEntry52" value="-1">
                          <input type="hidden" name="hDdnsEntry53" value="-1">
                          <input type="hidden" name="hDdnsEntry54" value="-1">
                          <input type="hidden" name="hDdnsEntry55" value="-1"> 			  						  
                          <input type="hidden" name="hDdnsEntry56" value="-1">
                          <input type="hidden" name="hDdnsEntry57" value="-1">
                          <input type="hidden" name="hDdnsEntry58" value="-1">
                          <input type="hidden" name="hDdnsEntry59" value="-1">
                          <input type="hidden" name="hDdnsEntry60" value="-1">
                          <input type="hidden" name="hDdnsEntry61" value="-1">
                          <input type="hidden" name="hDdnsEntry62" value="-1">
                          <input type="hidden" name="hDdnsEntry63" value="-1"> 
						  
                          <script language="JavaScript" type="text/JavaScript">

function	checkDdnsIdleEntry()
{
	var	nCurTemp = 0;
	var	DdnsActives = new Array(8);
	DdnsActives[0] = "<% tcWebApi_get("Ddns_Entry0","Active","s") %>";
	DdnsActives[1] = "<% tcWebApi_get("Ddns_Entry1","Active","s") %>";
	DdnsActives[2] = "<% tcWebApi_get("Ddns_Entry2","Active","s") %>";
	DdnsActives[3] = "<% tcWebApi_get("Ddns_Entry3","Active","s") %>";
	DdnsActives[4] = "<% tcWebApi_get("Ddns_Entry4","Active","s") %>";
	DdnsActives[5] = "<% tcWebApi_get("Ddns_Entry5","Active","s") %>";
	DdnsActives[6] = "<% tcWebApi_get("Ddns_Entry6","Active","s") %>";
	DdnsActives[7] = "<% tcWebApi_get("Ddns_Entry7","Active","s") %>";
	
	for(var i=0; i<8; i++)
	{
		if((DdnsActives[i] == "Yes") || (DdnsActives[i] == "No"))
		{
			nCurTemp++;
		}
		else break;
	}
	return nCurTemp;
}

function isValidDDNSProvider()
{
	var ddns_Provider = document.forms[0].DDNSProvider.value;
	var len = ddns_Provider.length;
	if(len!=0)
	{
			for ( var j = 0 ; j < len ; j++ )
			{
				var ch = ddns_Provider.charCodeAt(j)
				if(ch < 0 || ch > 255)
				{
					return false;
				}
			}
	}
	return true;
}

function btnSubmit()
{
	with (document.forms[0])
	{
		if (DDNSProviderType.value == 'China Telecom')
			ddns_Servername.value = "China Telecom";
	    else if(DDNSProviderType.value == 'DynDNS')
			ddns_Servername.value = "DynDNS";
		else if(DDNSProviderType.value == 'No-IP')
			ddns_Servername.value = "No-IP";
		else
		{
			if(isValidDDNSProvider()==false)
			{
				alert('The service provider name cannot contain Chinese!');
				return;
			}
			ddns_Servername.value = DDNSProvider.value;
		}
		
		if(DDNSCfgEnabled.checked)
			EnableDDNS_Flag.value = "Yes";
		else EnableDDNS_Flag.value = "No";
		var selObj = getElById("Interface");
		var temp = selObj.options[selObj.selectedIndex].id;
		Curddns_Flag.value = temp;
		DDNS_Flag.value = "1";
	}
	document.forms[0].submit();
	
}

function WriteWanNameSelected()
{
	var nEntryNum = <% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
	var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryName = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryValue = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryIndex = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var WANEnNAT = vArrayStr.split(',');
	var selObj = getElById("Interface");
	var Curddns_index = document.DdnsForm.Curddns_Flag.value;

	vEntryName = SortUtil.UpdateWanIFName( vEntryName, nEntryNum );
	
	vEntryValue = SortUtil.SortMyArray( vEntryValue );
	vEntryIndex = SortUtil.SortMyArray( vEntryIndex );

	for (i = 0; i < nEntryNum; i++)
	{
		if( ( vEntryName[i].indexOf('_INTERNET_') >= 0 || vEntryName[i].indexOf('OTHER') >= 0 )
			 && vEntryName[i].indexOf('_B_') < 0 )
		{
			IfaceNumber ++;
			if(vEntryIndex[i] == Curddns_index)
			{
				document.writeln("<option id=" + vEntryIndex[i] + " " + "value=" + vEntryValue[i] +" selected>" + vEntryName[i] + "</option>");
			}
			else
			{
				document.writeln("<option id=" + vEntryIndex[i] + " " + "value=" + vEntryValue[i] +">" + vEntryName[i] + "</option>");
			}
		}
	}
}

	  </script>
                          <BR>
                  <DIV id=ddns>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
			
                      <TD>Enable:</TD>
                      <TD><INPUT type=checkbox maxLength=32 <%if tcWebApi_get("Ddns_Entry","Active","h") = "Yes" then asp_Write("checked") end if%> name="DDNSCfgEnabled"> 
                  </TD></TR>
                      <TD width=120>ISP：</TD>
                      <TD><SELECT onchange=ISPChange() size=1 name="DDNSProviderType"> 
							<OPTION value="No-IP">No-IP</OPTION>
							<OPTION value="DynDNS" <%if tcWebApi_get("Ddns_Entry","DDNS_Name","h") = "N/A" then asp_Write("selected") end if %>>DynDNS</OPTION> 
							<OPTION value="TZO">TZO</OPTION>
							<OPTION value="Oray.com">Oray.com</OPTION>
							<OPTION value="Gnuip">Gnuip</OPTION>
					  <OPTION value="Other">Other</OPTION> 
					  </SELECT> </TD></TR>
                    <TR id=tr_ProviderName>
                      <TD width=120>ISP:</TD>
                      <TD><INPUT maxLength=63 name="DDNSProvider" value="<%if TCWebApi_get("Ddns_Entry","DDNS_Name","h" ) <> "N/A" then TCWebApi_get("Ddns_Entry","DDNS_Name","s" ) end if %>"> </TD></TR>
                    <TR id=ispinfoprotocol>
                      <TD>Protocol Type:</TD>
                      <TD><SELECT name="DDNSProtocol"> 
                          <OPTION value="GNUDip.http"
                        selected>GNUDip.http</OPTION></SELECT> </TD></TR>
                    <TR>
                      <TD>Server Address:</TD>
                      <TD><INPUT maxLength=63  value="<%if TCWebApi_get("Ddns_Entry","SERVERNAME","h" ) <> "N/A" then TCWebApi_get("Ddns_Entry","SERVERNAME","s" ) elseif tcWebApi_get("Ddns_Entry","SERVERNAME","h") = "N/A" then asp_Write("") end if  %>"
                        name="DDNSServer"> </TD></TR>
                    <TR>
                      <TD>Server Port:</TD>
                      <TD><INPUT maxLength=63 name="ServicePort" value="<%if TCWebApi_get("Ddns_Entry","SERVICEPORT","h" ) <> "N/A" then TCWebApi_get("Ddns_Entry","SERVICEPORT","s" ) end if %>"> </TD></TR>
                    <TR>
                      <TD width=120>Wan Interface:</TD>
                      <TD><SELECT size=1 name="Interface" onchange=interfaceChange()> 
                              <script language="JavaScript" type="text/javascript">
								WriteWanNameSelected();
							  
							</script>
                        </SELECT> </TD></TR>
                    <TR>
                      <TD width=120>Host Name:</TD>
                      <TD><INPUT maxLength=32 name="DDNSHostName" value="<%if TCWebApi_get("Ddns_Entry","MYHOST","h" ) <> "N/A" then TCWebApi_get("Ddns_Entry","MYHOST","s" ) end if %>"></TD></TR>
                    <TR>
                      <TD width=120>Domain:</TD>
                      <TD><INPUT maxLength=32 name="DDNSDomainName" value="<%if TCWebApi_get("Ddns_Entry","DDNS_Domain","h" ) <> "N/A" then TCWebApi_get("Ddns_Entry","DDNS_Domain","s" ) end if %>"></TD></TR>
                    <TR>
                      <TD>Username:</TD>
                      <TD><INPUT maxLength=32 name="DDNSUsername" value="<%if TCWebApi_get("Ddns_Entry","USERNAME","h" ) <> "N/A" then TCWebApi_get("Ddns_Entry","USERNAME","s" ) end if %>"></TD></TR>
                    <TR>
                      <TD>Password:</TD>
                      <TD><INPUT  type=DDNSPassword maxLength=32 name="DDNSPassword" value="<%if TCWebApi_get("Ddns_Entry","PASSWORD","h" ) <> "N/A" then TCWebApi_get("Ddns_Entry","PASSWORD","s" ) end if %>"> </TD></TR>
                 <!-- 
				  <TR>
                      <TD>Enable:</TD>
                      <TD><INPUT type=checkbox maxLength=32 <%if tcWebApi_get("WebCustom_Entry","isCTSCSupported","h") <> "Yes" then asp_Write("checked") end if%> name="DDNSCfgEnabled"> 
                  </TD></TR>
				  -->
				  
				  </TBODY></TABLE></DIV></FORM><LEFT><INPUT id='Add_Button' onclick="btnSubmit()" type=button value=Add name='Add_Button'> 
                  </LEFT><BR><BR>
                  <DIV id=ddnsInfo>
					<iframe src="/cgi-bin/app_ddnslist.cgi" frameborder="0" width="100%" ></iframe>
					<BR><BR><BR>
					<LEFT><INPUT id=Remove_Button onclick="btnRemove()" type=button value=Delete name=button> 
                  </LEFT></DIV>
                  <P></P></TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
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
          <TD width=393 bgColor=#ffffff><!-- InstanceEndEditable --></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
