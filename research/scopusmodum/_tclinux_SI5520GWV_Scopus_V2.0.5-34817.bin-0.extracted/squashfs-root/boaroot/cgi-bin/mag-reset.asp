<%
if Request_Form("rebootflag") = "1" then
	TCWebApi_set("System_Entry","reboot_type","restoreFlag") 
	TCWebApi_set("Account_Entry0","Logged","login_init")
	TCWebApi_commit("System_Entry")
end if
if Request_Form("defaultflag") = "1" then
	TCWebApi_set("System_Entry","reboot_type","restoreflag2") 
	TCWebApi_set("Account_Entry0","Logged","login_init")
	TCWebApi_commit("System_Entry")
end if	
%>
<%
if Request_Form("ResetControlflag") <> "" then
	TCWebApi_set("Sys_Entry","HardwareResetEnable","ResetControlflag")
	TCWebApi_commit("Sys_Entry")
	tcWebApi_Save()
end if
%>
<%
if Request_Form("snSetFlag1") = "1" then
	tcWebApi_set("WebCustom_Entry", "ModifyProlineXponSN", "snSetFlag")	
	tcWebApi_set("GPON_ONU", "SerialNumber", "SN")
	tcWebApi_commit("GPON_ONU")
	tcWebApi_Save()
end if
%>
<%
if tcWebApi_get("WebCustom_Entry", "isXponModeSwitchSupported", "h") = "Yes" then
if Request_Form("Pon_Flag") = "1" then
	tcWebApi_set("XPON_LinkCfg","Mode","XponMode")		
	tcWebApi_commit("XPON_SetXponMode")
  tcWebApi_Save()
end if
end if
%>
<%
	if request_Form("backupflg") = "1" then
		tcWebApi_set("usbRestore_Entry", "dev", "ClDevType")
		tcWebApi_set("usbRestore_Entry", "autorestore", "autorestoreflag")
		tcWebApi_set("WebCurSet_Entry", "opt", "opt")
		tcWebApi_Commit("WebCurSet_Entry")
		tcWebApi_Commit("usbRestore_Entry")
		tcWebApi_Save()
	elseif request_Form("backupflg") = "2" then
		tcWebApi_set("WebCurSet_Entry", "opt", "opt")
		tcWebApi_Commit("WebCurSet_Entry")
		tcWebApi_Commit("usbRestore_Entry")
	elseif request_Form("backupflg") = "3" then
		tcWebApi_set("WebCurSet_Entry", "opt", "opt")
		tcWebApi_set("usbRestore_Entry", "autorestore", "autorestoreflag")
		tcWebApi_Commit("WebCurSet_Entry")
		tcWebApi_Commit("usbRestore_Entry")
		tcWebApi_Save()
	end if
%>	
<%
if Request_Form("MirrorEnable")="1" then
	tcWebApi_set("PortMirror_Common","wan2lan","wan_tx")
	tcWebApi_Commit("PortMirror")
end If
%>

<% 
if tcWebApi_get("WebCustom_Entry", "isAutoMaintainSupported", "h") = "Yes" then 
    if request_Form("AutoMaintainSave_click") = "1" then
		tcWebApi_set("automaintain_Entry", "enable", "autoMaintainEnableFlag")
		tcWebApi_Commit("automaintain_Entry")
		tcWebApi_Save()
	end if
end if
%>	

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<SCRIPT language=JavaScript type=text/javascript>
<% if Request_Form("rebootflag") = "1" then %>
<% if Request_Form("isCUCSupport") = "1" then %>
	setTimeout("doRefresh()",80*1000);
<% else %>
	setTimeout("doRefresh()",35*1000);
<% end if %>
	document.writeln("Device rebooting, please wait ......");
<% end if %>
<% if Request_Form("defaultflag") = "1" then %>
<% if Request_Form("isCUCSupport") = "1" then %>
	setTimeout("doRefresh()",80*1000);
<% else %>
	setTimeout("doRefresh()",35*1000);
<% end if %>
	document.writeln("Device is rebooting to restore the factory settings, please wait ......");
<% end if %>
function doRefresh()
{
	//alert("重启完成！"); 
 	window.top.location.href = "../";    
}
</SCRIPT>
<%if tcWebApi_get("System_Entry","reboot_type","h") = "0" then%>
<HEAD><TITLE>Device Management</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>

<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>

<SCRIPT language=JavaScript src="/JS/printtable.js"></SCRIPT>
<% if TCWebApi_get("WebCustom_Entry","isCT2PORTSSupported","h" ) <> "Yes" then %>
<% if TCWebApi_get("WebCustom_Entry","isCT1PORTSupported","h" ) <> "Yes" then %>
<SCRIPT language=JavaScript type=text/javascript src="/cgi-bin/showusb.cgi"></SCRIPT>
<% end if %>
<% end if %>
<SCRIPT language=JavaScript type=text/javascript>

function usbRestore()
{
	if(document.USBForm.usbRestoreFlag.checked == true){
		document.USBForm.autorestoreflag.value = "1";
	}else{
		document.USBForm.autorestoreflag.value = "0";
	}

	document.USBForm.backupflg.value = "3";
	document.USBForm.opt.value = "0";
	document.USBForm.submit();
}

function usbConfResult()
{
	document.USBForm.backupflg.value = "0";
	
	if(document.USBForm.autorestoreflag.value =="1")
	{
		document.USBForm.usbRestoreFlag.checked = true;
	}else
	{
		document.USBForm.usbRestoreFlag.checked = false;
}

	BackupEn();
	
	var str, commit;
	
	commit = false;
	
	if (document.USBForm.rstresult.value == "1")
{
		str = 'Configuration file saved successfully!';
		alert(str);
		commit = true;
	}
	else if (document.USBForm.rstresult.value == "2")
	{
		str = 'Configuration file backup fails, check whether the USB device is connected to correctly!';
		alert(str);
		commit = true;
	}
	else if(document.USBForm.rstresult.value == "3")
	{
		str = 'USB device space shortage!';
		alert(str);
		commit = true;
	}
	else if(document.USBForm.rstresult.value == "4")
	{
		var bchoise = 1;
		bchoise=confirm("File with the same name already exists, click OK to delete it and bakcup one, or click Cancel to exit backup");
		if(!bchoise)
		{
			commit = true;
		}
		else
		{
			document.USBForm.opt.value = "2";
			document.USBForm.backupflg.value = "2";
			document.USBForm.submit();
		}
		}
	else if(document.USBForm.rstresult.value == "7")
	{
		str = 'Backup file is corrupted!';
		alert(str);
		commit = true;
	}
	else if(document.USBForm.rstresult.value == "8")
	{
		str = 'Failed to save Configuration file!';
		alert(str);
		commit = true;
	}

	if(commit){
		document.USBForm.opt.value = "3";
		document.USBForm.backupflg.value = "2";
		document.USBForm.submit();
	}
}
function SetUserType()
{
	var curUserType = top.curUser;
	//current user check 
	if (curUserType == '0') 
	{
		getElement('usbconf').style.display = "none";
		getElement('clearlog').style.display = "none";
	}
	else if (curUserType == '1') 
	{
		getElement('usbconf').style.display = "none";
		getElement('clearlog').style.display = "none";
		getElement('restoredefault0').style.display = "none";
		getElement('restoredefault1').style.display = "none";
		getElement('restoredefault2').style.display = "none";
<% if tcWebApi_get("WebCustom_Entry", "isModifyXPONSnFromWebSupported", "h") = "Yes" then %>
		getElement('resetSN1').style.display = "none";
		getElement('resetSN2').style.display = "none";
		getElement('resetSN3').style.display = "none";
<% end if %>
	}
}
function BackupEn()
{
	if(document.USBForm.ClDevType.value == "N/A")
	{
		document.USBForm.usbConfBtn.disabled = true;
	}
	else if (document.USBForm.ClDevType.value == "No USB device")
	{
		document.USBForm.usbConfBtn.disabled = true;
	}
	else
	{
		document.USBForm.usbConfBtn.disabled = false;
	}
}
</SCRIPT>
      <SCRIPT language=JavaScript type=text/javascript>
function LoadFrame()
{
	document.ResetForm.rebootflag.value = "0";
	<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) <> "Yes" then %>
	getElement('usbconf').style.display = "none";
	getElement('usbconf0').style.display = "none";
	getElement('usbconf1').style.display = "none";
	getElement('usbconf2').style.display = "none";
	<% end if %>
	<% if TCWebApi_get("WebCustom_Entry","isCT2PORTSSupported","h" ) <> "Yes" then %>
	<% if TCWebApi_get("WebCustom_Entry","isCT1PORTSupported","h" ) <> "Yes" then %>
	usbConfResult();
	<% end if %>
	<% end if %>
}

function backupToUSB()
{
	
	document.USBForm.backupflg.value = "1";
	document.USBForm.opt.value = "1";
	document.USBForm.submit();
}

function doRefresh()
{
	var mydate = new Date();
	mydate.setTime(mydate.getTime() - 1);
	document.cookie = "SESSIONID=; expires=" + mydate.toGMTString(); 
 	window.top.location.href = "../";    
}

function ReDefaultboot()
{
	<% if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes" then %>	
	if(!confirm("Restoring factory Settings may cause service outages, click ok to drop the operation, and click cancel to restore factory Settings"))
	<%else%>
	if(confirm("Are you sure to restore factory Settings?"))
	<%end if%>
	{
		document.DefaultForm.defaultflag.value = "1";
<% if TCWebApi_get("WebCustom_Entry","isCTGDSupported","h" ) = "Yes" then %>
		document.DefaultForm.restoreflag2.value = "4";
<% elseif TCWebApi_get("WebCustom_Entry","isCTPONCYCQSupported","h" ) = "Yes" then %>
		document.DefaultForm.restoreflag2.value = "4";
<% elseif TCWebApi_get("WebCustom_Entry","isWebPureResetSupported","h" ) = "Yes" then %>
		document.DefaultForm.restoreflag2.value = "7";
<%else%>
		document.DefaultForm.restoreflag2.value = "2";
<% end if %>
		document.DefaultForm.submit();
		getElById('buttondefaultbak').disabled = true;
		setTimeout("doRefresh()",30*1000);
	}
	//十秒钟
}

function Reboot()
{
	<% if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes" then %>	
	if(!confirm("Rebooting the device may cause a temporary interruption of the service, click ok to give up the operation, or click cancel to reboot the device"))
	<%else%>
	if(confirm("Confirm reboot?"))
	<%end if%>
	{
		document.ResetForm.rebootflag.value = "1";
		document.ResetForm.restoreFlag.value = "1";
		document.ResetForm.submit();
		getElById('btnReboot').disabled = true;
		setTimeout("doRefresh()",30*1000);
	}
}

function ChangePonMode(obj)
{
	var old_mode = '<%TCWebApi_get("XPON_LinkCfg","Mode","s")%>';
  var opt = obj.options[obj.selectedIndex];
	var old_mode_str = (old_mode == 0 ? "Auto" : (old_mode==1 ? "GPON":"EPON"));
	var new_mode = obj.value;
	if (old_mode != new_mode)
	{
		var new_mode_str = (new_mode == 0 ? "Auto" : (new_mode==1 ? "GPON":"EPON"));
		var msg = "Are you sure to change XPON Mode from "+old_mode_str+" to "+new_mode_str+" ?";
		if (confirm(msg))
		{
			document.PonForm.submit();
      setTimeout("doRefresh()",30*1000);
			return true;
		}
	}
	else
	{
		alert("No changes made!");
	}
	return false;
}

function btnAutoMaintainSave()
{

	if (document.AutoMaintainForm.autoMaintainEnable.checked == true)
	{
		document.AutoMaintainForm.autoMaintainEnableFlag.value = "1";
	}
	else
	{
		document.AutoMaintainForm.autoMaintainEnableFlag.value = "0";
	}
	document.AutoMaintainForm.AutoMaintainSave_click.value = "1";
	document.AutoMaintainForm.submit();		
}
<% if tcWebApi_get("WebCustom_Entry", "isModifyXPONSnFromWebSupported", "h") = "Yes" then %>
function btnSnSet()
{	
	var ret1 = true;
	var i = 0;
	var xponsn = getElById('SN').value;
	var arry = xponsn.split("");
	
	if(confirm( " Are you sure to set serial number? " ))
	{		
		if( xponsn.length != 12 )
		{
			alert ( "Serial Number length should be  12" );
			return false;
		}
		
		for ( i = 0 ; i<4 ; i++ )
		{
			if(arry[i].match (/^[A-Z]$/g) == null)
			{
				ret1 = false;
				break;
			}
		}
		if( ret1 == true )
		{
			for ( i = 4 ; i<12 ; i++ )
			{
				if(arry[i].match (/^[0-9a-fA-F]$/g) == null)
				{
					ret1 = false;
					break;
				}
			}
		}
		
		if ( ret1 == true )
		{
			document.SNForm.snSetFlag1.value = "1";	
			document.SNForm.submit();
			return true;
		}
		else
			alert ( "Serial Number is invalid " );
	}
	
	return false;
}
<% end if %>

function ResetControlClick()
{
    var ResetControl = getElById('ResetControl');

	if (document.ResetControlForm.ResetControlflag.value == 0)
	{
	    document.ResetControlForm.ResetControlflag.value = 1;
		ResetControl.innerHTML = "Currently Enable Hardware Reset";
		document.ResetControlForm.submit();
	}else
	{
		if(confirm( " Are you sure to disable hardware reset? It's unrecommended if you forget your login password !!!" ))
		{	
	    	document.ResetControlForm.ResetControlflag.value = 0;
			ResetControl.innerHTML = "Currently disable Hardware Reset";
			document.ResetControlForm.submit();
		}
	}			
    
}
//改变镜像状态的回调函数
function ChangeMirrorEnable(obj)
{
  var old_wan2lan = '<%TCWebApi_get("PortMirror_Common","wan2lan","s")%>';
	var old_wan2lan_str = (old_wan2lan == 0 ? "off" : "on");
	var new_wan2lan = obj.value;
	if (old_wan2lan != new_wan2lan)
	{
		var new_wan2lan_str = (new_wan2lan == 0 ? "off" : "on");
		var msg = "Are you sure to change mirror status from "+old_wan2lan_str+" to "+new_wan2lan_str+" ?";
		if (confirm(msg))
		{
			document.getElementById("MirrorEnable").value = "1";
			document.MirrorForm.submit();
			return true;
		}
	}
	else
	{
		alert("No changes mirror status!");
	}
	return false;
}

</SCRIPT>
<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000 
leftMargin=0 topMargin=0 
onload="DisplayLocation(getElement('Selected_Menu').value);FinishLoad();if(getElById('USBForm') != null)LoadFrame()" 
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
            value="Maintenance->Device" name=Selected_Menu> </FONT></B><SPAN 
            class=GatewayName>CPE Name：
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
	<TD></TR>
  <TR>
    <TD vAlign=top>
          <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Device Rebooting</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
              <TD width=674>&nbsp; </TD>
          <TD vAlign=top width=170
            rowSpan=15><TABLE cellSpacing=0 cellPadding=20 width="100%" 
border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#Device" 
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
		  <FORM id="ResetForm" name="ResetForm" action="/cgi-bin/mag-reset.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD>&nbsp;</TD>
                      <TD width=10>&nbsp;</TD></TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=10>&nbsp;</TD>
                      <TD align=middle><INPUT type="button" value="    Reboot Device    "  name="btnReboot" onclick="Reboot();" >
                                  <input type="hidden" name="rebootflag" value="0"> 
                                  <input type="HIDDEN" name="restoreFlag" value="0">
				<INPUT type="hidden" NAME="isCUCSupport" value="<%if tcwebApi_get("Info_WLan","isCUCSupport","h")="Yes" then asp_write("1") else asp_write("0") end if%>">
				  
                                </TD>
                      <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
               
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></FORM></TD></TR>
				<% if tcWebApi_get("WebCurSet_Entry","CurrentAccess","h") = "0" then %>
				<% if TCWebApi_get("WebCustom_Entry","isCT2PORTSSupported","h" ) <> "Yes" then %>
				<% if TCWebApi_get("WebCustom_Entry","isCT1PORTSupported","h" ) <> "Yes" then %>
        <DIV id=usbconf>
        <TR id=usbconf0>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>USB Backup Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR id=usbconf1>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR id=usbconf2>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
         <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
		  <FORM id="USBForm" name="USBForm" action="/cgi-bin/mag-reset.asp" method="post">	
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=10>&nbsp;</TD>
			<INPUT TYPE="HIDDEN" NAME="autorestoreflag" VALUE="<%TCWebApi_get("usbRestore_Entry","autorestore","s")%>">
			<INPUT TYPE="HIDDEN" NAME="backupflg" VALUE="0">
			<INPUT TYPE="HIDDEN" NAME="rstresult" VALUE="<%TCWebApi_get("WebCurSet_Entry","rstresult","s")%>">
			<INPUT TYPE="HIDDEN" NAME="opt" VALUE="0">
                      <TD align=middle>Please select the USB device partition: <SELECT id=ClDevType onChange="BackupEn()"
                        name=ClDevType> 
                        <SCRIPT language=JavaScript type=text/javascript>
				var i;
				for(i=0;i < usbvalue.length;i++)
				{
					var t1 =usbvalue[i].split("usb");  
					var t2 =t1[1].split("_");
					document.write("<option value=\""+usbvalue[i]+"\">USB"+t2[0]+"-"+t2[1]+"&nbsp;分区</option>");
				}
					if(usbvalue.length == 0)
						document.write("<option value=\"N/A\">No USB device</option>");
			</SCRIPT>
                        </SELECT> &nbsp; <INPUT id="usbConfBtn" onclick="backupToUSB()" type="button" value="Backup Configuration" name="usbConfBtn"> 
                        <BR><BR>
                        <CENTER>Enable auto restore configuration files through USB: 
                        	<INPUT id="usbRestoreFlag" onclick="usbRestore()" type="checkbox" name="usbRestoreFlag"> 
                        </CENTER>                       
                                <input type="HIDDEN" name="login_init" value="0">
	 			<INPUT TYPE="HIDDEN" NAME="restoreFlag" VALUE="0">		                                
                                <input type="HIDDEN" name="postflag" value="0"> 
                                <input type="HIDDEN" name="HTML_HEADER_TYPE" value="2"> 
                                <input type="HIDDEN" name="usertype0" value="<%TCWebApi_get("Account_Entry0","usertype0","s")%>"> 
                                <input type="HIDDEN" name="usertype1" value="<%TCWebApi_get("Account_Entry1","usertype1","s")%>"> 
                                <input type="HIDDEN" name="usertype2" value="<%TCWebApi_get("Account_Entry2","usertype2","s")%>"> 
                                <input type="HIDDEN" name="name0" value="<%TCWebApi_get("Account_Entry0","username","s")%>"> 
                                <input type="HIDDEN" name="name1" value="<%TCWebApi_get("Account_Entry1","username","s")%>"> 
                                <input type="HIDDEN" name="name2" value="<%TCWebApi_get("Account_Entry2","username","s")%>">                            
                                <SCRIPT language=javascript>
						{
							BackupEn();
						}
						</SCRIPT>
                      </TD>
                      <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
               
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></FORM></TD></TR></DIV>
        <% end if %>
        <% end if %>
        <DIV></DIV>
        <DIV id=clearlog>
        <TR id=clearlog0  style="display:none">
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Clear log</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR id=clearlog1  style="display:none">
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR id=clearlog2  style="display:none">
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=10>&nbsp;</TD>
                      <TD align=middle><INPUT onclick='if(confirm("Are you sure to clear all log records?")) {location.replace("clearsyslog.cgi");}' type=button value="    Clear log    " name=button> 
                      </TD>
                      <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
             
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></DIV>
		<% end if %>
        <TR id=restoredefault0 name="restoredefault0">
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Restore Default Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR id=restoredefault1 name="restoredefault1">
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR id=restoredefault2 name="restoredefault2">
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
		  <FORM id="DefaultForm" name="DefaultForm" action="/cgi-bin/mag-reset.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=10>&nbsp;</TD>
                              <TD align=middle><input type="button" value="  Restore Default Settings  "  name="buttondefaultbak"  onClick="ReDefaultboot();" >
                                <input type="hidden" name="defaultflag" value="0">
                                <input type="hidden" name="restoreflag2" value="0">
				<INPUT type="hidden" NAME="isCUCSupport" value="<%if tcwebApi_get("Info_WLan","isCUCSupport","h")="Yes" then asp_write("1") else asp_write("0") end if%>">
                            </TD>
                      <TD width=10>&nbsp;</TD>
                      <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD>

              </TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD></TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></FORM></TD></TR>

<% if tcWebApi_get("WebCurSet_Entry","CurrentAccess","h") = "0" then %>
        <TR id=resetControl0 name="resetControl0">
          <TD width=157 bgColor=#dff5ff height=30></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR id=resetControl1 name="resetControl1">
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR id=resetControl2 name="resetControl2">
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
			  <FORM id="ResetControlForm" name="ResetControlForm" action="/cgi-bin/mag-reset.asp" method="post">
	            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
	              <TBODY>
		              <TR>
		                <TD width=10>&nbsp;</TD>
		                <TD>
		                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
		                    <TBODY>
			                    <TR>
			                      <TD width=10>&nbsp;</TD>
			                              <TD align=middle><input id="ResetControl" type="button" value="<%if tcwebApi_get("Sys_Entry","HardwareResetEnable","h")="0" then asp_write("Currently disable hardware reset") else asp_write("Currently enable hardware reset") end if%>"  name="ResetControl"  onClick="ResetControlClick();" >
			                                <input type="hidden" name="ResetControlflag" value="<%if tcwebApi_get("Sys_Entry","HardwareResetEnable","h")="0" then asp_write("0") else asp_write("1") end if%>"></TD> 
			                      <TD width=10>&nbsp;</TD>
			                      <TD width=10>&nbsp;</TD>
			                    </TR>
		                    </TBODY>
		                  </TABLE>
		                </TD>
		              </TR>
		              <TR>
		                <TD width=10>&nbsp;</TD>
		                <TD></TD>
		                <TD width=10>&nbsp;</TD>
		              </TR>
		          </TBODY>
		        </TABLE>
		      </FORM>
	      </TD>
	    </TR>
<% end if %>  
 <% if tcWebApi_get("WebCustom_Entry", "isModifyXPONSnFromWebSupported", "h") = "Yes" then %>				
		<TR id=resetSN1 name="resetSN1">
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>XPON SN Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>	
        <TR id=resetSN2 name="resetSN2">
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>  
		<TR id=resetSN3 name="resetSN3">
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
		  <FORM id="SNForm" name="SNForm" action="/cgi-bin/mag-reset.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>  
		      <TR>
                <TD width=10>&nbsp;</TD>
				<TD>
                  <TABLE style="margin:auto;">
                    <TBODY>
                    <TR>
                      <TD width=10>&nbsp;</TD>					
					   <TD><strong>XPON SN Settings:&nbsp  </strong><input id=SN  name=SN value="<%if tcWebApi_get("GPON_ONU", "SerialNumber","h") <> "N/A" then TCWebApi_get("GPON_ONU", "SerialNumber","s" ) end if%>" maxLength=12>                               
                            </TD>					  
                              <TD align=middle>&nbsp &nbsp &nbsp &nbsp <input type="button" value="  Apply  "  name="buttonSN"  onClick="btnSnSet();" >
							  <input type="hidden" name="snSetFlag1" value="0">
							  <input type="hidden" name="snSetFlag" value="Yes">
                            </TD>																																					
                      <TD width=10>&nbsp;</TD>
                      <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD>
			  </TR> 
			  <TR>
                <TD width=10>&nbsp;</TD>

                <TD></TD>
                <TD width=10>&nbsp;</TD></TR>																				
				</TBODY></TABLE></FORM></TD></TR>
<% end if %>				
<SCRIPT language=JavaScript type=text/javascript>
				if (curUserName != sptUserName)
				{
					<% if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") <> "Yes" then %>		
					getElement('restoredefault0').style.display = "none";
					getElement('restoredefault1').style.display = "none";
					getElement('restoredefault2').style.display = "none";
					<% end if %>
					
<% if tcWebApi_get("WebCustom_Entry", "isModifyXPONSnFromWebSupported", "h") = "Yes" then %>					
					getElement('resetSN1').style.display = "none";
					getElement('resetSN2').style.display = "none";
					getElement('resetSN3').style.display = "none";
<% end if %>	
			}
</SCRIPT>			
<% if tcWebApi_get("WebCustom_Entry", "isXponModeSwitchSupported", "h") = "Yes" then %>		
<% if tcWebApi_get("WebCurSet_Entry","CurrentAccess","h") = "0" then %>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>PON Mode Setting</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
          <FORM id="PonForm" name="PonForm" action="/cgi-bin/mag-reset.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                  <TBODY>
                    <TR>
                      <TD align="middle">PON Mode:
                        <SELECT id="XponMode" name="XponMode" onchange="ChangePonMode(this)"> 
                          <option value="0" <% if TCWebApi_get("XPON_LinkCfg","Mode","h")="0" then %> selected <% end if %>>Auto</option>
                          <option value="1" <% if TCWebApi_get("XPON_LinkCfg","Mode","h")="1" then %> selected <% end if %>>GPON</option>
                          <option value="2" <% if TCWebApi_get("XPON_LinkCfg","Mode","h")="2" then %> selected <% end if %>>EPON</option>
                        </SELECT></TD>
                      <INPUT TYPE="HIDDEN" NAME="Pon_Flag" VALUE="1"></TR>
                    <TR><TD>&nbsp;</TD></TR>
                    <TR>
                    <TD align="middle"><font color="red">NOTE: Device will automatically reboot after changing of PON Mode.</font></TD></TR>
                  </TBODY></TABLE></TD>
                </TR>
<!--
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD></TD>
                <TD width=10>&nbsp;</TD></TR> -->
           </TBODY></TABLE></FORM></TD></TR>
<% end if %>
<% end if %>
<% if tcWebApi_get("WebCustom_Entry", "isPortMirrorSupported", "h") = "Yes" then %>
<% if tcWebApi_get("WebCurSet_Entry","CurrentAccess","h") = "0" then %>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Mirror Setting</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0>&nbsp;</TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0>&nbsp;</TD>
          <TD>
            <FORM id="MirrorForm" name="MirrorForm" action="/cgi-bin/mag-reset.asp" method="post">
              <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                <TBODY>
                  <TR>
                    <TD align="middle">Mirror Status:
                      <SELECT id="wan_tx" name="wan_tx" onchange="ChangeMirrorEnable(this)"> 
                        <option value="0" <% if TCWebApi_get("PortMirror_Common","wan2lan","h")="0" then %> selected <% end if %>>off</option>
                        <option value="1" <% if TCWebApi_get("PortMirror_Common","wan2lan","h")="1" then %> selected <% end if %>>on</option>
                      </SELECT>
                    </TD>
                    <INPUT type="hidden" id="MirrorEnable" name="MirrorEnable" value="0">
                  </TR>
                  <TR>
                    <TD>&nbsp;</TD>
                  </TR>
                  <TR>
                  </TR>
                </TBODY>
              </TABLE>
            </FORM></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD align=center></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD>
        </TR>
<% end if %>
<% end if %>

<% if tcWebApi_get("WebCustom_Entry", "isAutoMaintainSupported", "h") = "Yes" then %>		
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Auto Maintain</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
          <FORM id="AutoMaintainForm" name="AutoMaintainForm" action="/cgi-bin/mag-reset.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                  <TBODY>
                    <TR>
                       <TD align="middle">Enable <INPUT id="autoMaintainEnable" type=checkbox name="autoMaintainEnable" <%if tcWebApi_get("automaintain_Entry","enable","h") = "1" then asp_Write("checked") end if%>>
					   <INPUT type="hidden" name="autoMaintainEnableFlag" id="autoMaintainEnableFlag" value="0">
					   </TD>
					</TR>
                    <TR><TD>&nbsp;</TD></TR>
                    <TR>
                    <TD>If auto reboot enabled, the router will auto-reboot to maintain itself during 03:00-05:00 each day, once traffic drops below 3KB/s</TD></TR>
				    <TR>
                    <TD align="middle"><font color="red">The Auto Maintenance take effect when the system time sychronize Internet time</font></TD></TR>	
					<TR><TD align=middle>
					<BUTTON onClick="btnAutoMaintainSave()" type="button" name=btnApply1 >Save</BUTTON>
					<input type="HIDDEN" name="AutoMaintainSave_click" value="0">
					</TD></TR>
                  </TBODY></TABLE></TD></TR>				
           </TBODY></TABLE></FORM></TD></TR>
<% end if %>

        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height="100%"></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD><script language="JavaScript" type="text/JavaScript">if ( getElement('usbconf') )
	getElement('usbconf').style.display = "none";if ( getElement('clearlog') )
	getElement('clearlog').style.display = "none";
</script></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height="100%"></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=1>
      <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 
        border=0><TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff>&nbsp;</TD>		  <TD width=7 bgColor=#ffffff border=0></TD>
          <TD width=280 bgColor=#ffffff>&nbsp;</TD>
          <TD width=393 bgColor=#ffffff>

            <P align=center><!--IMG id=btnOK onclick="RefreshPage()" height=23 

            src="/img/ok.gif" width=80 border=0>&nbsp;&nbsp;<IMG 

            id=btnCancel onclick="RefreshPage()" height=23 src="/img/cancel.gif" 

            width=80 border=0--> </P></TD>

          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>

</BODY>
<% end if %>
</HTML>

