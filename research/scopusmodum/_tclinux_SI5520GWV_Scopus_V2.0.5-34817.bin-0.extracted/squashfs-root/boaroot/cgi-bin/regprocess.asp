<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="/JS/stylemain.css" type="text/css" rel="stylesheet">
<title>Business Registry</title>
<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
<SCRIPT language=javascript type=text/javascript>var curUser="<% tcWebApi_get("Account_Entry0","curUserName","s") %>";</SCRIPT>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" alink="#000000" link="#000000" vlink="#000000" onLoad="LoadFrame()" background="/img/bg.jpg">
<script language="JavaScript" type="text/javascript">
function userInfoCon(domain,  Status, Limit, Times, Result)
{
	this.domain = domain;
	this.Status = Status;
	this.Limit = Limit;
	this.Times = Times;
	this.Result = Result;
}
var userinfo = new Array(new userInfoCon("0","255","10","0","99"),null);
var timerID;	
var resultReq;  
var regAccount = "<% tcWebApi_get("Register_Entry","BroadBandName","s") %>";
var regDomain = "";
var IsRegProcessing = "<% tcWebApi_get("Register_Entry","RegProcessing","s") %>";
var IsThreeFail = "<% tcWebApi_get("Register_Entry","FailTimes","s") %>";
var IsTimesExceed = 0;
var IsProcessing = 0;
var zeroflag = 0;
var IsConfirm = 0;
var fialthree = 0;
var tempBool = 0;
var waitTr069Process = 0;
var LoginTimes = 0;
function setPromptScreen()
{
with (getElById('ConfigForm'))
{
setDisplay('mainScreen', 0);
setDisplay('promptScreen', 1);
setDisplay('waitScreen', 0);
}
}
function SetAllPercent()
{
	with (getElById('ConfigForm'))
	{
		var tdPercent = getElement('tdprogress');
		tdPercent.innerHTML = "0%";
		setDisplay('tdResult', 1);
		setDisplay('mainScreen', 0);
		setDisplay('promptScreen', 0);
		setDisplay('waitScreen', 1);
	}
}
function closeWin()
{
	alert("e home terminal restart, close this page");
	location.replace("/cgi-bin/index2.asp");
}
function queryRegisterResult()
{
	/*var xmlhttp = CreateXMLHttp();
	xmlhttp.open('post', 'AutoqueryRegResult.cgi', false) ;
	xmlhttp.send(null);
	var Resultresponse = xmlhttp.responseText;
	var list = Resultresponse.split('.');
	var result = list[0];
	var percent = list[1];*/
	
	var result = "08";
	var percent = "1";
	
	var tdResultElement = getElement('tdResult');
	var tdWaitInfo = getElement('waitinfo');
	var tdPercent = getElement('tdprogress');
	if (result.indexOf('8') > -1)   
	{
		SetAllPercent();
		setDisplay('buttonOK', 1);
		setText('broadbandusername', "");
		setText('customer_ID', "");
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/icon03.jpg";
		tdResultElement.innerHTML = '<B>Registered successfully, business issued successfully, you need to restart the gateway, please wait<B>';
		IsProcessing = 0;
	}
	else if (result.indexOf('2') > -1)   
	{
		SetAllPercent();
		setDisplay('buttonOK', 1);
		setText('broadbandusername', "");
		setText('customer_ID', "");
		setDisplay('tdResult', 1);
		setPromptScreen();
		IsProcessing = 0;
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		tdResultElement.innerHTML = '<B>Registered successfully,business issued failed, please contact 10000<B>';
	}
	else if (result.indexOf('7') > -1)   
	{
		SetAllPercent();
		setDisplay('buttonOK', 1);
		setText('broadbandusername', "");
		setText('customer_ID', "");
		setDisplay('tdResult', 1);
		setPromptScreen();
		IsProcessing = 0;
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/icon03.jpg";
		tdResultElement.innerHTML = '<B>Registered successfully, business issued successfully<B>';
	}
	else if (result.indexOf('4') > -1)   
	{
		setDisplay('tdResult', 1);
		setPromptScreen();
		IsProcessing = 0;
		setDisplay('buttonOK', 1);
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		tdResultElement.innerHTML = '<B>Business issueing timeout, please try again<B>';
	}
	else if (result.indexOf('0') > -1)   
	{
		tdPercent.innerHTML = percent + "%";
		setDisplay('buttonOK', 1);
		if (0 == zeroflag)
		{
			setDisplay('tdResult', 1);
			setDisplay('mainScreen', 0);
			setDisplay('promptScreen', 0);
			setDisplay('waitScreen', 1);
			IsProcessing = 1;
			zeroflag = 1;
			document.getElementById("waitIcon").src = "/img/progress15M.gif";
			tdWaitInfo.innerHTML = '<B>Registration is successful, the business is issueing, please wait<B>';
		}
		resultReq = setTimeout("queryRegisterResult()", 1000);
	}
	else if (result.indexOf('6') > -1)   
	{
		tdPercent.innerHTML = percent + "%";
		resultReq = setTimeout("queryRegisterResult()", 1000);
	}
	else if (result.indexOf('99') > -1)
	{
		setDisplay('tdResult', 1);
		IsProcessing = 1;
		setDisplay("idPrompt", 0);
		tdResultElement.innerHTML = '<table><tr><td width="30%">&nbsp;</td><td><img src="/img/icon03.jpg">&nbsp;&nbsp;</td><td style="font-size: 13px"><B>注册成功<B></td></tr></table>';
		resultReq = setTimeout("queryRegisterResult()", 1000);
	}
}
function queryThreeFail()
{
	if (fialthree != '60')
	{
		fialthree = fialthree + 1;
		setPromptScreen();
		resultReq = setTimeout("queryThreeFail()", 1000);
		setDisplay("trTime", 1);
		setDisplay("trReturn", 0);
		getElement("tdTime").innerHTML = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Still has<b><font color='red'>" + parseInt(60 - fialthree)+ "</font></b>seconds！";
	}
	else
	{
		fialthree = 0;
		setDisplay("trTime", 0);
		setDisplay("trReturn", 1);
	}
}
var queryTimes = 0;
var currentState = "99";
function queryRegisterStatus()
{
	/*var xmlhttp = CreateXMLHttp();
	xmlhttp.open('post', '/cgi-bin/regprocess.cgi', false);
	xmlhttp.send(null);
	alert(xmlhttp.responseText);
	var state1 = xmlhttp.responseText;
	var index = state1.indexOf('\r\n');
	var list = state1.split('.');
	var state = list[0];
	var times = list[1];
	var percent = list[2];*/

	var state = "00";
	var times = "2";
	var percent = "1";
	
	LoginTimes = times;  
	if (queryTimes == 0)  
	{
		queryTimes++;
		if ((state.indexOf("99") <= -1) && (state.indexOf("6") <= -1))
		{
			currentState = state;   
		}
		state = "6";
	}
	else if ((queryTimes > 0) && (queryTimes < 10)) 
	{
		queryTimes++;
		if ((currentState.indexOf("99") > -1) && (state.indexOf("6") <= -1))  
		{
			currentState = state;
		}
		if (percent.indexOf('1') > -1)
		{
			percent = queryTimes;
			state = "6";
		}
	}
	else if (queryTimes == 10)
	{
		queryTimes++;
		if (percent.indexOf('1') > -1)
		{
			percent = queryTimes;
		}
		if (currentState.indexOf("99") <= -1)
		{
			state = currentState;
		}
	}
	var tdResultElement = getElement('tdResult');
	var tdWaitInfo = getElement('waitinfo');
	var iTimes = 0;
	var tdPercent = getElement('tdprogress');
	var tempvalue = 0;
	if (state.indexOf('0') > -1)   
	{
		SetAllPercent();
		IsProcessing = 0;
		setDisplay('buttonOK', 0);
		setPromptScreen();
		setDisplay("idPrompt", 0);
		tdResultElement.innerHTML = '<table><tr><td width="30%">&nbsp;</td><td><img src="/img/icon03.jpg">&nbsp;&nbsp;</td><td style="font-size: 13px"><B>Registration Success<B></td></tr></table>';
		//resultReq = setTimeout("queryRegisterResult()", 1500);
	}
	else if (state.indexOf('1') > -1) 
	{
		SetAllPercent();
		setText('broadbandusername', "");
		setText('customer_ID', "");
		if (parseInt(times) < parseInt(userinfo[0].Limit))
		{
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		IsProcessing = 0;
		tdResultElement.innerHTML = '<B> ID does not exist! Please try again (Tries left:' + parseInt(userinfo[0].Limit - times) +')<B>';
		}
		else
		{
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		IsTimesExceed = 1;
		IsProcessing = 0;
		tdResultElement.innerHTML = '<B>ID does not exist! Failed to register, please contact 10000<B>';
		}
	}
	else if (state.indexOf('2') > -1) 
	{
		SetAllPercent();
		setText('broadbandusername', "");
		setText('customer_ID', "");
	if (parseInt(times) < parseInt(userinfo[0].Limit))
	{
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		IsProcessing = 0;
		tdResultElement.innerHTML = '<B>Internet account does not exist. Please try again (Tries left!:' + parseInt(userinfo[0].Limit - times) +')<B>';
	}
	else
	{
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		IsTimesExceed = 1;
		IsProcessing = 0;
		tdResultElement.innerHTML = '<B>Internet account does not exist! Failed to register, please contact 10000<B>';
	}
	}
	else if (state.indexOf('3') > -1) 
	{
		SetAllPercent();
		setText('broadbandusername', "");
		setText('customer_ID', "");
	if (parseInt(times) < parseInt(userinfo[0].Limit))
	{
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		IsProcessing = 0;
		tdResultElement.innerHTML = '<B>Identification does not match with the broadband account! Please try again (Tries left:' + parseInt(userinfo[0].Limit - times) +')<B>';
	}
	else
	{
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		IsTimesExceed = 1;
		IsProcessing = 0;
		tdResultElement.innerHTML = '<B>ID does not match with the broadband account! Failed to register, please contact 10000<B>';
	}
	}
	else if (state.indexOf('4') > -1)  
	{
		setText('broadbandusername', "");
		setText('customer_ID', "");
	if(parseInt(times) < parseInt(userinfo [0].Limit))
	{
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconFail.jpg";
		IsProcessing = 0;
		tdResultElement.innerHTML = '<B>Registration Timeout! Please check the link and try again<B>';
	}
	}
	else if (state.indexOf('5') > -1)   
	{
		SetAllPercent();
		setText('broadbandusername', "");
		setText('customer_ID', "");
		setDisplay('tdResult', 1);
		setPromptScreen();
		setDisplay("idPrompt", 1);
		document.getElementById("promptIcon").src = "/img/iconSucess.jpg";
		IsProcessing = 0;
		tdResultElement.innerHTML = '<B>It has been registered, no need to register again<B>';
	}
	else if (state.indexOf('6') > -1)
	{
		tdPercent.innerHTML = percent + "%";
		setDisplay('tdResult', 1);
		setDisplay('mainScreen', 0);
		setDisplay('promptScreen', 0);
		setDisplay('waitScreen', 1);
		IsProcessing = 1;
		tdWaitInfo.innerHTML = '<B>Being user registration, please wait<B>';
		timerID = setTimeout("queryRegisterStatus()", 1200);
	}
	else if (state.indexOf('99') > -1)
	{
		if (parseInt(times) < parseInt(userinfo[0].Limit))
		{
			if(0 == userinfo[0].Result)
			{
				setDisplay('tdResult', 1);
			}
			else
			{
			}
		}
	}
}
function WaitTr069ProcessFunction()
{
	if (waitTr069Process != '4')
	{
		waitTr069Process = waitTr069Process + 1;
		resultReq = setTimeout("WaitTr069ProcessFunction()", 1000);
	}
	else
	{
		waitTr069Process = 0;
		queryRegisterStatus();
	}
}
function LoadFrame()
{
	with (getElById('ConfigForm'))
	{
		var tdPercent = getElement('tdprogress');
		var tdResultElement = getElement('tdResult');
		setText('broadbandusername', regAccount);
		if (IsRegProcessing == '1')
		{
			setDisplay('tdResult', 1);
			setDisplay('mainScreen', 0);
			setDisplay('promptScreen', 0);
			setDisplay('waitScreen', 1);
		}
		if (IsRegProcessing == '0')
		{
			if (userinfo[0].Status != '255' && userinfo[0].Status != '99')
			{
				setDisplay('tdResult', 1);
				setDisplay('mainScreen', 0);
				setDisplay('promptScreen', 0);
				setDisplay('waitScreen', 1);
			}
		}
		if (IsThreeFail != '0')
		{
			tdResultElement.innerHTML = '<B>Your have failed to register for consecutive three times, wait 60 seconds before re-registration<B>';
			fialthree = parseInt(IsThreeFail);
			document.getElementById("promptIcon").src = "/img/icon02.jpg";
			queryThreeFail();
		}
		else
		{
			WaitTr069ProcessFunction();
		}
	}
}
function CheckForm()
{
	var bandName = getValue("broadbandusername");
	var customer = getValue("customer_ID");
	var tdResultElement = getElement('tdResult');
	if (bandName == '')
	{
		IsConfirm = 0;
		tdResultElement.innerHTML = '';
		alert("broadband account can not be empty!");
		setDisplay('mainScreen', 1);
		setDisplay('promptScreen', 0);
		setDisplay('waitScreen', 0);
		return false;
	}
	if (customer == '')
	{
		IsConfirm = 0;
		tdResultElement.innerHTML = '';
		alert("Please enter the ID number!");
		setDisplay('mainScreen', 1);
		setDisplay('promptScreen', 0);
		setDisplay('waitScreen', 0);
		return false;
	}
	if (bandName.length > 128)
	{
		IsConfirm = 0;
		tdResultElement.innerHTML = '';
		alert("broadband account length can not exceed 128 bits!");
		setDisplay('mainScreen', 1);
		setDisplay('promptScreen', 0);
		setDisplay('waitScreen', 0);
		return false;
	}
	if (customer.length > 128)
	{
		IsConfirm = 0;
		tdResultElement.innerHTML = '';
		alert("The length of ID number can not exceed 128 bits!");
		setDisplay('mainScreen', 1);
		setDisplay('promptScreen', 0);
		setDisplay('waitScreen', 0);
		return false;
	}
	setDisplay('mainScreen', 0);
	setDisplay('promptScreen', 0);
	var tdPercent = getElement('tdprogress');
	tdPercent.innerHTML = "0%";
	setDisplay('waitScreen', 1);
	return true;
}
function AddSubmitParam(Form,type)
{
	with (getElById('ConfigForm'))
	{
		var bandName = getValue("broadbandusername");
		var customer = getValue("customer_ID");
		Form.addParameter(userinfo[0].domain + ".UserName", bandName);
		Form.addParameter(userinfo[0].domain + ".UserId", customer);
		//Form.setAction("/cgi-bin/register.asp");
	}
}
function onOK()
{
	with (getElById('ConfigForm'))
	{
		if (1 == IsProcessing)
		{
			return;
		}
		if (0 == IsConfirm)
		{
			IsConfirm = 2;
			submit();
		}
	}
}
function pageHeight()
{
	return window.innerHeight != null? window.innerHeight : document.documentElement && document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body != null? document.body.clientHeight : null;
}
function onReturn()
{
	with (getElById('ConfigForm'))
	{
		//if ((parseInt(LoginTimes) >= parseInt(userinfo[0].Limit)))
		{
			//location.replace("/cgi-bin/register.asp");
		}
		/*else
		{
			setDisplay('mainScreen', 1);
			setDisplay('promptScreen', 0);
			setDisplay('waitScreen', 0);
		}*/
	}
}
function onReset()
{
	with (getElById('ConfigForm'))
	{
		setText('broadbandusername', "");
		setText('customer_ID', "");
	}
}
</script>
<form id="ConfigForm" name="ConfigForm" action="/cgi-bin/register.asp" method="post">
<div id="mainScreen" style="display:none">
<script language="javascript" type="text/javascript">
var winHeight = pageHeight();
if (winHeight > 494)
{
winHeight = (winHeight - 494)/2;
}
else
{
winHeight = 80;
}
document.write('<table width="1008" height="494" align="center" background="/img/bg.jpg" style="margin-top:'+winHeight+'px">');
</script>
<tr height="40%" valign="top">
<td>
<table style="margin-top:150px" align="right">
<tr>
<td style="font-size:13px; margin-top:100px"><a href="/cgi-bin/index2.asp">Back to login page</a></td>
<td width="50%">&nbsp;</td>
</tr>
</table>
</td>
</tr>
<tr valign="top">
<td colspan="3">
<table>
<tr><td colspan="3">&nbsp;</td></tr>
<tr>
<td width="54%">&nbsp;</td>
<td colspan="2" style="font-size: 13px">Note: Please enter the Internet account number and ID number in turn.</td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<tr>
<td width="54%">&nbsp;</td>
<td align="right" style="font-size: 13px">account number：</td>
<td>
<input type="text" name="broadbandusername" id="broadbandusername" height="20" size="20" value="" style="font-family:'Arial';width:150px">&nbsp;<FONT color=red>*</FONT></td>
</tr>
<tr>
<td width="54%">&nbsp;</td>
<td align="right" style="font-size: 13px">ID number</td>
<td>
<INPUT type='password' name="customer_ID" id="customer_ID" height="20" size="20" value="" style="font-family:'Arial';width:150px">
</td>
</tr>
<tr>
<td width="54%">&nbsp;</td>
<td colspan="2">
<table width="100%" height="15%" border="0">
<tr>
<tr>
<td width="20%" height="25">&nbsp;</td>
<td width="33%"><input type="button" id="btnOK" value="OK" style="width:60" onClick="onOK();"></td>
<td width="47%"><input type="button" id="btnCancel" value="Reset" style="width:60" onClick="onReset();"></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</div>
<div id="promptScreen" style="display:none">
<script language="javascript" type="text/javascript">
var winHeight = pageHeight();
if (winHeight > 494)
{
winHeight = (winHeight - 494)/2;
}
else
{
winHeight = 80;
}
document.write('<table width="1008" height="494" align="center" background="/img/bg.jpg" style="margin-top:'+winHeight+'px">');
</script>
<tr height="50%" valign="top">
<td>
<table style="margin-top:150px" align="right">
<tr>
<td style="font-size:13px; margin-top:100px"><a href="/cgi-bin/index2.asp">Back to login page</a></td>
<td width="50%">&nbsp;</td>
</tr>
</table>
</td>
</tr>
<tr valign="top">
<td>
<table width="40%" align="center">
<tr>
            <td id="idPrompt"><img id="promptIcon" src="/img/icon03.jpg">&nbsp;</td>
<td><div id="tdResult" style="font-size:13px;"></div></td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr id="trReturn">
<td colspan="2" align="center">
<div id="buttonOK" >
<input type="button" id="btnReturn" value="Back" style="width:60" onClick="onReturn();">
</div>
</td>
</tr>
<tr id="trTime" style="display:none">
<td>&nbsp;</td>
<td id="tdTime" style="font-size:13px;">
</td>
</tr>
</table>
</td>
</tr>
</table>
</div>
<div id="waitScreen">
<script language="javascript" type="text/javascript">
var winHeight = pageHeight();
if (winHeight > 494)
{
winHeight = (winHeight - 494)/2;
}
else
{
winHeight = 80;
}
document.write('<table width="1008" height="494" align="center" background="/img/bg.jpg" style="margin-top:'+winHeight+'px">');
</script>
<tr height="50%" valign="top">
<td>
<table style="margin-top:150px" align="right">
<tr>
<td style="font-size:13px; margin-top:100px" disabled="true"><a href="/cgi-bin/index2.asp">Back to login page</a></td>
<td width="50%">&nbsp;</td>
</tr>
</table>
</td>
</tr>
<tr valign="top">
<td colspan="3">
<table>
<tr>
<td width="40%">&nbsp;</td>
<td id='tdprogress' height="17" align="center">1%</td>
<td width="40%">&nbsp;</td>
</tr>
<tr>
<td width="40%">&nbsp;</td>
            <td><img id="waitIcon" src="/img/progress2M.gif"></td>
<td width="40%">&nbsp;</td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<tr>
<td width="40%">&nbsp;</td>
<td style="font-size: 13px" colspan="2">
<div id="waitinfo"><B>Being user egistration, please wait</B></div>
</td>
</tr>
</table>
</td>
</tr>
</table>
</div>
</form>
</body>
</html>
