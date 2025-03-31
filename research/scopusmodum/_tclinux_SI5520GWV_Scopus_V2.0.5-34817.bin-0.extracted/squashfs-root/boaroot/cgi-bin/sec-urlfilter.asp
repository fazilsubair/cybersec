<%
if Request_Form("Save_Flag") = "1" then
	TCWebApi_set("UrlFilter_Common","Action","Actionflag")
	TCWebApi_set("WebCurSet_Entry","url_filter_id","add_num")
	TCWebApi_set("UrlFilter_Entry","Activate","EnableUrlFilterFlag")
	TCWebApi_set("UrlFilter_Entry","URL","urlitem")
	
	TCWebApi_commit("UrlFilter")
	TCWebApi_save()
elseif Request_Form("Save_Flag") ="2" then
	TCWebApi_set("UrlFilter_Common","Action","Actionflag")
	TCWebApi_set("UrlFilter_Common","Activate","EnableUrlFilterFlag")
	TCWebApi_commit("UrlFilter")
	TCWebApi_save()
elseif Request_Form("Save_Flag") = "3" then
	TCWebApi_set("UrlFilter_Common","Action","Actionflag")
	TCWebApi_set("UrlFilter_Common","DeleteIndex","delnum")
	TCWebApi_commit("UrlFilter")
	TCWebApi_save()
elseif Request_Form("Save_Flag") = "4" then
	TCWebApi_set("UrlFilter_Common","Action","Actionflag")
	TCWebApi_set("UrlFilter_Common","Filter_Policy","FilterPolicy")
	TCWebApi_commit("UrlFilter")
	TCWebApi_save()
end if
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>URL Filter</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>

<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>

<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000 
leftMargin=0 topMargin=0 
onload="DisplayLocation(getElement('Selected_Menu').value);FinishLoad();if(getElById('UrlFilterForm') != null)LoadFrame()" 
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
            value="Security->URL Filter" name=Selected_Menu> </FONT></B><SPAN 
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
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>URL Filter Settings</P></TD>
          <TD width=7 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170 
          rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#URLFilter" 
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
            <FORM name="UrlFilterForm" action="/cgi-bin/sec-urlfilter.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                        
                        <TD> <P> 
                            <input type="hidden" name="Save_Flag" value="0">
                            <input type="hidden" name="Actionflag" value="Del">
                            <input type="hidden" name="EnableUrlFilterFlag" value="<% tcWebApi_get("UrlFilter_Common","Activate","s") %>">
                            <input type="hidden" name="delnum" value="">
                            <input type="hidden" name="add_num" value="<% tcWebApi_get("UrlFilter","add_num","s") %>">
                            <input type="hidden" name="Url_num" value="<% tcWebApi_get("UrlFilter","Url_num","s") %>">
                            <script language="JavaScript" type="text/JavaScript">
var urlfltpolicy = "<% tcWebApi_get("UrlFilter_Common","Filter_Policy","s") %>";
var enbl = "<% tcWebApi_get("UrlFilter_Common","Activate","s") %>";
var urllistIndex = 0;
var urllist = new Array();
var state = enbl;
function isValidUrlName(url)
{
var i=0;
var invalidArray = new Array();
invalidArray[i++] = "www";
invalidArray[i++] = "com";
invalidArray[i++] = "org";
invalidArray[i++] = "net";
invalidArray[i++] = "edu";
invalidArray[i++] = "www.";
invalidArray[i++] = ".com";
invalidArray[i++] = ".org";
invalidArray[i++] = ".net";
invalidArray[i++] = ".edu";
if (isValidAscii(url) != '')
{
return false;
}
for (i = 0; i < url.length; i++)
{
if (url.charAt(i) == '\\')
{
return false;
}
}
if (url == "")
{
return false;
}
if (url.length < 3)
{
return false;
}
for(j=0; j< invalidArray.length; j++)
{
if (url == invalidArray[j])
{
return false;
}
}
return true;
}
function btnAdd()
{
//var SubmitForm = new webSubmitForm();
	with ( document.forms[0] )
	{
		if(Url_num.value >= 100)
		{
			alert("Setting up to record 100!")
			return;
		}
		if (urlitem.value.length > 31)
		{
			alert("The length of URL can not be greater than 31 characters!")
			return;
		}
		if(isValidUrlName(urlitem.value) == false)
		{
			alert("Invalid URL format, please re-enter.")
			return;
		}
		var str = urlitem.value;
		var i;
		if (-1 != (i = str.indexOf("http")))
		{
			if(-1 != str.indexOf("https"))
				str = str.substring(i+8);
			else str = str.substring(i+7);
		}
		urlitem.value = str;
		for(k = 0; k < urllistIndex; k++)
		{
			if(urllist[k].UrlPath.toLowerCase() == str.toLowerCase())
			{
				alert("The same URL filter rule has already existed!");
				return;
			}
		}
//SubmitForm.addParameter('x.Url',str);
		
	}
//SubmitForm.setAction('addcfg.cgi?x=InternetGatewayDevice.X_ATP_Security.UrlFilter&'
//+ 'RequestFile=html/security/urlfilter.asp');
//SubmitForm.submit();
	var	vForm = document.forms[0];
	vForm.Actionflag.value = "Add";
	vForm.Save_Flag.value = "1";
	vForm.submit();

}
function btnRemove(rml)
{
	/*if (rml == null)
	{
		alert("rml is null")
		return;
	}
	//var SubmitForm = new webSubmitForm();
	with (document.forms[0])
	{
		if (rml.length > 0)
		{
			var i;
			for (i = 0; i < rml.length; i++)
			{
				if (rml[i].checked == true)
				{
					//SubmitForm.addParameter(rml[i].value,'');
					curUrlfilter.value = rml[i].value - 1;
				}
			}
		}
		else if (rml.checked == true)
		{
			//SubmitForm.addParameter(rml.value,'');
			curUrlfilter.value = rml[i].value - 1;
		}
	}*/
	//SubmitForm.setAction('del.cgi?RequestFile=html/security/urlfilter.asp');
	//SubmitForm.submit();
	
	document.UrlFilterForm.Actionflag.value = "Del";
	document.UrlFilterForm.Save_Flag.value = "3";
	document.UrlFilterForm.submit();
}
function LoadFrame()
{
	var vForm = document.UrlFilterForm;
	vForm.Save_Flag.value = "0";
	vForm.delnum.value = "";
	setCheck('enableFilter',enbl);
//setRadio('FilterPolicy',urlfltpolicy);
}
function SubmitForm()
{
/*var SubmitForm = new webSubmitForm();
if (state == "0" && getCheckVal("enableFilter") == 1)
{
SubmitForm.addParameter('InternetGatewayDevice.X_ATP_Security.X_ATP_UrlFilterEnabled',1);
}
if (state == "1" && getCheckVal("enableFilter") == 0)
{
SubmitForm.addParameter('InternetGatewayDevice.X_ATP_Security.X_ATP_UrlFilterEnabled',0);
}
SubmitForm.setAction('set.cgi?RequestFile=html/security/urlfilter.asp');
SubmitForm.submit();*/
	var vForm = document.UrlFilterForm;
	vForm.Save_Flag.value = "2";
	document.UrlFilterForm.Actionflag.value = "Status";
	if(vForm.enableFilter.checked)
		vForm.EnableUrlFilterFlag.value = "1";
	else vForm.EnableUrlFilterFlag.value = "0";
	vForm.submit();
	
}
function cliEnableBox(checkBox)
{
	if (checkBox.checked == true)
	{
		if (document.UrlFilterForm.EnableUrlFilterFlag.value == "1")
			setDisplay("Filter",1);
	}
	else
	{
		setDisplay("Filter",0);
	}
}
function ChangePolicy()
{
	if (urlfltpolicy == getRadioVal('FilterPolicy'))
		return;
	//var Form = new webSubmitForm();
	var FilterMode = getElById("FilterPolicy");
	if (FilterMode[0].checked == true)
	{
		if (confirm("Changing the filter mode will switch all the filter rules, are you sure to change the filter mode to Blacklist?"))
		{
			//state = false;
			//Form.addParameter('InternetGatewayDevice.X_ATP_Security.X_ATP_UrlFilterPolicy',0);
				document.UrlFilterForm.Actionflag.value = "Filter";
				document.UrlFilterForm.Save_Flag.value = "4";
				document.UrlFilterForm.submit();
		}
		else
		{
			FilterMode[0].checked = false;
			FilterMode[1].checked = true;
			return;
		}
	}
	else if (FilterMode[1].checked == true )
	{
		if (confirm("Changing the filter mode will switch all the filter rules, are you sure to change the filter mode to Whitelist?"))
		{
			//state = true;
			//Form.addParameter('InternetGatewayDevice.X_ATP_Security.X_ATP_UrlFilterPolicy',1);
				document.UrlFilterForm.Actionflag.value = "Filter";
				document.UrlFilterForm.Save_Flag.value = "4";
				document.UrlFilterForm.submit();
		}
		else
		{
			FilterMode[0].checked = true;
			FilterMode[1].checked = false;
			return;
		}
	}
	//Form.setAction('set.cgi?RequestFile=html/security/urlfilter.asp');
	//Form.submit();
}

							</script>
                            <BR>
                          <TABLE>
                    <TBODY>
                    <TR>
                      <TD>Enable: </TD>
                      <TD>&nbsp;&nbsp; <INPUT id=enableFilter onclick="cliEnableBox(this)" type=checkbox name="enableFilter" <%if tcWebApi_get("UrlFilter_Common","Activate","h") = "1" then asp_Write("checked") end if%>> </TD></TR></TBODY></TABLE>
                  <DIV id=Filter>Setting URL filter mode and filter lists. (Can be set to 100)<BR>Click "Change Mode" button to change the URL filter mode;<BR>Click the "Add" button to add a URL to the corresponding URL list; click "Delete" button to delete a URL,<BR>
                            URL do not start with prefix http: // or https: //, URL can not be longer than 31 characters. <BR>
                  <SCRIPT language=JavaScript type=text/javascript>
				  setDisplay('Filter',enbl);
if(urlfltpolicy == "0")
{
document.write('Current filter list is:<B>Blacklist</B>\n');
}
else
{
document.write('Current filter list is:<B>Whitelist</B><BR>\n');
document.write('<font color="#FF0000">Tip: The URL you fills will matches exactly with the one you visit</font>');
}
</SCRIPT>
                  <BR><BR>Filter Policy <INPUT id=FilterPolicy onclick="ChangePolicy()" type=radio value="0" name="FilterPolicy" <%if tcWebApi_get("UrlFilter_Common","Filter_Policy","h") = "0" then asp_Write("checked")  end if%>>Blacklist 
				  <INPUT id=FilterPolicy onclick="ChangePolicy()" type=radio value="1" name="FilterPolicy" <%if tcWebApi_get("UrlFilter_Common","Filter_Policy","h") = "1" then asp_Write("checked") end if%>>Whitelist
				  <BR><BR><BR>
                  <DIV id=dnsdomain>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=60>URL:</TD>
                      <TD width=100>
					  <INPUT onkeydown="if(event.keyCode==13)return false" maxLength=31 size=30 name="urlitem">
					  </TD>
                      <TD align=middle width=70><INPUT onclick="btnAdd()" type=button value=" Add "> 
                      </TD></TR></TBODY></TABLE></DIV><BR><BR>
					<% if tcWebApi_get("UrlFilter_Common","Activate","h") = "1" then %>
                  <DIV id=ddnsInfo>
				  <iframe src="/cgi-bin/sec_urlfilterlist.cgi" frameborder="0" width="350"></iframe>
                  </DIV>
					<% end if %>
					<BR><INPUT onclick='btnRemove(this.form.rml)' type=button value=" Delete "> 
                  </DIV>
                  </TD>
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
            <P align=center><INPUT type=button value="Apply" id=btnOK onclick="SubmitForm()" height=23 
            width=80 border=0>&nbsp;&nbsp;<INPUT type=button value="Cancel" 
            id=btnCancel onclick="RefreshPage()" height=23 
            width=80 border=0> </P></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
