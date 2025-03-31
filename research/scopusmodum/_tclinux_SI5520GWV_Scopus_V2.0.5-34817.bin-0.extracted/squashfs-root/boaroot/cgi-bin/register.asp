<%
If Request_Form("Register_CHANGE")="1" then 
if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes" then
	TCWebApi_set("GPON_ONU","Password","customer_ID")
else
	TCWebApi_set("EPON_LOIDAuth","LOID0","broadbandusername")
	TCWebApi_set("EPON_LOIDAuth","Password0","customer_ID")
if tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then 
	tcWebApi_constSet("EPON_LOIDAuth","AuthStatus","0")
	tcWebApi_constSet("GPON_LOIDAuth","AuthStatus","0")
end if
	TCWebApi_set("GPON_LOIDAuth","LOID","broadbandusername")
	TCWebApi_set("GPON_LOIDAuth","Password","customer_ID")
end if
	TCWebApi_save()
if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes" then
	TCWebApi_commit("GPON_ONU")
else
	TCWebApi_commit("EPON_LOIDAuth")
	TCWebApi_commit("GPON_LOIDAuth")
end if
 
	TCWebApi_set("Cwmp_Entry","devregInform","devReginfoFlag")
	TCWebApi_set("deviceAccount_Entry","newStatus","newStatusFlag")
	TCWebApi_set("deviceAccount_Entry","newResult","newStatusFlag")
if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") <> "Yes" then
	TCWebApi_set("deviceAccount_Entry","userName","broadbandusername")
end if
	TCWebApi_set("deviceAccount_Entry","userPasswordDEV","customer_ID")

	if tcWebApi_get("WebCustom_Entry", "isCTPONJSSupported", "h") = "Yes" then
		TCWebApi_set("LogicID_Entry","isRegistered","Register_CHANGE")
	end if
	if tcWebApi_get("deviceAccount_Entry","registerStatus","h") <> "0" then
		TCWebApi_set("deviceAccount_Entry","registerResult","result_startvalue")
	end if
	if tcWebApi_get("WebCustom_Entry", "isCTPONJSSupported", "h") = "Yes" then
		tcWebApi_constSet("WebCurSet_Entry","regPageSubmit","1")
	end if
	if tcWebApi_get("WebCustom_Entry", "isCTPONHLJSupported", "h") <> "Yes" then
	if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2Supported", "h") = "Yes" then
		TCWebApi_set("LogicID_Entry","isRegistered","Register_CHANGE")
		tcWebApi_constSet("WebCurSet_Entry","regPageSubmit","1")
	end if
	end if
	TCWebApi_commit("deviceAccount_Entry")
	TCWebApi_save()
elseif Request_Form("Register_CHANGE") = "2" then
	if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes" then
		TCWebApi_set("System_Entry","newRomfileSelect","romfileselect")
		TCWebApi_commit("System_Entry")
	end if
elseif Request_Form("simOLTVerify") = "1" then
	if Request_Form("simUSERID") = "0" then
			tcWebApi_constSet("Account_Entry0","Logged","0")
	else
			tcWebApi_constSet("Account_Entry1","Logged","0")
	end if
End If
If Request_Form("tryTimesflg")="1" then 
	TCWebApi_set("deviceAccount_Entry","retryTimes","tryTimes")
	TCWebApi_commit("deviceAccount_Entry")
	TCWebApi_save()
End If

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0039)http://192.168.1.1/html/AutobandReg.asp -->
<HTML><HEAD><TITLE>Business Registry</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
<script language="JavaScript" type="text/JavaScript">
<%if tcWebApi_get("WebCustom_Entry", "isCTPONJSSupported", "h") = "Yes" then%>
function showmsg_info()
{
	alert('LOID saved successfully, the device is registering, log in and view the registration status!');
	top.window.location.href='/cgi-bin/index2.asp';
}
<% else %>
<%if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2Supported", "h") = "Yes" then%>
function showmsg_info()
{
	alert('LOID saved successfully, the device is registering, log in and view the registration status!');
	top.window.location.href='/cgi-bin/index2.asp';
}
<%end if%>
<%end if%>
<%
	if tcWebApi_get("WebCustom_Entry", "isCTPONJSSupported", "h") = "Yes" then
		if tcWebApi_get("WebCurSet_Entry", "regPageSubmit", "h") = "1"  then
				tcWebApi_constSet("WebCurSet_Entry","regPageSubmit","0")
				asp_write("showmsg_info()")
		end if
	else
		if tcWebApi_get("WebCustom_Entry", "isCTPONHLJSupported", "h") <> "Yes" then
		if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2Supported", "h") = "Yes" then
			if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") <> "Yes" then
				if tcWebApi_get("WebCurSet_Entry", "regPageSubmit", "h") = "1"  then
						tcWebApi_constSet("WebCurSet_Entry","regPageSubmit","0")
						asp_write("showmsg_info()")
				end if
			end if
		end if
		end if
	end if
	if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
	   if tcWebApi_get("SimCard_Entry", "cpeFlag", "h") = "1"  then
		   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "0"  then%>
		   	top.window.location.href="/cgi-bin/InsertSimcardMsg.cgi";
		   <%end if
	   end if
	end if
%>
var	statusFlag = 0;
var isHasRetryTimesSubmit = 0;
var	registerend = false;
var regITMSlimitcount = 24;
<%if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then%>
var	uplimitcount = 48;//count of refresh
var uplimitcount_2 = 36; // 2 miniutes
<%else%>
var	uplimitcount = 120;//count of refresh
var uplimitcount_2 = 36; // 3 miniutes
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
var uplimitcount_3 = 48;
<%end if%>
<%end if%>
<%if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") = "Yes"  then%>
var service_timeout = 24; // 2 miniutes
<%end if%>
var	refreshtimer = 5000;//unit is millisecond
var	isIPv4 = "<% tcWebApi_get("WebCurSet_Entry","IsIPv4","s") %>";
var	lanip;
var lanip_v4 = "<% tcWebApi_get("Lan_Entry0","IP","s") %>";
var lanip_v6 = "[" + "<% tcWebApi_get("Lan_Entry0","IP6","s") %>" + "]";
if ( 'N/A' == lanip_v4 )
	lanip_v4 = '192.168.1.1';
if ( 'N/A' == lanip_v6 )
	lanip_v6 = '[fe80::1]';
var lanip_v4=getIPv4FromURL(top.window.location.href);
/*
if ( '0' == isIPv4 && top.window.location.href.indexOf(lanip_v6) < 0 )
	top.window.location.href = 'http://' + lanip_v6 + '/cgi-bin/register.asp';
else if ( '1' == isIPv4 && top.window.location.href.indexOf(lanip_v4) < 0 )
	top.window.location.href = 'http://' + lanip_v4 + '/cgi-bin/register.asp';
*/
function writeReturnhref()
{
	var httpip;
	if("0" == isIPv4){
		lanip = "[" + "<% tcWebApi_get("Lan_Entry0","IP6","s") %>" + "]";
		if(lanip == "N/A")
			httpip = "http://[fe80::1]";
		else
			httpip = "http://" + lanip;
	}
	else{
	//	lanip = "<% tcWebApi_get("Lan_Entry0","IP","s") %>";
     lanip= lanip_v4;
		if(lanip == "N/A")	
			httpip = "http://192.168.1.1";
		else
			httpip = "http://" + lanip;
	}
	document.write('<A href="' + httpip + '" onclick="resetCookie();">Back to login page</A>');
}
function resetCookie() {
	document.cookie = "RegPageStatus=0";
	document.cookie = "RegPagetimeoutcount=0";
	document.cookie = "RegPagetimeoutcount_2=0";
	document.cookie = "RegProgressPercent=-1";
	document.cookie = "RegServiceFetch=0";
	document.cookie = "RegServiceNameId=0";
	document.cookie = "RegServiceIPTV=0";
	document.cookie = "RegServiceINTERNET=0";
	document.cookie = "RegServiceVOIP=0";
	document.cookie = "RegServiceOther=0";	
<% if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") = "Yes" then%>
	document.cookie = "RegServicBIND2ITMSTimeout=0";
	document.cookie = "RegServicBIND2WebStartTime=0";
<% end if%>
	return true;
}
function checkQuitstatus() {
	var retry = "<%tcWebApi_get("deviceAccount_Entry","retryTimes","s") %>";
        var limit = "<%tcWebApi_get("deviceAccount_Entry","retryLimit","s") %>";
        if (retry != "N/A" && limit != "N/A")
        {
                if(parseInt(retry) > parseInt(limit))
		{
			registerend = true;
			resetCookie();
			setDisplay("msgwait", 0);	
		}
	}
}
</script>

<META content="MSHTML 6.00.2900.3698" name=GENERATOR></HEAD>
<BODY style="TEXT-ALIGN: center; valign: middle" vLink="#000000" aLink="#000000" 
link="#000000" leftMargin="0" topMargin="0" onload="LoadFrame()" marginheight="0" 
marginwidth="0">
<SCRIPT language=JavaScript type=text/javascript>

function LoadFrame()
{
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes" then %>					
	var promptError = 0;
	<% if Request_Form("ReDefaultbootflg") = "1" then %>
		<% if Request_Form("TestCode") = tcWebApi_get("Account_Entry1","web_passwd","h") then
			tcWebApi_set("WebCurSet_Entry", "isRegFactoryDef", "restoreflag2") %>
			promptError = 2;
		<% else %>
			promptError = 1;
		<% end if %>
	<% elseif tcWebApi_get("deviceAccount_Entry","registerResult","h") = "1" then %>
		var tdResultElement = getElement('tdResult');
		var titles = "<div align='center' style='padding-bottom:5px'><font style='FONT-SIZE: 12px' align='center'><% if tcwebApi_get("XPON_Common","xponMode","h") = "EPON" then %>EPON<% else %>GPON<% end if %>Uplink E8-C terminal business registration prompt:</font></div>";
		tdResultElement.innerHTML = titles + "<div align='center'><font style='FONT-SIZE: 13px' align='center'>" + "The device is registered, do not need to register again, you need to restore the factory configuration before re-registration." + "</font></div>";
		setDisplay('mainScreen', 0);
		setDisplay('promptScreen', 1);
		setDisplay("loading",0);
		setDisplay("trReturn1", 1);
		return;
	<%end if%>
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
	getElement("hint2Text").innerHTML="“LOID”和“Password”";  
	getElement("loidText").innerHTML="LOID:";  
	getElement("passwordText").innerHTML="Password:";  
<% end if%>
	var tryTimes = "<%tcWebApi_get("deviceAccount_Entry","retryTimes","s") %>";
	var limitTimes = "<%tcWebApi_get("deviceAccount_Entry","retryLimit","s") %>";
	if (tryTimes != "N/A")
	{
		tryTimes = parseInt("<%tcWebApi_get("deviceAccount_Entry","retryTimes","s") %>");
	}
	else
	{
		tryTimes = 0;
	}
	if (limitTimes != "N/A")
	{
		limitTimes = parseInt("<%tcWebApi_get("deviceAccount_Entry","retryLimit","s") %>");
	}
	else
	{
		limitTimes = 0;
	}
	var lefttime = limitTimes - tryTimes;
	var isPageUpdate = getCookie('PageUpdate');
	
	with (getElById('ConfigForm'))
	{
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
		if(promptError == 1)
		{
			setDisplay("mainScreen",0);
			setDisplay("promptScreen", 1);
			setDisplay("loading",0);
			setDisplay("trReDefaultboot", 1);
			setDisplay("submitbutton", 1);
			setDisplay("trErrorTestCode", 1);
			setDisplay("trErrorTestCodeTitle", 1);
			setDisplay("trReturn1", 0);
		}
		else if ( 2 == promptError )
		{
			top.window.location.href ='/cgi-bin/resetscreen.asp';		
		}
		else{
<% end if%>		
		if(parseInt(lefttime) > 0
			|| (isPageUpdate == 1 && parseInt(lefttime) == 0))
		{
			if (isPageUpdate == 1 && parseInt(lefttime) == 0)
				document.cookie = "PageUpdate=0";
			var rs=getPageStatus();
			if((rs == "2") || (rs == "1"))
			{
				setDisplay('mainScreen', 0);
				setDisplay('promptScreen', 1);
			}
			else
			{
				setDisplay('mainScreen', 1);
				setDisplay('promptScreen', 0);
			}
			if (registerend){
				resetCookie();
			}
		}
		else
		{
				var tdResultElement = getElement('tdResult');
				setDisplay("trReturn", 1);
				setDisplay('mainScreen', 0);
				setDisplay('promptScreen', 1);
				setDisplay("loading",0);
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
				hidePercent();
<% end if%>
				isRegSuccess = true;
<% if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>	
				tdResultElement.innerHTML = '<P><img src="/img/iconFail.jpg"><strong><font color="#FF0000" size="2">Registration failed on EMS! Please try again in three minutes or contact your account manager or call 10086</font></strong></P>';
<%else%>			
				tdResultElement.innerHTML = '<P><img src="/img/iconFail.jpg"><strong><font color="#FF0000" size="2">Registration failed on ITUNES! Please try again in three minutes or contact your account manager or call 10000</font></strong></P>';
<% end if %>
		}
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>				
		}
<% end if%>			
<%if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes" then%>
<% if Request_Form("Register_CHANGE") = "2" then %>
<% if Request_Form("romfileselect") <> Request_Form("ori_romfileselect") then %>
		setDisplay('mainScreen', 0);
		setDisplay('promptScreen', 0);
		setDisplay('loading', 0);
		setTimeout("doRefresh()",40*1000);
		document.writeln("Version Type Changed, device is reboot, wait ......");
<% end if %>
<% end if %>
<%end if%>		
	}
}

<%if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes" then%>
function doRefresh()
{
 	window.top.location.href = "../";    
}
<%end if%>

function refreshPage()
{
	document.cookie = "RegPageStatus=2";
	syncRegStatus();
	//document.ConfigForm.submit();
}

function getPageStatus()
{
	if(document.cookie.length > 0)
	{
		tstart = document.cookie.indexOf("RegPageStatus=");
		if( tstart != -1)
		{
			tstart += 14;
			tend = document.cookie.indexOf(";",tstart);
			if(tend == -1) tend = document.cookie.length;
			return document.cookie.substring(tstart,tend);
		}
		else return "N/A";
	}
	else return "N/A";
}
function gettimeoutcnt()
{
	if(document.cookie.length > 0)
	{
		tstart = document.cookie.indexOf("RegPagetimeoutcount=");
		if( tstart != -1)
		{
			tstart += 20;
			tend = document.cookie.indexOf(";",tstart);
			if(tend == -1) tend = document.cookie.length;
			return parseInt(document.cookie.substring(tstart,tend));
		}
		else return 0;
	}
	else return 0;
}

function gettimeoutcnt_2()
{
	if(document.cookie.length > 0)
	{
		tstart = document.cookie.indexOf("RegPagetimeoutcount_2=");
		if( tstart != -1)
		{
			tstart += 22;
			tend = document.cookie.indexOf(";",tstart);
			if(tend == -1) tend = document.cookie.length;
			return parseInt(document.cookie.substring(tstart,tend));
		}
		else return 0;
	}
	else return 0;
}

function getCookie(Name)
{
	var searched = Name + "=";
	if(document.cookie.length > 0) 
	{
		offset = document.cookie.indexOf(searched);
		if(offset != -1) 
		{
			offset += searched.length;
			end = document.cookie.indexOf(";", offset);
			if(end == -1) end = document.cookie.length;
			return parseInt(document.cookie.substring(offset, end));
		}
		else 
			return 0;
	}
	else return 0;
}

function onReturn(index)
{
	resetCookie();
	if (1 == index)
	{
		with (getElById('ConfigForm'))
		{
			setDisplay('mainScreen', 1);
			setDisplay('promptScreen', 0);
		}
	}
	else
	{
<% if tcWebApi_get("WebCustom_Entry", "isCTPONJSSupported", "h") = "Yes" then%>
		location.replace("http://" + lanip.toString());	
<%else%>
	<% if tcWebApi_get("WebCustom_Entry", "isCTPONHLJSupported", "h") = "Yes" then %>
		if (isRegSuccess != true && gLefttimes > 0 )
		{
			document.ConfigForm.submit();
		}
		else
		{
			location.replace("http://" + lanip.toString());
		}
	<% else %>
	<% if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2Supported", "h") = "Yes" then%>
	<% if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") = "Yes" then %>
		if (isRegSuccess != true && gLefttimes > 0 )
		{
			document.ConfigForm.submit();
		}
		else
		{
			location.replace("http://" + lanip.toString());
		}
	<% else %>
		location.replace("http://" + lanip.toString());	
	<% end if%>
	<%else%>	
		if (isRegSuccess != true && gLefttimes > 0 )
		{
			document.ConfigForm.submit();
		}
		else
		{
			location.replace("http://" + lanip.toString());
		}
	<% end if%>
	<% end if%>
<% end if%>
	}
}
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
function ReDefaultboot()
{
	var tdResultElement = getElement('tdResult');
	tdResultElement.innerHTML = "<div align='center'><font style='FONT-SIZE: 13px' align='center'>" + "Enter the correct code, it can help restore the default factory configuration" + "</font></div>";
	setDisplay("trReturn1", 0);
	setDisplay("trReDefaultboot", 1);
	setDisplay("submitbutton", 1);
}
<% end if%>
function CheckForm()
{
	var customer = getValue("customer_ID");
<%if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") <> "Yes"  then %>
	var bandName = getValue("broadbandusername");
	if (bandName == "")
	{
		alert("LOID can not be empty!");
		return false;
	}

	if (bandName.length > 128)
	{
		alert("LOID length can not exceed 128 bits!");
		return false;
	}
<% end if %>
	if (customer.length > 128)
	{
		alert("Password length can not exceed 128 bits!");
		return false;
	}
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>
	var reg = /^[a-zA-Z0-9][\x21-\x73]*[a-zA-Z0-9]$|^[a-zA-Z0-9]+$/;						
	
	if (reg.test(bandName) == false)
	{
   	alert("LOID can only starts and ends with letters, with no Spaces in between.");
		return;
	} 
	  
	if (customer.length>0 && reg.test(customer)== false)
	{
		alert("Password can only starts and end withs letters, with no Spaces in between.");
		return;
	}	
<%end if%>
	return true;
}

function onReset()
{
	with (getElById('ConfigForm'))
	{
		setText('broadbandusername', "");
		setText('customer_ID', "");
	}
}

function onOK()
{
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then %>
   <%else%>
	if(CheckForm())
	{
   <% end if
else%>
	if(CheckForm())
	{
<% end if%>
		document.ConfigForm.Register_CHANGE.value = "1";
		document.cookie = "RegPageStatus=1";
		document.cookie = "RegPagetimeoutcount=0";
		document.cookie = "RegPagetimeoutcount_2=0";
		document.cookie = "RegProgressPercent=-1";
		document.cookie = "RegServiceFetch=0";
		document.cookie = "RegServiceNameId=0";
		document.cookie = "RegServiceIPTV=0";
		document.cookie = "RegServiceINTERNET=0";
		document.cookie = "RegServiceVOIP=0";
		document.cookie = "RegServiceOther=0";
		document.cookie = "HasRetryTimesSubmit=0";
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
		var dateT = new Date();
		document.cookie = "RegStartTime="+dateT.getTime();
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") = "Yes" then%>
		document.cookie = "RegServicBIND2ITMSTimeout=0";
		document.cookie = "RegServicBIND2WebStartTime=0";
<% end if%>

		document.ConfigForm.submit();
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then %>
   <%else%>
	}
   <% end if
else%>
	}
<% end if%>
}
<% if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes"  then %>
function onSetting()
{
	top.window.location.href="/cgi-bin/cwmpsetting.asp";
}
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
function onCancel()
{
	setDisplay("trErrorTestCode", 0);

	with (getElById('ConfigForm'))
	{
		setText('TestCode', "");
	}
}

function onSubmit()
{
	var testcode = getValue("TestCode");
	if (testcode == "")
	{
		alert("Verify password can not be empty!");
		return false;
	}

	document.ConfigForm.ReDefaultbootflg.value = "1";
	document.ConfigForm.restoreflag2.value = "Yes";
	document.ConfigForm.submit();
	getElById('buttondefaultbak').disabled = true;	
}
<% end if%>
function pageHeight()
{
	return window.innerHeight != null? window.innerHeight : document.documentElement && document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body != null? document.body.clientHeight : null;
}
</SCRIPT>
<FORM id="SelfCheckForm" name="SelfCheckForm" method="post" action="/cgi-bin/selfcheck.asp">
	<input type="hidden" name="stb_test" value="0">
</FORM>

<FORM id="ConfigForm" name="ConfigForm" method="post">
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
	<INPUT TYPE="HIDDEN" NAME="ReDefaultbootflg" VALUE="0">
	<INPUT TYPE="HIDDEN" NAME="restoreflag2" VALUE="">
<% end if%>	
	<INPUT TYPE="HIDDEN" NAME="Register_CHANGE" VALUE="0">
	<INPUT TYPE="HIDDEN" NAME="tryTimesflg" VALUE="-1">
	<INPUT TYPE="HIDDEN" NAME="tryTimes" VALUE="-1">
  	<input type="hidden" name="devReginfoFlag" value="1">
  	<input type="hidden" name="newStatusFlag" value="0">
  <input name="result_startvalue" type="hidden" value="99">
  <DIV id=mainScreen style="DISPLAY: none">
<SCRIPT language=javascript type=text/javascript>
	var percent = 0;
var winHeight = pageHeight();
if (winHeight > 540)
{
winHeight = (winHeight - 540)/2;
}
else
{
winHeight = 80;
}
document.write('<table width="808" height="540" align="center" background="../img/bg.jpg" style="margin-top:'+winHeight+'px">');
function updateprogress()
{
	with (getElById('ConfigForm')){
		var tdResultprogress = getElement('loadcss');
		tdResultprogress.style.width = percent.toString() + "%";
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
		getElement('percentage').innerHTML = percent.toString() + "%";
<%else%>
		tdResultprogress.innerHTML = percent.toString() + "%";
<% end if%>
	}
	
	document.cookie = "RegProgressPercent=" + percent.toString();
}
</SCRIPT>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
<TR valign="top" height="40%">
<TD width="20%"></TD>
<TD width="50%"></TD>
<TD width="30%">
<%else%>
<TR valign="top" height="40%"><TD>
<% end if%>	
<TABLE style="MARGIN-TOP: 150px" align=right>
  <TBODY>
  <TR>
    <TD style="MARGIN-TOP: 100px; FONT-SIZE: 13px">
	<script language="JavaScript" type="text/JavaScript">
	writeReturnhref();
	</script>
	</TD>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
    <TD width="50%">&nbsp;</TD></TR></TBODY></TABLE></TD></TR><TR valign="top">
    <TD	width="20%"></TD>
    <TD width="59%">
<%else%>
    <TD width="50%">&nbsp;</TD></TR></TBODY></TABLE></TD></TR><TR valign="top"><TD colspan="3">
<% end if%>
<TABLE align="center">
  <TBODY>
	<TR>
    <TD width="8%">&nbsp;</TD>
<% if tcwebApi_get("WebCustom_Entry","isCTPONCYSupported","h") = "Yes" then %>
    <% if tcwebApi_get("WebCustom_Entry","isCTPONYNSupported","h") = "Yes" then %>
        <TD style="FONT-SIZE: 12px" colSpan=2><% if tcwebApi_get("XPON_Common","xponMode","h") = "EPON" then %>EPON<% else %>GPON<% end if %>uplink<% if tcwebApi_get("WebCustom_Entry","isVOIPSupported","h") = "Yes" then %>E8-C<% else %>E8-B<% end if %>Business Registry terminal prompt:</TD></TR>
    <% else %>
    	  <TD style="FONT-SIZE: 12px" colSpan=2><% if tcwebApi_get("XPON_Common","xponMode","h") = "EPON" then %>EPON<% else %>GPON<% end if %>uplinkE8-CBusiness Registry terminal prompt:</TD></TR>
    <% end if %>
<% else %>
    <% if tcwebApi_get("WebCustom_Entry","isCTPONYNSupported","h") = "Yes" then %>
        <TD style="FONT-SIZE: 12px" colSpan=2><% if tcwebApi_get("XPON_Common","xponMode","h") = "EPON" then %>EPON<% else %>GPON<% end if %>uplink<% if tcwebApi_get("WebCustom_Entry","isVOIPSupported","h") = "Yes" then %>E8-C<% else %>E8-B<% end if %>Business Registry terminal prompt:</TD></TR>
    <% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
    		<TD style="FONT-SIZE: 12px" colSpan=2>GPON Uplink E8-C Business Registry terminal prompt:</TD></TR>
    <% elseif tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then %>
    		<TD style="FONT-SIZE: 12px" colSpan=2><% if tcwebApi_get("XPON_Common","xponMode","h") = "EPON" then %>EPON<% else %>GPON<% end if %>uplink<% if tcwebApi_get("WebCustom_Entry","isVOIPSupported","h") = "Yes" then %>E8-C<% else %>E8-B<% end if %>Business Registry terminal prompt：</TD></TR>
		<% elseif tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>
				<TD style="FONT-SIZE: 12px" colSpan=2><% if tcwebApi_get("XPON_Common","xponMode","h") = "EPON" then %>EPON<% else %>GPON<% end if %>uplink<% if tcwebApi_get("WebCustom_Entry","isVOIPSupported","h") = "Yes" then %>E8-C<% else %>E8-B<% end if %>Business Registry terminal prompt：</TD></TR>
    <% else %>
        <TD style="FONT-SIZE: 12px" colSpan=2>EPON Uplink E8-C Business Registry terminal prompt:</TD></TR>
    <% end if %>
<% end if %>
  <TR>
    <TD width="8%">&nbsp;</TD>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
    <TD style="FONT-SIZE: 12px" colSpan=2>1.Requested seated after confirmation terminal fiber light extinguished.</TD></TR>
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
		<TD style="FONT-SIZE: 12px" colSpan=2>1.Please confirm seated optical fiber and the optical signal is in the off state</TD></TR>
<% elseif tcWebApi_get("WebCustom_Entry", "isCTPONCYSupported", "h") = "Yes"  then %>
		<TD style="FONT-SIZE: 12px" colSpan=2>1.Please plug tight "Fibre E / G" optical interfaces and check that the light signal is in the off state</TD></TR>
<%else%>
    <TD style="FONT-SIZE: 12px" colSpan=2>1.Please plug tight "network E / G" optical interfaces and check that the light signal is in the off state</TD></TR>
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then %>
  <% if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then %>
    <TR style="display:none">
  <%else%>
    <TR>
    <TD width="8%">&nbsp;</TD>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
    <TD style="FONT-SIZE: 12px" colSpan=2>2.Enter LOID and PASSWORD (password) optical signal steady for register. The password can be broadband account (without the @ suffix), phone number (without area code) or LOID (pure ITV access).</TD></TR>
<%else%>
    <TD style="FONT-SIZE: 12px" colSpan=2>2.Accurately input <a id="hint2Text">"LOID" and "Password"</a>，Click "OK" to register or insert family<br/>&nbsp; Gateway card and then reboot</TD></TR>
<% end if%>
  <% end if %>
<%else%>
  <TR>
    <TD width="8%">&nbsp;</TD>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
    <TD style="FONT-SIZE: 12px" colSpan=2>2.Enter LOID and PASSWORD (password) optical signal steady to register. The password can be broadband account (without the @ suffix), phone number (without area code) or LOID (pure ITV access).</TD></TR>
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
		<TD style="FONT-SIZE: 12px" colSpan=2>2.Accurately input “Password”，Click "OK" to register</TD></TR>
<%else%>
    <TD style="FONT-SIZE: 12px" colSpan=2>2.Accurately input <a id="hint2Text">"LOID" and "Password"</a>，Click "OK" to register</TD></TR>
<% end if%>
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then %>
		  <TR>
		    <TD width="8%">&nbsp;</TD>
		<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
		    <TD style="FONT-SIZE: 12px" colSpan=2>2.Do not arbitrarily unplug optical fiber (10 minutes) during the registration process.</TD></TR>
		<%else%>
		    <TD style="FONT-SIZE: 12px" colSpan=2>2.Do not power off and unplug the optical fiber during the process of registration and issuing business</TD></TR>
		<% end if%>
		  <TR>
		    <TD width="8%">&nbsp;</TD>
		<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
		    <TD style="FONT-SIZE: 12px" colSpan=2>3.This feature is only for registration,certification and business issued of new equipment.The one which is in normal use do not re-register.</TD></TR>
		<%else%>
		    <TD style="FONT-SIZE: 12px" colSpan=2>3.This feature is only for registration,certification and business issued of new equipment.The one which is in normal use do not re-register.</TD></TR>
		<% end if%>
		  </TR>
   <%else%>
		 <TR>
		    <TD width="8%">&nbsp;</TD>
		<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
		    <TD style="FONT-SIZE: 12px" colSpan=2>3.Do not arbitrarily unplug optical fiber (10 minutes) during the registration process.</TD></TR>
		<%else%>
		    <TD style="FONT-SIZE: 12px" colSpan=2>3.Do not power off and unplug the optical fiber during the process of registration and issuing business</TD></TR>
		<% end if%>
		  <TR>
		    <TD width="8%">&nbsp;</TD>
		<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
		    <TD style="FONT-SIZE: 12px" colSpan=2>4.This terminal the E8-C of<% if tcwebApi_get("XPON_Common","xponMode","h") = "GPON" then %>GPON<% else %>EPON<% end if %>.</TD></TR>
		<%else%>
		    <TD style="FONT-SIZE: 12px" colSpan=2>4.This feature is only for registration,certification and business issued of new equipment.The one which is in normal use do not re-register.</TD></TR>
		<% end if%>
		  </TR>
   <% end if
else%>
  <TR>
    <TD width="8%">&nbsp;</TD>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
    <TD style="FONT-SIZE: 12px" colSpan=2>3.Do not arbitrarily unplug optical fiber (10 minutes) during the registration process.</TD></TR>
<%else%>
    <TD style="FONT-SIZE: 12px" colSpan=2>3.Do not power off and unplug the optical fiber during the process of registration and issuing business</TD></TR>
<% end if%>
  <TR>
    <TD width="8%">&nbsp;</TD>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
    <TD style="FONT-SIZE: 12px" colSpan=2>4.The terminal is the E8-C of <% if tcwebApi_get("XPON_Common","xponMode","h") = "GPON" then %>GPON<% else %>EPON<% end if %>.</TD></TR>
<%else%>
    <TD style="FONT-SIZE: 12px" colSpan=2>4.This feature is only for registration,certification and business issued of new equipment.The one which is in normal use do not re-register.</TD></TR>
<% end if%>
  </TR>
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes"  then %>
  <TR id="tr_romfileselect">  	
  	<TD width="8%">&nbsp;<input type="hidden" name="romfileselect" value=""><input type="hidden" name="ori_romfileselect" value="<%TCWebApi_get("System_Entry","romfileSelect","s")%>"></TD>
  	<TD width="38%" align="right" style="FONT-SIZE: 13px" id="romfileselectText">Version Type:</TD>
  	<TD width="60%"><iframe id="romfileselectfrm" name="romfileselectfrm" src="/cgi-bin/getRomfileInfo.cgi" frameborder="0" width="240" height="26"></iframe></TD>
  </TR>
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") <> "Yes"  then %>
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then %>
  	<TR id="useraccount" style="display:none">
   <%else%>
  	<TR id="useraccount">
   <% end if
else%>
  <TR id="useraccount">
<% end if%>
    <TD width="8%">&nbsp;<P></TD>
	<% if tcWebApi_get("WebCustom_Entry", "isE8TYSupported", "h") = "Yes" then%>
              <TD width="38%" align="right" style="FONT-SIZE: 13px">LOID:</TD>
	<%else%>
			  <TD width="38%" align="right" style="FONT-SIZE: 13px" id="loidText">LOID:</TD>
	<%end if%>
    <TD width="60%"><INPUT id="broadbandusername" style="WIDTH: 120px; FONT-FAMILY: 'Arial'" <% if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>maxLength=24<%end if%>
      name="broadbandusername" height="20" value="<% If TCWebApi_get("deviceAccount_Entry","userName","h") <> "N/A" then
						TCWebApi_get("deviceAccount_Entry","userName","s")
						end if%>">&nbsp;<FONT color=red>*</FONT></TD></TR>
<%end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then %>
		<TR id="userpassword" style="display:none">
   <%else%>
		<TR id="userpassword">
   <% end if
else%>
  <TR id="userpassword">
<% end if %>
    <TD width="8%">&nbsp;</TD>
	<% if tcWebApi_get("WebCustom_Entry", "isE8TYSupported", "h") = "Yes" then%>
              <TD style="FONT-SIZE: 13px" align="right">PASSWORD:</TD>
	<%elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
				<TD width="38%" style="FONT-SIZE: 13px" align="right">Password:</TD>
	<%else%>
			  <TD style="FONT-SIZE: 13px" align="right" id="passwordText">Password:</TD>
	<%end if%>
    <TD><INPUT id="customer_ID" style="WIDTH: 120px; FONT-FAMILY: 'Arial'" <% if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>maxLength=12<%end if%> 
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") <> "Yes"  then %>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") <> "Yes"  then %>
      type="password"
<% end if%>
<% end if%>
       name="customer_ID" height="20" value="<% If TCWebApi_get("deviceAccount_Entry","userPasswordDEV","h") <> "N/A" then
						TCWebApi_get("deviceAccount_Entry","userPasswordDEV","s")
						end if%>"> </TD></TR>
  <TR id="msgwait">
    <TD width="8%">&nbsp;</TD>
    <TD style="FONT-SIZE: 13px" align=right></TD>
              <TD>Registering, please wait ...</TD>
            </TR>
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then %>
    <TR id="msgbutton" style="display:none">
   <%else%>
    <TR id="msgbutton">
   <% end if
else%>
  <TR id="msgbutton">
<% end if%>
    <TD width="8%">&nbsp;</TD>
    <TD colSpan=2>
      <TABLE height="15%" width="100%" border=0>
        <TBODY>
        <TR>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>   
          <TD width="20%" align=right ><INPUT id="btnOK" style="WIDTH: 60px;HEIGHT: 20px" onclick="onOK()" type=button value="OK"></TD>
<%else%>
					<TD width="45%" align=right ><INPUT id="btnOK" style="WIDTH: 60px;HEIGHT: 20px" onclick="onOK()" type=button value="OK"></TD>
<% end if%>         
<% if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes"  then%> 
					<TD width="10%"><INPUT id="btnSetting" style="WIDTH: 70px;HEIGHT: 20px" onclick="onSetting()" type=button value="Advanced settings"></TD>
<%else%>
          <TD width="10%">&nbsp;</TD>
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then 
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then %>
          <TD width="45%" align=left ><INPUT id="btnCancel" style="WIDTH: 60px;HEIGHT: 20px" onclick="onReset()" type="button" value="Reset"></TD></TR></TBODY></TABLE></TD></TR>
          <DIV id=ServiceConfiguration>
            <TR align=center>
    <TD width="8%">&nbsp;</TD>
    <TD colSpan=2><INPUT id=SerConfig onclick="onOK()" type=button value=Business Configuration name=SerConfig></TD></TR></DIV>
	</TBODY></TABLE></TD></TR></TABLE></DIV>
   <%else%>
          <TD width="45%" align=left ><INPUT id="btnCancel" style="WIDTH: 60px;HEIGHT: 20px" onclick="onReset()" type="button" value="Reset"></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TABLE></DIV>
   <% end if
else%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>  
          <TD width="20%" align=left ><INPUT id="btnCancel" style="WIDTH: 60px;HEIGHT: 20px" onclick="onReset()" type="button" value="Reset">
<%else%>
					<TD width="45%" align=left ><INPUT id="btnCancel" style="WIDTH: 60px;HEIGHT: 20px" onclick="onReset()" type="button" value="Reset">
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>    
          <TD width="20%" align=left ><INPUT id="btnCancel" style="WIDTH: 65px;HEIGHT: 20px" onclick="btnselfCheck()" type="button" value="Terminal selfcheck">       	
<% end if%></TD>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
					<TD width="20%" align=left ><INPUT id="btnCancel" style="WIDTH: 65px;HEIGHT: 20px" onclick="restore()" type="button" value="Restore"></TD>
<% end if%> 
					</TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TABLE></DIV>
<% end if%>
<DIV id=promptScreen style="DISPLAY: none">
<SCRIPT language=javascript type=text/javascript>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
	if((getPageStatus() == "1") && !registerend)
<%else%>
	if(getPageStatus() == "1")
<% end if%>
	{
		setDisplay("msgwait", 1);
	}
	else
	{
		setDisplay("msgwait", 0);
	}

var winHeight = pageHeight();
if (winHeight > 540)
{
winHeight = (winHeight - 540)/2;
}
else
{
winHeight = 80;
}
document.write('<table width="808" height="540" align="center" background="../img/bg.jpg" style="margin-top:'+winHeight+'px">');
function btnselfCheck()
{
		document.SelfCheckForm.stb_test.value  = "1";
		document.SelfCheckForm.submit();
}

function restore()
{
		top.window.location.href="/cgi-bin/reset.asp";
}
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
function hidePercent()
{
    setDisplay("prog0", 0);
    setDisplay("prog1", 0);
}
<% end if%>
</SCRIPT>
<TR valign="top" height="50%"><TD>
<TABLE style="MARGIN-TOP: 150px" align=right>
  <TBODY>
  <TR>
    <TD style="MARGIN-TOP: 100px; FONT-SIZE: 13px">
	<script language="JavaScript" type="text/JavaScript">
	writeReturnhref();
	</script>
	</TD>
    <TD width="50%">&nbsp;</TD></TR></TBODY></TABLE></TD></TR><TR valign="top"><TD>
<TABLE width="40%" align=center>
  <TBODY>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
  <TR>
  	<TD id='prog0'>&nbsp;&nbsp;&nbsp;&nbsp;</TD>
  <TD align=middle id='prog1'><DIV id="percentage"></DIV></TD>
  </TR>
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
  <TR>
    <TD></TD>
    <TD>
      <DIV id=tdShow style="FONT-SIZE: 13px"></DIV></TD></TR>
  <TR>
    <TR>
    <TD></TD>
    <TD>
      <DIV id=tdShowPon style="FONT-SIZE: 13px"></DIV></TD></TR>
<% end if%>
  	<TD>&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD><DIV id="loading"><strong id="loadcss"><% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%><img height=16 width=0><% end if%></strong></DIV>&nbsp;</TD></TR>
  <TR>
    <TD></TD>
    <TD>
      <DIV id=tdResult style="FONT-SIZE: 13px"></DIV></TD></TR>
  <TR id=trReturn style="DISPLAY: none">
    <TD align=middle colSpan=2><INPUT id=btnReturn style="WIDTH: 60px;HEIGHT: 20px" onclick=onReturn(0); type=button value=Back> 
    </TD></TR>
  <TR id=trReturn1 style="DISPLAY: none">
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
    <TD width="8%">&nbsp;</TD>
    <TD colSpan=2>
      <TABLE height="15%" width="100%" border=0>
        <TBODY>
        <TR>
          <TD width="45%" align=right><INPUT id=btnReturn1 onclick=onReturn(0); type=button value='Back'> </TD>
          <TD width="10%">&nbsp;</TD>
          <TD width="45%" align=middle><INPUT type="button" value="Restore to factory settings"  name="buttondefaultbak"  onClick="ReDefaultboot();" ></TD>
        </TR></TBODY></TABLE></TD>
  </TR>
  <TR id=trReDefaultboot style="DISPLAY: none">
    <TD width="8%">&nbsp;</TD>
    <TD colSpan=2>
      <TABLE height="15%" width="100%" border=0>
        <TBODY>
			  <TR id=trErrorTestCodeTitle style="DISPLAY: none">
			    <TD colSpan=3 align=middle><font style='FONT-SIZE: 13px' align='center'>Enter the correct code, it can help restore the default factory configuration</font></TD>
			  </TR>
        <TR>
          <TD width="30%" align=right>Verify Password;</TD>
          <TD width="8%">&nbsp;</TD>
          <TD width="62%" align=left><INPUT id="TestCode" style="WIDTH: 120px; FONT-FAMILY: 'Arial'" type="password" name="TestCode" height="20" value="">&nbsp;<FONT color=red>*</FONT></TD>
        </TR></TBODY></TABLE></TD>
  </TR>
  <TR id=trErrorTestCode style="DISPLAY: none">
    <TD width="8%">&nbsp;</TD>
    <TD colSpan=2 align=middle>Tip: The authentication password entered is incorrect, please contact the support managers and get it from ITMS Platform</TD>
  </TR>
  <TR id="submitbutton" style="DISPLAY: none">
    <TD width="8%">&nbsp;</TD>
    <TD colSpan=2>
      <TABLE height="15%" width="100%" border=0>
        <TBODY>
        <TR>
          <TD width="45%" align=right ><INPUT id="btnSubmit" style="WIDTH: 60px;HEIGHT: 20px" onclick="onSubmit()" type=button value="Submit"></TD>
          <TD width="10%">&nbsp;</TD>
          <TD width="45%" align=left><INPUT id="btnCancel" style="WIDTH: 60px;HEIGHT: 20px" onclick="onCancel()" type="button" value="Cancel"></TD></TR></TBODY></TABLE></TD></TR>
<%else%>
    <TD align=middle colSpan=2><INPUT id=btnReturn1 style="WIDTH: 60px;HEIGHT: 20px" onclick=onReturn(1); type=button value=Back> 
    </TD></TR>
<% end if%>
  <TR id=trTime style="DISPLAY: none">
    <TD>&nbsp;</TD>
    <TD id=tdTime 
style="FONT-SIZE: 13px">
<DIV id="regStatus" style="DISPLAY: none"><iframe src="/cgi-bin/regstatus.asp" onload='ifame_load_finish()' id="statusfrm" name="statusfrm" frameborder="0" width="0" height="0"></iframe></DIV>
</TD></TR></TBODY></TABLE></TD></TR></TABLE></DIV>
	<SCRIPT language=javascript type=text/javascript>
	var isRegSuccess = false;
	var intervalfunFlag = null;
	var limitTimes = "<%tcWebApi_get("deviceAccount_Entry","retryLimit","s") %>";
	var retryTimes = "<%tcWebApi_get("deviceAccount_Entry","retryTimes","s") %>";
	var iretrycount = 0;
	var ilimitcount = 0;
	function getServiceNameId(ServiceName)
	{
		var sName = "";
		if(ServiceName == "" || ServiceName == "N/A")
			return 0;
			
		if(ServiceName.indexOf(",") > 0){
			var str = ServiceName.split(",");
			var len = str.length;
			if(len == 2 && ((str[0] == "IPTV" && str[1] == "INTERNET") || (str[0] == "INTERNET" && str[1] == "IPTV"))){
				sName = "IPTV+INTERNET";
			}else if(len == 2 && ((str[0] == "IPTV" && str[1] == "VOIP") || (str[0] == "VOIP" && str[1] == "IPTV"))){
				sName = "IPTV+VOIP";
			}else if(len == 2 && ((str[0] == "INTERNET" && str[1] == "VOIP") || (str[0] == "VOIP" && str[1] == "INTERNET"))){
				sName = "INTERNET+VOIP";
			}else if(len == 3 && ((str[0] == "IPTV" && str[1] == "INTERNET" && str[2] == "VOIP") 
			|| (str[0] == "IPTV" && str[1] == "VOIP"  && str[2] == "INTERNET")
			|| (str[0] == "INTERNET" && str[1] == "IPTV"  && str[2] == "VOIP")
			|| (str[0] == "INTERNET" && str[1] == "VOIP"  && str[2] == "IPTV")
			|| (str[0] == "VOIP" && str[1] == "INTERNET"  && str[2] == "IPTV")
			|| (str[0] == "VOIP" && str[1] == "IPTV"  && str[2] == "INTERNET"))){
				sName = "IPTV+INTERNET+VOIP";
			}
		}else{
			sName = ServiceName;
		}
		
		switch(sName)
		{
			case "IPTV":
				return 1;
			case "INTERNET":
				return 2;
			case "VOIP":
				return 3;
			case "IPTV+INTERNET":
				return 4;
			case "IPTV+VOIP":
				return 5;
			case "INTERNET+VOIP":
				return 6;
			case "IPTV+INTERNET+VOIP":
				return 7;				
			default:	//Other Service
				return 9;
		}
	}
	

	var rPhyStatus = "<%tcWebApi_get("XPON_Common","losStatus","s") %>";
	var rLinkState = "<%tcWebApi_get("XPON_Common","trafficStatus","s") %>";
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
	rPhyStatus = 'up'
<% end if%>
	var rstatus = "<%tcWebApi_get("deviceAccount_Entry","registerStatus","s") %>";
	var rresult = "<%tcWebApi_get("deviceAccount_Entry","registerResult","s") %>";	
	var rnewStatus = "<%tcWebApi_get("deviceAccount_Entry","newStatus","s") %>";
	var rnewResult = "<%tcWebApi_get("deviceAccount_Entry","newResult","s") %>";

	var acsresult = "<%TCWebApi_get("Cwmp_Entry","Inform_Status","s")%>";
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
	var serviceName = "<%tcWebApi_get("deviceAccount_Entry","ProvisioningCode","s") %>";
<%else%>
	var serviceName = "<%tcWebApi_get("deviceAccount_Entry","serviceName","s") %>";
<% end if%>
	var serviceNum = parseInt("<%tcWebApi_get("deviceAccount_Entry","serviceNum","s") %>");	
	
	var pppup = "<% tcWebApi_get("CwmpRoute_Entry","ifName0","s") %>"; 
	
	var isOLTReg = 0;
	var cwmpRetry = 0;
	var gLefttimes = 0;
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
	var gOLTuptime = 0;
	var gITMSRegTime = 0;
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONHLJSupported", "h") = "Yes"  then %>
	var gConnectITMS = 0;
	var gITMSStep = 0;
	var gITMSMsg = new Array("ITMS successful registration, wait for ITMS platform to send traffic data."
													, "ITMS platform is being issued traffic data, do not power off or pull the fiber."
													, "ITMS platform is being issued traffic data, do not power off or pull the fiber."
													, "ITMS platform is being issued traffic data, do not power off or pull the fiber."
													, "ITMS platform is being issued traffic data, do not power off or pull the fiber.");
	var gITMSMsgSize = gITMSMsg.length;
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then %>
	var gOLTStep = 0;
	var gOLTMsg = new Array("Registering OLT..."
													, "Registering OLT..."
													, "Registering OLT..."
													, "Registering OLT..."
													, "Registering OLT...");
	var gOLTMsgSize = gOLTMsg.length;
	var authStatus="";
	var regsta = true;
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") = "Yes"  then %>
	var gCwmpWANUP = 0;
	var gConnectITMS = 0;
	var isVoipSet = '';
<% end if%>

	function showMsg()
	{
		percent = getCookie("RegProgressPercent");	
		var rs = getPageStatus();
		
		if (retryTimes != "N/A")
		{
			iretrycount = parseInt(retryTimes);
		}
		if (limitTimes != "N/A")
		{
			ilimitcount = parseInt(limitTimes);
		}
		
		var lefttime = 0;
		
		if(isHasRetryTimesSubmit == 1)
			lefttime = ilimitcount - iretrycount;	
		else
			lefttime = ilimitcount - iretrycount - 1;	
		gLefttimes = lefttime;
		
		if(percent < 1)
		{
			statusFlag = 0;
			percent++;
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
			return "Registering, please wait...";	
<%else%>
			return "Registering, please wait...";		
<% end if%>
		}
		
		if(rPhyStatus.indexOf('up') < 0)	//phy no link
		{
			statusFlag = 12;
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
			return "Terminal is failed to register in the OLT, check whether the fiber is plugged properly or receiving optical power is normal, or LOID entered correctly.";
<%else%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
			if (percent >= 20)
			return "ITMS registration is successful, the business issued failed.";
		else 
			return "Optical signal exception, please check whether the light path is normal or call 10000.";
<%else%>
<% if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
			return "Registered on the OLT fails, check whether the signal light is off or password is correct.";
<%else%>
			return "Failed to register on the OLT, check whether the light signal is in the off state, logical ID and password are correct or call 10000.";		
<% end if%>
<% end if%>
<% end if%>
		}
		else if(rLinkState != 'up')	// link no up
		{
			statusFlag = 0;
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
			percent = 30; //change to 30%
			isOLTReg = 1;
			if( gettimeoutcnt() >=  uplimitcount_2 )
			{
				statusFlag = 12;
				return "Terminal is failed to register in the OLT, check whether the fiber is plugged properly or receiving optical power is normal, or LOID entered correctly.";
			}
			return "Terminal is launching a registeration to the OLT";
<%else%>
			percent = 20; //change to 20%
			isOLTReg = 1;
			if( gettimeoutcnt() >=  uplimitcount_2 )
			{
				statusFlag = 12;
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
				return "Failed to register on the OLT, check whether the logic ID and password are correct or call 10000.";
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
				return "Registered on the OLT fails, check whether the signal light is off or Password is correct.";
<%else%>
				return "Failed to register on the OLT, check whether the light signal is in the off state, logical ID and password are correct or call 10000.";
<% end if%>	
			}
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then %>
			else if ((authStatus == 2) || (authStatus == 3) || (authStatus == 4))                           // auth fail
      {
         percent = 40;
         registerend = true;
         regsta = false;
         return "Sign OLT failed, LOID does not exist, please try again.";
      }
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
			return "Registering home gateway network.";	
<%else%>
			return "Registering OLT...";
<% end if%>
<% end if%>
		}
		else	//link up
		{			
			if(rnewStatus != "1")
				rstatus = "99";
			if(rnewResult != "1")
				rresult = "99";
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then %>
			var rs_p = getPageStatus();
			var msg_show = 0;
			refreshtimer = 1000;
			var msg_tmp = gOLTMsg[gOLTStep];
			if ( "1" == rs_p )
			{
				percent += 15;
				if ( gOLTStep < gOLTMsgSize )
				{
					msg_show = 1;
					gOLTStep ++;
				}
			}
			if ( gOLTStep < gOLTMsgSize || 1 == msg_show )
			{
				statusFlag = 0;
				return msg_tmp;
			}
			rstatus = "0";
			rresult = "1";
<% end if%>		
<% if tcWebApi_get("WebCustom_Entry", "isCTPONHLJSupported", "h") = "Yes"  then %>
			var rs_p = getPageStatus();
			var msg_show = 0;
			if ( 1 == gConnectITMS )
			{
				refreshtimer = 1000;
				var msg_tmp = gITMSMsg[gITMSStep];
				if ( "1" == rs_p )
				{
					percent += 10;
					if ( gITMSStep < gITMSMsgSize )
					{
						msg_show = 1;
						gITMSStep ++;
					}
				}
				if ( gITMSStep < gITMSMsgSize
						|| 1 == msg_show )
				{
					statusFlag = 0;
					return msg_tmp;
				}

				rstatus = "0";
				rresult = "1";
			}
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") = "Yes"  then %>
			var rs_p = getPageStatus();
			if ( '0' == rstatus )
			{
				if ( 1 == gConnectITMS )
				{
					rresult = '0';
					// check timeout
					var web_startTime = getCookie('RegServicBIND2WebStartTime');
					if( (gettimeoutcnt() - web_startTime) >=  service_timeout )
						rresult = '1';
					else
					{
						// check itms voip node status
						if ( 'Yes' == isVoipSet )
							rresult = '1';
					}
				}
				else
				{
					if ('1' == rs_p )
					{
						gConnectITMS = 1;
						var curTimeC = gettimeoutcnt();
						document.cookie = "RegServicBIND2WebStartTime=" + curTimeC.toString();
					}
				}
			}
<% end if%>
			if(rstatus == "N/A" || rstatus == "99")
			{
				if(percent < 30 || pppup == 'N/A'
					|| (30 == percent && '1' == rs && pppup != 'N/A' ))
				{
					statusFlag = 0;
					percent = 30;//change to 30%
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					if ( 0 == gOLTuptime )
						gOLTuptime = gettimeoutcnt();
					if ( ( gettimeoutcnt() - gOLTuptime ) >=  uplimitcount_2 )
					{
						statusFlag = 12;
						return "There is no access to End-to-ITMS channel, please contact support manager process it.";
					}
					return "OLT terminal has successfully registered, the next step is to register with the ITMS Platform initiated from terminal";
<%else%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
					return "Obtain home gateway management address.";	
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					return "Obtaining management IP...";	
<%else%>
					return "Sign OLT successfully ,manage to obtain IP...";		
<% end if%>
<% end if%>
				}
			
				if(acsresult != "1" && acsresult != "2"
					|| (isOLTReg = 1 && ++cwmpRetry <= 72 ))
				{
					statusFlag = 0;
					percent = 40; //change to 40%
<% if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") = "Yes"  then %>
					if ( acsresult != "1" && acsresult != "2" && "2" == rs_p )
					{
						if ( 0 == gCwmpWANUP )
						{
							gCwmpWANUP = 1;
							var curTime = gettimeoutcnt();
							document.cookie = "RegServicBIND2ITMSTimeout=" + curTime.toString();
						}
						else
						{
							// check timeout
							var wanup_startTime = getCookie('RegServicBIND2ITMSTimeout');
							if( (gettimeoutcnt() - wanup_startTime) >=  service_timeout )
							{
								statusFlag = 11;
								return "There is no access to ITMS channel, please contact your account manager or call 10000.";
							}
						}
					}
<% end if%>

<% if tcWebApi_get("WebCustom_Entry", "isCTPONHLJSupported", "h") = "Yes"  then %>
					if ( acsresult != "1" && acsresult != "2" && "2" == rs_p )
						gConnectITMS = 1;
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
					return "Home gateways registered with ITMS.";	
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					return "Management IP has obtained, Connecting to RMS...";	
<%else%>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					if ( 0 == gITMSRegTime )
						gITMSRegTime = gettimeoutcnt();
					if ( ( gettimeoutcnt() - gITMSRegTime ) >=  uplimitcount_3 )
					{
						statusFlag = 13;
						return "End-to-ITMS channel timeout, please contact support manager process.";
					}
<% end if%>
					return "Management IP has obtained, Connecting to ITMS...";
<% end if%>
				}else
				{
					statusFlag = 11;
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					return "These is no access to End-to-ITMS channel, please contact support manager process it.";
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					return "These is no access to End-to-RMS channel, please contact your account manager or call 10086.";
<%else%>
					return "These is no access to ITMS channel, please contact your account manager or call 10000.";				
<% end if%>
				}
			}		
			else if (rstatus == "1")
			{
				statusFlag = 1;
				if( lefttime >=0 )
				{
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					if( iretrycount >=5 )
					{
						var tmp = "The PASSWORD (password) entered is incorrect, the registration fails, please contact support manager process it";
					}
					else
					{
						var tmp = "The PASSWORD (password) entered is incorrect, please re-register after verification";
					}
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					var tmp = "Register on the EMS failed! Retrying.";					
<% else %>
					var tmp = "Registration failed on ITUNES! Please check whether the logic ID and password are correct or contact your account manager or call 10000. (Tries left:" + lefttime.toString() + "）";
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
					tmp = "LOID or Password is incorrect, make sure to re-enter (Tries left:" + lefttime.toString() + "）";
<% end if%>
					return tmp;
				}
				else
				{			
<%if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>		
					return "Registration failed on EMS! Please contact your account manager or call 10086.";
<%else%>
					return "Registration failed on ITMS! Please contact your account manager or call 10086.";
<%end if%>
				}
			}
			else if (rstatus == "2")
			{
				statusFlag = 2;
				if( lefttime >=0 )
				{					
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					if( iretrycount >=5 )
					{
						var tmp = "LOID entered in ITMS platform does not exist, the registration fails, please contact support manager process";
					}
					else
					{
						var tmp = "LOID entered in ITMS platform does not exist, the registration fails, please re-register after verification";
					}
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					var tmp = "Register on the EMS failed! Retrying.";						
<%else%>
					var tmp = "Registration failed on ITUNES! Please check whether the logic ID or password are correct or contact your account manager or call 10000. (Tries left:" + lefttime.toString() + "）";
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
					tmp = "LOID or Password is not correct, make sure to re-enter (Tries left:" + lefttime.toString() + "）";
<% end if%>
					return tmp;
				}
				else
				{			
<%if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>		
					return "Registration failed on EMS! Please contact your account manager or call 10086.";
<%else%>
					return "Registration failed on ITMS! Please contact your account manager or call 10086.";
<%end if%>
				}
			}
			else if (rstatus == "3")
			{
				statusFlag = 3;
				if( lefttime >=0 )
				{									
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					var tmp = "The PASSWORD (password) entered is incorrect, please re-register after verification";
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					var tmp = "Register on the EMS failed! Retrying.";						
<%else%>
					var tmp = "Registration failed on ITUNES! Please check whether the logic ID or password are correct or contact your account manager or call 10000. (Tries left:" + lefttime.toString() + "）";
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
					tmp = "LOID or Password is not correct, make sure to re-enter (Tries left:" + lefttime.toString() + "）";
<% end if%>
					return tmp;
				}
				else
				{
<%if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>		
					return "Registration failed on EMS! Please contact your account manager or call 10086.";
<%else%>
					return "Registration failed on ITMS! Please contact your account manager or call 10086.";
<%end if%>
				}			
			}
			else if (rstatus == "4")
			{
				statusFlag = 4;
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
				return "ITMS issued business overtime, please re-register or contact your support manager process it.";
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
				return "Registration Timeout! Please check the link and try again or contact your account manager or call 10086";
<%else%>
				return "Registration Timeout! Please check the link and try again or contact your account manager or call 10000";
<% end if%>
			}
			else if (rstatus == "5")
			{
				statusFlag = 5;
				isRegSuccess = true;
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
				return "The terminal has been successfully registered in ITMS platform, please contact your support manager for processing, then re-register.";
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
				return "RMS has been registered successfully, you do not need to register.";				
<%else%>
				return "ITMS has been registered successfully, you do not need to register.";
<% end if%>
			}	
			else if (rstatus == "0")
			{
				if(rresult == "1")
				{
					statusFlag = 7;
					isRegSuccess = true;
					percent = 100;//change to 100%
					var serviceList = "";
					
					if(getCookie("RegServiceIPTV") == 1)
					{
						if(serviceList == "")
							serviceList = serviceList + "ITV";
						else
							serviceList = serviceList + "、ITV";
					}
					
					if(getCookie("RegServiceINTERNET") == 1)
					{
						if(serviceList == "")
							serviceList = serviceList + "INTERNET";
						else
							serviceList = serviceList + ",INTERNET";
					}
						
					if(getCookie("RegServiceVOIP") == 1)
					{
						if(serviceList == "")
							serviceList = serviceList + "VOIP";
						else
							serviceList = serviceList + ",VOIP";
					}
					
					if(getCookie("RegServiceOther") == 1)
					{
						if(serviceList == "")
							serviceList = serviceList + "Other";
						else
							serviceList = serviceList + ",Other";
					}
					
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					var infoStr = "ITMS platform successfully sending data, it total issued " + serviceList.toString() + " " + serviceNum.toString() + "business.";
<%else%>
					var infoStr = "";
<% end if%>					
					if((serviceNum == "0") || (serviceList.length == 0)){
						infoStr = "Sending ITMS platform business data successfully.";
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
						infoStr = "Registered, issued business success. Please close the page.";
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
						infoStr = "Sending RMS platform business data successfully.";
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
						var dateT = new Date();
						var difDateT = (dateT.getTime() - getCookie('RegStartTime')) / 1000;
						var showDateT;
						if ( difDateT >= 60 )
							showDateT = parseInt(difDateT/60) + 'miniutes' + parseInt(difDateT%60) + 'seconds';
						else
							showDateT = parseInt(difDateT%60) + 'seconds';
						infoStr = "ITMS platform business successfully sending data, the total length of registration: " + showDateT;
<% end if%>
					}
					else{
						infoStr = "ITMS platform business successfully sending data, it total issued" + serviceList.toString() + " " + serviceNum.toString() + "business.";
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
						infoStr = "Registered, issued business success were issued" + serviceList.toString() + " " + serviceNum.toString() + "business.Please close the page.";
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
						infoStr = "RMS platform business successfully sending data, it total issued" + serviceList.toString() + " " + serviceNum.toString() + "business.";
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
						var dateT = new Date();
						var difDateT = (dateT.getTime() - getCookie('RegStartTime')) / 1000;
						var showDateT;
						if ( difDateT >= 60 )
							showDateT = parseInt(difDateT/60) + 'miniutes' + parseInt(difDateT%60) + 'seconds';
						else
							showDateT = parseInt(difDateT%60) + 'seconds';
						infoStr = "ITMS platform business successfully sending data, it total issued" + serviceList.toString() + " " + serviceNum.toString() + "business, registered a total duration of: " + showDateT;
<% end if%>
					}

<% if tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then %>
					regsta = true;
					var infoStr =  "registration success.";
<%end if%>						
					return infoStr;
				}
				else if(rresult == "2")
				{
					statusFlag = 8;
					isRegSuccess = true;
					percent = 100;//change to 100%
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					return "ITMS platform business do not issued or a exception occured, please contact support manager process it";
<%else%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
					return "Registration is successful, the business issued fails, please contact the number 10000.";	
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					return "RMS delivers business exception occurs! Please contact your account manager or call 10086.";							
<%else%>
					return "ITMS delivers business exception occurs! Please contact your account manager or call 10000.";			
<% end if%>
<% end if%>
				}
				else if(rresult == "99")
				{
					statusFlag = 9;
					percent = 50;//change to 50%
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					return "Terminal registration in ITMS platform is successful, the next step is to send data from the ITMS Platform";
<%else%>
<% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes"  then %>
					return "ITMS business issued.";	
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					return "Waiting RMS platform to send business data.";	
<%else%>
					return "ITMS successful registration, Wait ITMS platform to send business data.";			
<% end if%>
<% end if%>
				}
				else if(rresult == "0")
				{
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
						if ( percent <= 50 && 9 != statusFlag )
						{
							if ( '1' == rs )
								statusFlag = 9;
							percent = 50;//change to 50%
							return "ITMS successful registration, Wait ITMS platform to send business data.";
						}
<% end if%>
					var fetchStart = getCookie("RegServiceFetch");	
					var serviceNameId = getServiceNameId(serviceName);
					statusFlag = 10;
					isRegSuccess = true;	
					
					if(fetchStart != 1 || serviceNum <= 0)
					{
						percent = 60;//change to 60%
						if(serviceNameId != 0)
							document.cookie = "RegServiceFetch=1";						
							document.cookie = "RegServiceNameId=0";
							document.cookie = "RegServiceIPTV=0";
							document.cookie = "RegServiceINTERNET=0";
							document.cookie = "RegServiceVOIP=0";
							document.cookie = "RegServiceOther=0";
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
						return "ITMS platform data Being issued, do not power off or plug/pull fiber";
<% elseif tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>
					return "RMS platform is being issued traffic data, do not power off or pull the fiber.";	
<%else%>
						return "ITMS platform is being issued traffic data, do not power off or pull the fiber.";			
<% end if%>
					}else
					{
						var last_ServiceNameId = getCookie("RegServiceNameId");	
						var perServiceStep = parseInt(40 / serviceNum);
						var serviceNameStr = "";
					
						if(percent < 60)
							percent = 60;
	
						document.cookie = "RegServiceNameId=" + serviceNameId.toString();
						switch(serviceNameId)
						{
							case 1:
								document.cookie = "RegServiceIPTV=1";
								serviceNameStr = "iTV";
								break;
							case 2:
								document.cookie = "RegServiceINTERNET=1";
								serviceNameStr = "INTERNET";
								break;			
							case 3:
								document.cookie = "RegServiceVOIP=1";
								serviceNameStr = "VOIP";
								break;
							case 4:
								document.cookie = "RegServiceIPTV=1";
								document.cookie = "RegServiceINTERNET=1";
								serviceNameStr = "iTV,INTERNET";
								break;
							case 5:
								document.cookie = "RegServiceIPTV=1";
								document.cookie = "RegServiceVOIP=1";
								serviceNameStr = "iTV,VOIP";
								break;
							case 6:
								document.cookie = "RegServiceINTERNET=1";
								document.cookie = "RegServiceVOIP=1";
								serviceNameStr = "INTERNET,VOIP";
								break;
							case 7:
								document.cookie = "RegServiceIPTV=1";
								document.cookie = "RegServiceINTERNET=1";
								document.cookie = "RegServiceVOIP=1";
								serviceNameStr = "iTV,INTERNET,VOIP";
								break;								
							default:
								document.cookie = "RegServiceOther=1";
								serviceNameStr = "Other";
								break;										
						}								
						
						if(last_ServiceNameId != serviceNameId)
						{
							percent = percent + perServiceStep;
							if(percent > 99)
								percent = 99;
						}
<%if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>	
						return "RMS platform is being issued" + serviceNameStr.toString() + "Business data, do not power off or pull the fiber.";	
<% else %>				
						return "ITMS platform is being issued" + serviceNameStr.toString() + "Business data, do not power off or pull the fiber.";		
<% end if %>
					}
				}
			}
		}
		return "Not receive remote service configuration";			
	}
	
	function showRegStatus()
	{
			var rs=getPageStatus();
			isHasRetryTimesSubmit = getCookie("HasRetryTimesSubmit");
			if(((rs == "2") || (rs == "1")) && !registerend)
			{				
				var timeoutcnt=gettimeoutcnt();
				var timeoutcnt_2=gettimeoutcnt_2();
				var statusinfo = showMsg();
				updateprogress();
				if(getCookie("RegStatusChanged_Flag") != statusFlag){
						document.cookie = "RegStatusHasChanged=1";
				}
				var tdResultElement = getElement('tdResult');
				checkQuitstatus();	
				if(rs == "1")
				{
					if(0 == timeoutcnt){
						document.cookie = "RegStatusChanged_Flag=" + statusFlag.toString();
						document.cookie = "RegStatusHasChanged=0";
					}
					setDisplay("loading",1);
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
					var HintMsg = "Note: do not plug/pull fiber (within 10 minutes) during registration";
					var PonMsg = "This terminal is<% if tcwebApi_get("XPON_Common","xponMode","h") = "EPON" then %>EPON<% else %>GPON<% end if %>E8-C terminal";
					var tdShowElement = getElement('tdShow');
					tdShowElement.innerHTML = "<div align='center'><font style='FONT-SIZE: 13px' align='center'>" + HintMsg + "</font></div>";
					var tdShowPonElement = getElement('tdShowPon');
					tdShowPonElement.innerHTML = "<div align='center'><font style='FONT-SIZE: 13px' align='center'>" + PonMsg + "</font></div>";
<%end if%>
					tdResultElement.innerHTML = "<div align='center'><font style='FONT-SIZE: 13px' align='center'>" + statusinfo + "</font></div>";
					setTimeout(refreshPage,refreshtimer);
				}
				if(rs == "2")
				{
					var isReshasChanged = getCookie("RegStatusHasChanged");
					if((0 != statusFlag) && (9 != statusFlag) && (10 != statusFlag) && isReshasChanged){
						with (getElById('ConfigForm'))
						{
							registerend = true;
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
							setDisplay("tdShow", 0);
							setDisplay("tdShowPon", 0);
<%end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYJXSupported", "h") = "Yes"  then %>
							setDisplay("loading",1);
<%else%>
							setDisplay("loading",0);
<%end if%>
							setDisplay("trReturn", 1);
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
							hidePercent();
<% end if%>
							if(statusFlag < 4 && isHasRetryTimesSubmit != 1){
								document.ConfigForm.tryTimes.value = 1 + iretrycount;
								document.ConfigForm.tryTimesflg.value = "1";
								document.cookie = "HasRetryTimesSubmit=1";
								document.cookie = "PageUpdate=1";
								document.ConfigForm.submit();
							}
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then %>							
							tdResultElement.innerHTML = "<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color='#FF0000' size='2'>" + statusinfo + "</font></strong></P>";
<% else %>						
							tdResultElement.innerHTML = "<P><strong><font color='#FF0000' size='2'>" + statusinfo + "</font></strong></P>";
<% end if %>
						}
					}
					else{
						if(timeoutcnt <  uplimitcount)
						{
							if(percent == 40)
							{
								if(timeoutcnt_2 <  regITMSlimitcount)
								{
										document.cookie = "RegPagetimeoutcount_2=" + (timeoutcnt_2+1).toString();
								}						
								else
								{
									registerend = true;
									setDisplay("trReturn", 1);
									setDisplay("loading",0);
									tdResultElement.innerHTML = '<P><img src="/img/iconFail.jpg"><strong><font color="#FF0000" size="2">There is no access to ITMS channel ,Please contact your account manager or call 10000</font></strong></P>';
<% if tcWebApi_get("WebCustom_Entry", "isCTJOYME2Supported", "h") = "Yes"  then %>
									if ( "8" == acsresult )
										tdResultElement.innerHTML = '<P><img src="/img/iconFail.jpg"><strong><font color="#FF0000" size="2">Registration Timeout! Please check the link and try again or contact your account manager or call 10086</font></strong></P>';
<%end if%>
								}
							}				
							document.cookie = "RegPageStatus=1";
							document.cookie = "RegPagetimeoutcount=" + (timeoutcnt+1).toString();
							//document.ConfigForm.submit();		
							showRegStatus();
						}
						else
						{
							registerend = true;
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
							setDisplay("tdShow", 0);
							setDisplay("tdShowPon", 0);
<%end if%>
							setDisplay("trReturn", 1);
							setDisplay("loading",0);
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
							hidePercent();
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isCMCCSupported", "h") = "Yes"  then %>	
						  tdResultElement.innerHTML = '<P><img src="/img/iconFail.jpg"><strong><font color="#FF0000" size="2">There is no access to RMS channel, please contact your account manager or call 10086</font></strong></P>';
<% else %>
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
							tdResultElement.innerHTML = '<P><img src="/img/iconFail.jpg"><strong><font color="#FF0000" size="2">ITMS business issued timeout, re-register or contact support manager process</font></strong></P>';
<% elseif tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes" then%>
							tdResultElement.innerHTML = '<P><img src="/img/iconFail.jpg"><strong><font color="#FF0000" size="2">registeration on ITMS fails, please contact your account manager or call 10000</font></strong></P>';
<% else %>
							tdResultElement.innerHTML = '<P><img src="/img/iconFail.jpg"><strong><font color="#FF0000" size="2">There is no access to ITMS channel, please contact your account manager or call 10000</font></strong></P>';
<% end if %>
<%end if%>
						}
					}
				}
			}
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then %>			
			else{
				if(regsta == false){
					var statusinfo = showMsg();
					var tdResultElement = getElement('tdResult');
					updateprogress();
					setDisplay("trReturn", 1);
					tdResultElement.innerHTML = "<div align='center'><font style='FONT-SIZE: 13px' align='center'>" + statusinfo + "</font></div>";
				}
			}
<% end if %>			
	}
	
	var isStateGetOk = 0;
	function checkSyncPageFinish()
	{
		checkSyncPage();
	}
	setTimeout("checkSyncPageFinish()", 10000);

	function checkSyncPage()
	{
		var stobj = window.frames['statusfrm'].location;

		if ( stobj )
		{
			if ( '/cgi-bin/regstatus.asp' != stobj.pathname )
			{
				window.frames['statusfrm'].location.href = '/cgi-bin/regstatus.asp';
				setTimeout(checkSyncPage, 10000);
				return 0;
			}
			else if ( 0 == isStateGetOk )
			{
				syncRegStatus();
				setTimeout(checkSyncPage, 10000);
			}
		}

		return 1;
	}
	
	function syncRegStatus()
	{
		var stobj = window.frames['statusfrm'].location;
		if ( stobj )
			stobj.reload();
	}
	
	var isFirstLoad = 1;
	function ifame_load_finish()
	{
		var ifameObj = window.frames['statusfrm'];

		if ( isFirstLoad || 0 == checkSyncPage() )
		{
			isFirstLoad = 0;
			return;	
		}
		
		if ( null != ifameObj && null != ifameObj.rPhyStatus )
		{
			rPhyStatus = ifameObj.rPhyStatus;
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCYCQSupported", "h") = "Yes" then%>
			rPhyStatus = 'up'
<% end if%>
			rLinkState = ifameObj.rLinkState;
			
			rstatus = ifameObj.rstatus;
			rresult = ifameObj.rresult;
			rnewStatus = ifameObj.rnewStatus;
			rnewResult = ifameObj.rnewResult;
			
			acsresult = ifameObj.acsresult;

			serviceName = ifameObj.serviceName;
			serviceNum = ifameObj.serviceNum;
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCAUSupported", "h") = "Yes"  then %>			
			authStatus = ifameObj.authStatus;
<% end if%>			
			pppup = ifameObj.pppup;
<% if tcWebApi_get("WebCustom_Entry", "isCTPONBIND2WebSupported", "h") = "Yes"  then %>
			isVoipSet = ifameObj.isVoipSet;
<% end if%>
			isStateGetOk = 1;
		}
		
		showRegStatus();
	}
	
	showRegStatus();
	</SCRIPT>

</FORM></BODY></HTML>
