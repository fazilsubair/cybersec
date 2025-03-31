<%
If Request_Form("ACL_Flag") = "2" Then 
	TCWebApi_set("WebCurSet_Entry","acl_id","ACLCurIndex")
	TCWebApi_set("ACL_Entry","Activate","EntrySW")
	TCWebApi_set("ACL_Entry","Interface","InterfaceChoose")
	TCWebApi_set("ACL_Entry","ScrIPAddrBegin","startIPs")	
	TCWebApi_set("ACL_Entry","ScrIPAddrEnd","endIPs")	
	TCWebApi_set("ACL_Entry","Action","ACLMode")	
	TCWebApi_set("ACL_Entry","Application","ACLAppSel")
	if Request_Form("ACLIFName_Flag") = "1" then
		TCWebApi_set("ACL_Entry","IFName","ACLIFName")
	end if
	TCWebApi_commit("ACL_Entry")
	tcWebApi_save()
elseif Request_Form("ACL_Flag") = "3" then
	TCWebApi_set("WebCurSet_Entry","acl_id","ACLCurIndex")
	if Request_Form("ACLEntry0") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry0")
			TCWebApi_unset("ACL_Entry")		
	end if
	if Request_Form("ACLEntry1") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry1")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry2") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry2")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry3") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry3")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry4") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry4")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry5") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry5")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry6") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry6")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry7") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry7")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry8") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry8")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry9") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry9")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry10") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry10")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry11") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry11")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry12") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry12")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry13") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry13")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry14") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry14")
			TCWebApi_unset("ACL_Entry")	
	end if
	if Request_Form("ACLEntry15") <> "99" then
		TCWebApi_set("WebCurSet_Entry","acl_id","ACLEntry15")
			TCWebApi_unset("ACL_Entry")	
	end if
	TCWebApi_commit("ACL_Entry")
	tcWebApi_save()
End If
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Access Control</TITLE>
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
            value="Security->Access Control" name=Selected_Menu> </FONT></B><SPAN 
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
			MakeMenu(getElById('Selected_Menu').value);
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
var signal = "<% tcWebApi_get("WebCurSet_Entry","CurPage","s") %>";

var kArrayStr = "<% tcWebApi_get("ACL_Common","IdleEntryIndex","s") %>";
var kIdleEnryIndex = kArrayStr.split(',');

kArrayStr = "<% tcWebApi_get("ACL_Common","UsrKeyword","s") %>";
var kUsrKeyword = kArrayStr.split(',');

var aclIndex = 0;
var aclRule = new Array();

var nEntryNum = "<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>";
var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
var vEntryName = vArrayStr.replace(/OTHER/g, 'IPTV').split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
var vEntryValue = vArrayStr.split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
var vEntryIndex = vArrayStr.split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
var vNasName = vArrayStr.split(',');

//sort
vEntryName = SortUtil.UpdateWanIFName( vEntryName, nEntryNum );
vEntryValue = SortUtil.SortMyArray( vEntryValue );		
vEntryIndex = SortUtil.SortMyArray( vEntryIndex );	
vNasName = SortUtil.SortMyArray( vNasName );			
			
var AclIFName = "<% tcWebApi_get("ACL_Entry","IFName","s") %>";			
function listCreate()
{
	for (i = 0; i < nEntryNum; i++)
	{
		if(vEntryName[i].indexOf('_R_') > 0)
		{
			if(vNasName[i] == AclIFName)
			{
				document.write('<option value=' + vEntryValue[i] + ' selected>'	+ vEntryName[i] + '</option>');
			}
			else
			{
				document.write('<option value=' + vEntryValue[i] + '>'	+ vEntryName[i] + '</option>');
			}
		}
		if(i == (nEntryNum - 1))
		{
			if(AclIFName == 'ALL' || AclIFName == 'N/A')
			{
				document.write('<option value=ALL selected>ALL</option>');
			}
			else
			{
				document.write('<option value=ALL>ALL</option>');
			}
		}
	}
}

function LoadFrame()
{	
	/*var keywordEnb = "<% tcWebApi_get("ACL_Common","Enable","s") %>";
	if ("Yes" == keywordEnb) {
		setDisplay('keyWord', 1);
		setDisplay('keywordUsrInfo', 1);
		setDisplay('keywordDel', 1);	
	} else {
		setDisplay('keyWord', 0);
		setDisplay('keywordUsrInfo', 0);
		setDisplay('keywordDel', 0);
	}*/
	//var aclMode = "<% tcWebApi_get("ACL_Entry","Action","s") %>";
	var aclEnb = "<% tcWebApi_get("ACL_Entry","Activate","s") %>";
	
	//setSelect('ACLAction', aclMode);
	
	if ('Yes' == aclEnb) {
		setCheck('addActive', 1);
	} else if ('No' == aclEnb) {
		setCheck('addActive', 0);
	}
	InterfaceChange();
}	

function isEqualIPAddressSubnet(addr1,addr2,mask){ 
	if(!addr1 || !addr2 || !mask){ 
		//console.log("plz input parameter"); 
		return false; 
	} 
	var  res1 = [],  res2 = []; 
	addr1 = addr1.split("."); 
	addr2 = addr2.split("."); 
	mask = mask.split("."); 
	
	for(var i = 0,ilen = addr1.length; i < ilen ; i += 1){ 
		res1.push(parseInt(addr1[i]) & parseInt(mask[i])); 
		res2.push(parseInt(addr2[i]) & parseInt(mask[i])); 
	} 
	
	if(res1.join(".") == res2.join(".")){ 
		//console.log("in the same subnet"); 
		return true; 
	}else{ 
		//console.log("not in the same subnet"); 
		return false; 
	} 
} 

function isValidIpAddressRange(EndIp, StartIp)
{
   addrEnd = EndIp.split('.');
   addrStart = StartIp.split('.');
   End = parseInt(addrEnd[3]) + 1;
   Start = parseInt(addrStart[3]) + 1;
   if (End < Start) 
      return false;
   return true;
}

function isNetIpAddress(address)
{
    if (isValidIpAddress(address) == false)
    {
        return false;
    }
	
	var addrParts = address.split('.');
	var num = 0;
		
	num = parseInt(addrParts[3]);
	if (num == 0 || num == 255)
	{   
		return false;
	}    
	return true;
}

function CheckForm()
{		
	var noCheckStartIP = 0;
	var noCheckEndIP = 0;
	var aclMode = getSelectVal('ACLAction');
	
	if ('deny' == aclMode)
		setText('ACLMode', 'reject');
	else if ('permit' == aclMode)
		setText('ACLMode', 'permit');
	for(var i=0;i< aclIndex;i++)
	{
		/*
		if (document.ConfigForm.Name.value == portFilterIn[i].IPName)
		{
			alert("The same filter name already exists!");
			return false;
		}*/

		if (document.ConfigForm.EntrySW.value == aclRule[i].enb &&
			document.ConfigForm.InterfaceChoose.value == aclRule[i].interface &&
			document.ConfigForm.startIPs.value == aclRule[i].srcIP &&
			document.ConfigForm.endIPs.value == aclRule[i].endIP &&		
			document.ConfigForm.ACLMode.value == aclRule[i].action &&
			document.ConfigForm.ACLAppSel.value == aclRule[i].app &&
			document.ConfigForm.ACLIFName.value == aclRule[i].ifName)
		{
			alert("The same filter rule has already been existed!");
			return false;
		}
	}
	
	var aclApp=getValue('ACLAppSel');
	if ('0' == aclApp) {
		alert('Plz select a service');
		return false;
	}	
	var http_value = getBit(parseInt(aclApp), 0);
	var interface_value = document.ConfigForm.InterfaceChoose.value;
	var entry_active = document.ConfigForm.EntrySW.value;
	if ('deny' == aclMode && http_value == 1 && entry_active == "Yes" && (interface_value == "Lan" || interface_value == "Both" ))
	{
		if(false == confirm("Deny http would make you unable to login on web, Are you sure to continue"))
			return false;
	}
	
	else if ('permit' == aclMode && http_value == 0)
	{
		if(false == confirm("Not permit http would make you unable to login on web, Are you sure to continue"))
			return false;
	}
	if ('0.0.0.0' == document.ConfigForm.startIPs.value)
		noCheckStartIP = 1;
		
	if ('0.0.0.0' == document.ConfigForm.endIPs.value)
		noCheckEndIP = 1;
	/*if ('0.0.0.0' == document.ConfigForm.startIPs.value || '0.0.0.0' == document.ConfigForm.endIPs.value)
		return true;*/

	if (!noCheckStartIP && isNetIpAddress(document.ConfigForm.startIPs.value) == false)
	{
		alert('Address "' + document.ConfigForm.startIPs.value + '"is invalid.');
		return false;
	}
	
	if (!noCheckEndIP && isNetIpAddress(document.ConfigForm.endIPs.value) == false)
	{
		alert('Address "' + document.ConfigForm.endIPs.value + '"is invalid.');
		return false;
	}
	
	if ((!noCheckEndIP || !noCheckStartIP) && isValidIpAddressRange(document.ConfigForm.endIPs.value, document.ConfigForm.startIPs.value) == false)
	{
		alert('Address "' + document.ConfigForm.startIPs.value + '"cannot be greater than End Source IP Address.');
		return false;
	}	
	
	if ((!noCheckEndIP || !noCheckStartIP) && isEqualIPAddressSubnet(document.ConfigForm.endIPs.value, document.ConfigForm.startIPs.value, '255.255.255.0') == false)
	{
		alert('Pls confirm the ips are in the same subnet');
		return false;
	}	
	
	/*if (getCheckVal('addHTTP') && getSelectVal('InterfaceChoose') && getSelectVal('ACLAction')) {
		if(!confirm('This'))
			return false;
	}*/

	
	return true;
}

function btnSubmit()
{
	document.ConfigForm.ACL_Flag.value = "1";
	document.ConfigForm.submit();
}

function setACLSwitch(iMode)
{
	switch (iMode) {
	case 0:
		//getCheckVal('ACLSwitch')?setText('ACLActive','Yes'):setText('ACLActive','No');
		if (getCheckVal('ACLSwitch')) {
			setText('ACLActive','Yes');
			//showAcls(1);
		} else {		
			setText('ACLActive','No');
			//showAcls(0);
		}
		break;
	case 1:
		getCheckVal('ACLEntrySwitch')?setText('EntrySW','Yes'):setText('EntrySW','No');
		break;
	default:
		break;
	}

	/*var Form = document.ConfigForm;
	if(Form.ACLSwitch.checked) {
		alert('Yes');
		Form.ACLActive.value = "Yes";
		setDisplay('keyWord', 1);
		setDisplay('keywordUsrInfo', 1);
		setDisplay('keywordDel', 1);	
	} else {
		alert('No');
		Form.ACLActive.value = "No";
		setDisplay('keyWord', 0);
		setDisplay('keywordUsrInfo', 0);
		setDisplay('keywordDel', 0);
	}*/
}

function addNewACLRule()
{
	var xmlhttp;
	var cmd = '/cgi-bin/tcApi.cgi?cmd=acl';
	var aclNum = "<% tcWebApi_get("ACL_Common","totalNum","s") %>";
	
	if ('16' == aclNum) {
		alert('Support up to 16 ACL Rules');
		return
	}
	
	if (window.XMLHttpRequest)
	{
	// IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		xmlhttp=new XMLHttpRequest();
	}
	else
	{
	// IE6, IE5 浏览器执行代码
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}

	xmlhttp.onreadystatechange=function()
	{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var kArrayStr=String(xmlhttp.responseText);
				var kIdleEnryIndex = kArrayStr.split(',');
				if (0 < kIdleEnryIndex.length && "" != kIdleEnryIndex[0]) {
					setText('ACLCurIndex', kIdleEnryIndex[0]);
				} else{

					setText('ACLCurIndex', '0');
				}
				document.ConfigForm.ACL_Flag.value = "2";		
				document.ConfigForm.submit();
			}
	}

	xmlhttp.open('GET',cmd,true);
	xmlhttp.send();
}

function ACLBtnEdit()
{
//panxd
	if(false == CheckForm())
		return false;
		
	document.ConfigForm.ACL_Flag.value = "2";		
	document.ConfigForm.submit();
	//addNewACLRule();
}
// 32 16 8 4 2 1
// 1   1 1 1 1 1
//获取某位的值
function getBit(val,bit){
    /*1 return true; 0 return false*/
    return ((val & (0x1 << bit)) >> bit)==1;
}
//设置位
function setBit(val,bit){
	val=parseInt(val) | (0x1 << bit)
	//alert('text' + val);
    return val;
}
//清除位
function clearBit(val,bit){
    var a=255;
    for(var i=0;i<=bit;i++){
        a=a<<1;
        if(i>0)a++;
    }
    return val & a;
}

function InterfaceChange()
{
	var interface_value = document.ConfigForm.InterfaceChoose.value;
	if(interface_value == "Wan" || interface_value == "Both")
	{
		setDisplay('wanInterface',1);
		document.ConfigForm.ACLIFName_Flag.value = "1";
		wannterfaceChange();
	}
	else
	{
		setDisplay('wanInterface',0);
		document.ConfigForm.ACLIFName_Flag.value = "0";
	}
	
}

function wannterfaceChange()
{
	var index = document.ConfigForm.wanInterface.selectedIndex
	if(index < nEntryNum)
	{
		document.ConfigForm.ACLIFName.value = vNasName[index];
	}
	else
	{
		document.ConfigForm.ACLIFName.value = "ALL";
	}
}

function initSetApp()
{
	var appType = "<% tcWebApi_get("ACL_Entry","Application","s") %>";

	getBit(parseInt(appType), 0)?setCheck('addHTTP','1'):setCheck('addHTTP','0');
	getBit(parseInt(appType), 1)?setCheck('addFTP','1'):setCheck('addFTP','0');
	getBit(parseInt(appType), 2)?setCheck('addSSH','1'):setCheck('addSSH','0');
	getBit(parseInt(appType), 3)?setCheck('addTELNET','1'):setCheck('addTELNET','0');
	getBit(parseInt(appType), 4)?setCheck('addHTTPS','1'):setCheck('addHTTPS','0');
	for (var i=0;i < 5;i++) {
		addApp(i);
	}
}

function addApp(appType)
{
	var aclApp=getValue('ACLAppSel');
	//alert('ori data' + aclApp);
	switch (appType) {
	case 0:
		getCheckVal('addHTTP')?aclApp=setBit(aclApp,0):aclApp=clearBit(aclApp,0);
		break;
	case 1:
		getCheckVal('addFTP')?aclApp=setBit(aclApp,1):aclApp=clearBit(aclApp,1);
		break;
	case 2:
		getCheckVal('addSSH')?aclApp=setBit(aclApp,2):aclApp=clearBit(aclApp,2);
		break;
	case 3:
		getCheckVal('addTELNET')?aclApp=setBit(aclApp,3):aclApp=clearBit(aclApp,3);
		break;
	case 4:
		getCheckVal('addHTTPS')?aclApp=setBit(aclApp,4):aclApp=clearBit(aclApp,4);
		break;
	}
	setText('ACLAppSel',aclApp);
}

function OnBack()
{
	location.replace('/cgi-bin/sec-addacl.asp');
}

function ACLBtnDel()
{
	document.ConfigForm.ACL_Flag.value = "3";
	document.ConfigForm.submit();
}

function showAcls(iMode)
{
	if (1 == iMode) {
		setDisplay('addActive',1);
		setDisplay('addInterface',1);
		setDisplay('startIP',1);
		setDisplay('endIP',1);
		setDisplay('targetj',1);
		setDisplay('appj',1);
	} else if (0 == iMode) {
		setDisplay('addActive',0);
		setDisplay('addInterface',0);
		setDisplay('startIP',0);
		setDisplay('endIP',0);
		setDisplay('targetj',0);
		setDisplay('appj',0);
	}
}

</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>ACL Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674></TD>
          <TD vAlign=top width=170 
          rowSpan=5>
		    <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#acl" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
              </TBODY></TABLE>
          </TD>
		                
           
		   </TR>

        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <FORM id=ConfigForm name="ConfigForm" action="/cgi-bin/sec-addacl.asp" method="post">
                  <DIV id=secACL>
					<input type="hidden" name="ACL_Flag" value="0">
					<input type="hidden" name="ACLEntry0" value="99">
					<input type="hidden" name="ACLEntry1" value="99">
					<input type="hidden" name="ACLEntry2" value="99">
					<input type="hidden" name="ACLEntry3" value="99">
					<input type="hidden" name="ACLEntry4" value="99">
					<input type="hidden" name="ACLEntry5" value="99">
					<input type="hidden" name="ACLEntry6" value="99">
					<input type="hidden" name="ACLEntry7" value="99">
					<input type="hidden" name="ACLEntry8" value="99">
					<input type="hidden" name="ACLEntry9" value="99">
					<input type="hidden" name="ACLEntry10" value="99">
					<input type="hidden" name="ACLEntry11" value="99">
					<input type="hidden" name="ACLEntry12" value="99">
					<input type="hidden" name="ACLEntry13" value="99">
					<input type="hidden" name="ACLEntry14" value="99">
					<input type="hidden" name="ACLEntry15" value="99">
					<input type="hidden" name="ACLCurIndex" value="<% If TCWebApi_get("WebCurSet_Entry","acl_id","h") <> "N/A" then TCWebApi_get("WebCurSet_Entry","acl_id","s") else asp_write("0") end if%>">
					<input type="hidden" name="ACLAppSel" value="0">
					<input type="hidden" name="ACLMode" value="0">
					<input type="hidden" name="ACLIFName" value="No">
					<input type="hidden" name="ACLIFName_Flag" value="0">
					<INPUT TYPE="HIDDEN" NAME="EntrySW"  id="EntrySW" VALUE="<% If TCWebApi_get("ACL_Entry","Activate","h") <> "N/A" then TCWebApi_get("ACL_Entry","Activate","s") else asp_write("0") end if%>" >
                  <TABLE width=500 cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
					<tr>
						<td width="30%">&nbsp;</td></tr>
					<tr id=addActive>
						<td width="30%" >Enable:</td>
						<td width="70%" ><INPUT id="ACLEntrySwitch" onclick="setACLSwitch(1)" type="checkbox" name="ACLEntrySwitch" <%if tcWebApi_get("ACL_Entry","Activate","h") = "Yes" then asp_Write("checked") end if%>></td></tr>
					<TR id=addInterface>
						<TD width="30%">Interface:</TD><TD colspan='2'>
						<SELECT onchange=InterfaceChange() size=1 name="InterfaceChoose">
						<OPTION <%if tcWebApi_get("ACL_Entry","Interface","h") = "Lan" then asp_Write("selected") end if%>>Lan</OPTION>
						<OPTION <%if tcWebApi_get("ACL_Entry","Interface","h") = "Wan" then asp_Write("selected") end if%>>Wan</OPTION>
						<OPTION <%if tcWebApi_get("ACL_Entry","Interface","h") = "Both" then asp_Write("selected") end if%>>Both</OPTION>
						<!--<OPTION>Both</OPTION>--></SELECT>
						&nbsp;&nbsp;
						<SELECT id="wanInterface" onchange=wannterfaceChange() size="1" name="wanInterface" >
						<SCRIPT language=javascript>
						  	listCreate();
						</SCRIPT>
						</TD></TR>
					<TR id=startIP>
						<TD width="30%">Start IP:</TD><TD colspan='2'><INPUT id=startIPs maxLength=35 size=15 name=startIPs value="<% If TCWebApi_get("ACL_Entry","ScrIPAddrBegin","h") <> "N/A" then TCWebApi_get("ACL_Entry","ScrIPAddrBegin","s") else asp_write("0.0.0.0") end if%>">note:0.0.0.0-0.0.0.0 means all ip</TD></TR>
					<TR id=endIP>
						<TD width="30%">End IP:</TD><TD colspan='2'><INPUT id=endIPs maxLength=35 size=15 name=endIPs value="<% If TCWebApi_get("ACL_Entry","ScrIPAddrEnd","h") <> "N/A" then TCWebApi_get("ACL_Entry","ScrIPAddrEnd","s") else asp_write("0.0.0.0") end if%>"></TD></TR>
					<TR id=targetj>
						<TD width="30%">Mode:</TD>
						<TD><SELECT name="ACLAction">
							<OPTION <%if tcWebApi_get("ACL_Entry","Action","h") = "permit" then asp_Write("selected") end if%>>permit</OPTION>
							<OPTION <%if tcWebApi_get("ACL_Entry","Action","h") = "reject" then asp_Write("selected") end if%>>deny</OPTION></SELECT></TD></TR>
					<tr id=appj>
						<td width="30%">Service:</td>
							<td width="10%">
							HTTP<INPUT id="addHTTP" onclick="addApp(0)" type="checkbox" name="addHTTP">
							FTP<INPUT id="addFTP" onclick="addApp(1)" type="checkbox" name="addFTP">
							SSH<INPUT id="addSSH" onclick="addApp(2)" type="checkbox" name="addSSH">
							TELNET<INPUT id="addTELNET" onclick="addApp(3)" type="checkbox" name="addTELNET">
							HTTPS<INPUT id="addHTTPS" onclick="addApp(4)" type="checkbox" name="addHTTPS">
							</td></TR>	
					<tr>
					<SCRIPT language=JavaScript type=text/javascript>
					initSetApp();
					</SCRIPT>
						<td width="30%">&nbsp;</td></tr>						
						<tr id=aclUsrInfo><td colspan='2'><iframe src="/cgi-bin/compareACLRule.cgi" frameborder="0" width="500"></iframe></td></tr>
						</TBODY></TABLE></DIV>
						</FORM><BR>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
		<TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
		  
		  </TBODY></TABLE></TD></TR>
		  

  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=164 bgColor=#dff5ff>&nbsp;</TD>
          <TD width=280 bgColor=#ffffff>&nbsp;</TD>
          <TD width=393 bgColor=#ffffff>
          <P align=center><INPUT type=button value="Apply" id=btnOK onclick="ACLBtnEdit()" height=23 
            width=80 border=0>&nbsp;&nbsp;<INPUT type=button value="Cancel" 
            id=btnCancel onclick="OnBack()" height=23  
            width=80 border=0> </P></TD>
          <TD width=169 
>&nbsp;</TD></TR>
        </TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
