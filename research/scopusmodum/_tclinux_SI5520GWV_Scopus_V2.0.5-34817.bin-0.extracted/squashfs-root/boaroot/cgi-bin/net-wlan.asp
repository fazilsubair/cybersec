<%
if Request_Form("SSID_Flag") = "1" then 
	TCWebApi_set("WebCurSet_Entry","wlan_id", "wlSsidIdx")
end if

if Request_Form("Save_Flag") = "1" then
	if Request_Form("wlSsidIdx") <> tcWebApi_get("WebCurSet_Entry","wlan_id", "h") then
		tcWebApi_constSet("WebCurSet_Entry", "wlan_id", "0")
	else
	TCWebApi_set("WLan_Common", "APOn", "hwlEnbl")
	TCWebApi_set("WLan_Common","WirelessMode", "hwlgMode")
	TCWebApi_set("WLan_Common","Channel", "wlChannel")
	TCWebApi_set("WLan_Entry","HT_RATE", "wlRate")
	TCWebApi_set("WLan_Common","TxPowerLevel","wlTxPwr")
	TCWebApi_set("WLan_Common","DtimPeriod","wlNetReauth")

	if Request_Form("bwControl") = "2" then
		tcWebApi_constSet("WLan_Common","HT_BW","1")
	else
		TCWebApi_set("WLan_Common","HT_BW","bwControl")
	end if

	TCWebApi_set("WLan_Common","HT_GI","giControl")	
	TCWebApi_set("WLan_Entry", "HideSSID", "hwlHide")
	TCWebApi_set("WLan_Entry","SSID", "wlSsid")	
	TCWebApi_set("WLan_Entry","HT_MCS","wlMcs")
	TCWebApi_set("WLan_Entry","EnableSSID","henableSsid")
        tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "0")
	if Request_Form("hwlgMode") = "6" then
		if Request_Form("bwControl") = "1" then
			tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "1")
		end if
	end if	
	if Request_Form("hwlgMode") = "7" then
		if Request_Form("bwControl") = "1" then
			tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "1")
		end if
	end if
	if Request_Form("hwlgMode") = "9" then
		if Request_Form("bwControl") = "1" then
			tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "1")
		end if
	end if
	if tcwebApi_get("WebCustom_Entry","isMaxStaNumSupported","h" ) = "Yes" then
		TCWebApi_set("WLan_Entry","MaxStaNum", "wlAssociateNum")
	end if
	TCWebApi_set("WLan_Entry", "AuthMode","hwlAuthMode")
	TCWebApi_set("WLan_Entry","WPAPSK","wlWpaPsk")
	TCWebApi_set("WLan_Entry","WEPAuthType","wlWep")
	'TCWebApi_set("WLan_Entry","AuthKeyLen","wlKeyBit")
	TCWebApi_set("WLan_Entry","EncrypType","wlWpa")
	TCWebApi_set("WLan_Entry","DefaultKeyID","wlKeyIndex")
	TCWebApi_set("WLan_Entry","Key1Str","hwlKeys0")
	TCWebApi_set("WLan_Entry","Key2Str","hwlKeys1")
	TCWebApi_set("WLan_Entry","Key3Str","hwlKeys2")
	TCWebApi_set("WLan_Entry","Key4Str","hwlKeys3")
	 if tcWebApi_get("Info_WLan","isDot1XSupported", "h") = "Yes" then
    			TCWebApi_set("WLan_Entry","RADIUS_Server","radiusSVR_IP1")
    			TCWebApi_set("WLan_Entry","RADIUS_Port","radiusSVR_Port1")
    			TCWebApi_set("WLan_Entry","RADIUS_Key","radiusSVR_Key1")
    end if

if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then	
if Request_Form("WpsActive") = "0" then 
	TCWebApi_set("WLan_Entry","WPSConfMode","WpsConfModeNone")
else
if Request_Form("hWpsStart") = "1" then 
	TCWebApi_set("Info_WLan","WPSActiveStatus","hWpsStart")
	TCWebApi_set("WLan_Entry","WPSConfMode","WpsConfModeAll")
	TCWebApi_set("WLan_Entry","WPSMode","hWPSMode")
	if Request_form("hWPSMode") = "0" then
		TCWebApi_set("WLan_Entry","enrolleePinCode","pinvalue")
	end if
		else
			if tcWebApi_get("Info_WLan","wlanWPStimerRunning", "h") = "0" then
				TCWebApi_set("WLan_Entry","WPSConfMode","WpsConfModeAll")
			elseif tcWebApi_get("Info_WLan","wlanWPStimerRunning", "h") = "N/A" then
					TCWebApi_set("WLan_Entry","WPSConfMode","WpsConfModeAll")
			end if
		end if
	end if
end if

	TCWebApi_commit("WLan_Entry")
	tcWebApi_save()
end if
end if

%>

<HTML><HEAD><TITLE>WLAN configuration</TITLE>
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
            value="Network->WLAN 2.4G" name=Selected_Menu> </FONT></B><SPAN 
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
	<SCRIPT language=JavaScript type=text/javascript>
var UserLevel = 1;
function doStartWPS(){
	var pinLen = 8;
	var Form = new webSubmitForm();
	if (addParameter(Form) == false)
	{
		return;
	}	
	if(getSelectVal("wpsmode") == 'ap-pin')
	{
		var pinval = getElement('pinvalue');
		if(isSafeStringIn(pinval.value,'0123456789') == false)
		{
			alert('PIN code should be integers range in "0123456789"');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
			return false;
		}
		var pinValue = pinval.value;
		if(pinValue.length != pinLen)
		{
			alert('Please enter the 8-digit PIN code');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
			return false;
		}
		if(isvalidpin(pinValue) == false)
		{
			alert('Enter the correct PIN code rule: 3 doubly odd bit and the even bit and an integer multiple of 10');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
			return false;
		}
	}
	var temp = getSelectVal("wpsmode");
	if(temp == 'ap-pin')
	{
		setText('hWPSMode', 0);
	}
	else
	{
		setText('hWPSMode', 1);
	}	
	setText('hWpsStart',1);
	if(getValue('isInWPSing')==0){
		alert("Please start WPS connection in 2 minutes.");
	}
	SubmitForm();	
	setTimeout("RefreshPage()",500);
	//document.ConfigForm.submit();
}
function stWlan(domain,enable,ssid,mode,channel,rate,power,wlHide,BeaconType,Encryption,AuthMode,KeyIndex,EncryptionLevel,WPAModes,IEEE11iEModes,BWControl,GIControl,MCSValue,TxRxStream,WPAWPA2Modes,WPSMode,PINValue)
{
	this.domain = domain;
	this.enable = enable;
	if(ssid == 'N/A')
		this.ssid = '';
	else
		this.ssid = ssid;
	
	var WirelessMode = 'b,g';
	if (mode == '0')
		WirelessMode = 'b,g';
	else if (mode == '1')
		WirelessMode = 'b';
	else if (mode == '4')
		WirelessMode = 'g';
	else if (mode == '6')
		WirelessMode = 'n';
	else if (mode == '7')
		WirelessMode = 'g,n';
	else if (mode == '9')
		WirelessMode = 'b,g,n';		
	else
		WirelessMode = 'b,g';			
	this.mode = WirelessMode;
	
	//this.channel = channel;
	if(channel == 'N/A')
		this.channel = 'Auto';
	else
		this.channel = channel;

	//this.rate = rate;
	if(rate == 'N/A')
		this.rate = 'Auto';
	else
		this.rate = rate;
	
	
	if(power == 'N/A')
		this.power = '1';
	else
		this.power = power;
	if (wlHide == '1')
		this.wlHide = '1';
	else
		this.wlHide = '0';

	var SecurMode = 'None';
	if (BeaconType == 'WEP-64Bits')
		SecurMode = 'Basic';
	else if (BeaconType == 'WEP-128Bits')
		SecurMode = 'Basic';
	else if (BeaconType == 'Radius-WEP64')
		SecurMode = 'Radius-WEP64';
	else if (BeaconType == 'Radius-WEP128')
		SecurMode = 'Radius-WEP128';
	else if (BeaconType == 'WPAPSK')
		SecurMode = 'WPA';
	else if (BeaconType == 'WPA2PSK')
		SecurMode = '11i';
	else if (BeaconType == 'WPAPSKWPA2PSK')
		SecurMode = 'WPAand11i';
		//wzb add
	else if (BeaconType == 'WPA')
        SecurMode = 'radiusWpa';
    else if (BeaconType == 'WPA2')
         SecurMode = 'radiuswpa2';
    else if (BeaconType == 'WPAWPA2')
          SecurMode = 'radiuswpawpa2';
	else//'OPEN'
		SecurMode = 'None';
	this.BeaconType = SecurMode;
	
	this.Encryption = Encryption;
	if(AuthMode == 'N/A')
		this.AuthMode = 'Both';
	else
		this.AuthMode = AuthMode;
	if(KeyIndex == 'N/A')
		this.KeyIndex = '1';
	else
		this.KeyIndex = KeyIndex;
	if(parseInt(EncryptionLevel.substr(4)) == '64')
		this.EncypBit = '64';
	else if(parseInt(EncryptionLevel.substr(4)) == '128')
		this.EncypBit = '128';
	else
		this.EncypBit = '64';
	if((WPAModes == 'N/A') || (WPAModes == 'NONE') || (WPAModes == 'WEP'))
		this.WPAModes = 'TKIP';
	else
		this.WPAModes = WPAModes;
	if((IEEE11iEModes == 'N/A') || (IEEE11iEModes == 'NONE') || (IEEE11iEModes == 'WEP'))
		this.IEEE11iEModes = 'TKIP';
	else
		this.IEEE11iEModes = IEEE11iEModes;
	this.BWControl = BWControl;
	this.GIControl = GIControl;
	if(MCSValue == 'N/A')
		this.MCSValue = '33';//Auto
	else
		this.MCSValue = MCSValue;
	this.TxRxStream = TxRxStream;	
	if((WPAWPA2Modes == 'N/A') || (WPAWPA2Modes == 'NONE') || (WPAWPA2Modes == 'WEP'))
		this.WPAWPA2Modes = 'TKIP';
	else
		this.WPAWPA2Modes = WPAWPA2Modes;	
	//if(WPSMode == '1' || WPSMode == 'N/A')
		this.WPSMode = 'ap-pbc';
	//else	
	//	this.WPSMode = 'ap-pin';
	this.PINValue = PINValue;
}
var srt_device = "<% tcWebApi_get("WLan_Common", "rt_device","s") %>";
var str_trstream = "1";
if(srt_device != "N/A")
{
	if(srt_device.substr(3) == "2")
		str_trstream = "2";
}
var Wlan = new Array(new stWlan("domain","<% tcWebApi_get("WLan_Entry", "EnableSSID","s") %>","<% tcWebApi_get("WLan_Entry","SSID","s") %>","<% tcWebApi_get("WLan_Common","WirelessMode","s") %>","<% tcWebApi_get("WLan_Common","Channel","s") %>","<% tcWebApi_get("WLan_Entry","HT_RATE","s") %>","<% tcWebApi_get("WLan_Common","TxPowerLevel","s") %>","<% tcWebApi_get("WLan_Entry","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry","AuthMode","s") %>","WEPEncryption","<% tcWebApi_get("WLan_Entry","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry","DefaultKeyID","s") %>","<% tcWebApi_get("WLan_Entry","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry","EncrypType","s") %>","<% tcWebApi_get("WLan_Entry","EncrypType","s") %>","<% tcWebApi_get("WLan_Common","HT_BW","s") %>","<% tcWebApi_get("WLan_Common","HT_GI","s") %>","<% tcWebApi_get("WLan_Entry","HT_MCS","s") %>", str_trstream,"<% tcWebApi_get("WLan_Entry","EncrypType","s") %>","<% tcWebApi_get("WLan_Entry","WPSMode","s") %>","<% tcWebApi_get("WLan_Entry","enrolleePinCode","s") %>"),null);
var enbl = <% tcWebApi_get("WLan_Common","APOn","s") %>;
var ssidIdx = 0;
var state = enbl;
var wlHide = Wlan[0].wlHide;
var band = 2;
var phy = 'g';
var wepEnable = getWepSwitch();
var wlCorerev = 8;
var ssidAccessAttr = 'Subscriber';
var beaconTypeAccessAttr = 'Subscriber';
var EnableAccessAttr = 'Subscriber';
var wpsV2Support = '<% tcWebApi_get("WLan_Common","WscV2Support", "s") %>';

function disWpsStatus()
{
	var xmlhttp;
		
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
				//alert("xmlhttp.responseText="+xmlhttp.responseText);
				var retStr=String(xmlhttp.responseText);
		
				if(retStr=="0\n")
				{

					 getElementByName("btnStartWPS").value="Start WPS";
				}else if(retStr=="1\n")
				{

					 getElementByName("btnStartWPS").value="Stop WPS";
				}
			 
			}
	}

	xmlhttp.open("GET","/cgi-bin/wpsStatus.cgi",true);
	xmlhttp.send();
	setTimeout("disWpsStatus()",3000);
}
		
function getWepSwitch()
{
	if (Wlan[ssidIdx].Encryption == 'WEPEncryption')
	{
		return 1;
	}
	else if (Wlan[ssidIdx].Encryption == 'None')
	{
		return 0;
	}
}
function hideOption(selObject, index)
{
	var oldOption = selObject.children(index);
	var oldStr = oldOption.innerText;
	var newOption = document.createElement('<div' + oldOption.outerHTML.match(/(<\w*)([^>]*)(>)/)[2] +'>');
	newOption.innerText  = oldStr;
	newOption.swapNode(oldOption);
}
function hideWlSecInfo(hidden)
{
	var status = 'visible';
	with ( document.forms[0] )
	{
		var i = 0;
		if ( hidden == 1 )
		{
			status = 'hidden';
			wlHide.disabled = 1;
			wlSsid.disabled = 1;
		}
		else
		{
			wlHide.disabled = 0;
			wlSsid.disabled = 0;
		}
	}
}
function wlSecCbClick(cb)
{
	if ( cb.checked == true )
	{
		hideWlSecInfo(0);
	}
	else
	{
		hideWlSecInfo(1);
	}
}
function getPreauth(wlPreauth) {
	var ret;
	if ( wlPreauth == "on" )
		ret = 1;
	else
		ret = 0;
	return ret;
}
function isValidWPAPskKey(val) {
	var ret = false;
	var len = val.length;
	var maxSize = 64;
	var minSize = 8;
	if ( len >= minSize && len < maxSize )
	{
		if(val.match(/[^\x00-\xff]/g))
   	    {
			ret = false;
		 } else {
   	        for ( i = 0; i < len; i++)
				if (val.charAt(i) == ','){
				break;
				}
			if ( i == len)
				ret = true;
   	    }
	} else if ( len == maxSize ) {
		for ( i = 0; i < maxSize; i++ )
		if ( isHexaDigit(val.charAt(i)) == false )
		break;
		if ( i == maxSize )
		ret = true;
	} else
		ret = false;
	return ret;
}
function hideAllElements()
{
	setDisplay("wlWpaD", 0);
	setDisplay("wpaPreShareKey", 0);
	setDisplay("wpaGTKRekey", 0);
	<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
	setDisplay("wlRadius", 0);
	<%end if%>
	setDisplay("Preauth", 0);
	setDisplay("NetReauth", 0);
	setDisplay("wlWepD", 0);
	setDisplay("keyInfo", 0);
}
function encrypChange()
{
	with ( document.forms[0] )
	{
		var securmode = getSelectVal('wlSecurMode')
		switch(securmode)
		{
			case 'None':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Prompt:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;If the security mode is set to None, the transmission data will not be encrypted."
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;Other users can access to your wireless network which is easily leads to security issues."
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;Not recommended to use unless special needs.";
				break;
			}
			case 'Basic':
			{
				setDisplay("keyInfo", 1);
				wlKeys[0].disabled = 0;
				wlKeys[1].disabled = 0;
				wlKeys[2].disabled = 0;
				wlKeys[3].disabled = 0;
				wlKeyIndex.length = 0;
				wlKeyIndex[0] = new Option("1", "1");
				wlKeyIndex[1] = new Option("2", "2");
				wlKeyIndex[2] = new Option("3", "3");
				wlKeyIndex[3] = new Option("4", "4");
				setSelect('wlKeyIndex',Wlan[ssidIdx].KeyIndex) ;
				getElement("wlUserTip").innerHTML = "<font color=red>Prompt:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;If the security mode is set to WEP, transmission of data will be encrypted."
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;Key length can be set to 64bit or 128bit. Recommended";
				break;
			}
   	 <% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
			case 'Radius-WEP64':
			{
			    
				setDisplay("keyInfo", 1);
				setDisplay("pwddLenId",0);
				wlKeys[0].disabled = 0;
				wlKeys[1].disabled = 0;
				wlKeys[2].disabled = 0;
				wlKeys[3].disabled = 0;
				wlKeyIndex.length = 0;
				wlKeyIndex[0] = new Option("1", "1");
				wlKeyIndex[1] = new Option("2", "2");
				wlKeyIndex[2] = new Option("3", "3");
				wlKeyIndex[3] = new Option("4", "4");
				setSelect('wlKeyIndex',Wlan[ssidIdx].KeyIndex) ;
			
				getElement("wlKeyBitTip").innerHTML = "Please input 5 characters or 10 hexadecimal numbers";
				
			
				break;
				
				
			}
			case 'Radius-WEP128':
			{
				
				setDisplay("keyInfo", 1);
				setDisplay("pwddLenId",0);
				wlKeys[0].disabled = 0;
				wlKeys[1].disabled = 0;
				wlKeys[2].disabled = 0;
				wlKeys[3].disabled = 0;
				wlKeyIndex.length = 0;
				wlKeyIndex[0] = new Option("1", "1");
				wlKeyIndex[1] = new Option("2", "2");
				wlKeyIndex[2] = new Option("3", "3");
				wlKeyIndex[3] = new Option("4", "4");
				setSelect('wlKeyIndex',Wlan[ssidIdx].KeyIndex) ;
				
				
				getElement("wlKeyBitTip").innerHTML = "Please input 13 characters or 26 hexadecimal numbers";
				
				break;
			
				
			}
			<% end if %>
			case 'WPA':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Prompt:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;If the security mode is set to WPA-PSK, data transmission will be encrypted."
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;Key length can be set to 8-63. Recommended.";
				break;
			}
			case '11i':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Prompt:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;If the security mode is set to WPA2, the data transmission will be encrypted"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;;Key length can be set to 8-63. Requires operating system support.";
				break;
			}
			case 'WPAand11i':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Prompt:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;If the security mode is set to WPA / WPA2, the transmission data will be encrypted."
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;Key length can be set to 8-63. Requires operating system support.";
				break;
			}
			default:
				break;
		}
	}
}
function wlKeyBitChange()
{
	with(document.forms[0])
	{
		var wlKeyBitLen = getSelectVal('wlKeyBit');
		if(wlKeyBitLen == 64)
		{
			getElement("wlKeyBitTip").innerHTML = "Please input 5 characters or 10 hexadecimal numbers";
		}
		else
		{
			getElement("wlKeyBitTip").innerHTML = "Please input 13 characters or 26 hexadecimal numbers";
		}
	}
}
function authModeChange(OnPageLoad)
{
	with ( document.forms[0] )
	{
		var SecurMode = getSelectVal('wlSecurMode');
		var mode = getValue('wlgMode');
		var i, algos;
		hideAllElements();
		<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
	    setDisplay("Radiusdiv", 0);
		<% end if %>
		switch ( SecurMode )
		{
		case 'None':
			setDisplay("wlWepD", 0)
			setDisplay("keyInfo", 0);
			<%if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
			setDisplay("wpsinfo", 1);
			wpsModeChange();
			<%end if %>
			break;
		case 'Basic':
		case 'shared':
			setDisplay("wlWepD", 1);
			setDisplay("keyInfo", 1);
			<%if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
			setDisplay("wpsinfo", 1);
			<%end if %>
			break;
		case 'Radius-WEP64':
		case 'Radius-WEP128':
			<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
			    setDisplay("wlWpaD", 0);
                setDisplay("wpaPreShareKey", 0);
                setDisplay("Radiusdiv", 1);
               // setDisplay("wpsenableTR",1);
		        setDisplay("pwddLenId",0);
				setDisplay("keyInfo",1);
				<%if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
                	setDisplay("wpsinfo", 1);
                <%end if %>
		     <% end if %>


			break;
		case 'radius':
			setDisplay("wlRadius", 1);
			setDisplay("wlWepD", 1);
			break;
		case 'wpa2':
		case 'wpa2mix':
			setDisplay("Preauth", 1);
			setDisplay("NetReauth", 1);

		case 'wpa':
			setDisplay("wlWpaD", 1);
			setDisplay("wlRadius", 1);

			break;
		case '11i':
		case 'psk2mix':
		case 'WPA':
		case 'WPAand11i':
			setDisplay("wlWpaD", 1);
			setDisplay("wpaPreShareKey", 1);
			<%if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
			setDisplay("wpsinfo", 1);
			wpsModeChange();
			<%end if %>
			break;
	
		case 'radiusWpa':
		case 'radiuswpa2':
		case 'radiuswpawpa2':

			<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
			    setDisplay("wlWpaD", 1);
                setDisplay("wpaPreShareKey", 0);
                setDisplay("Radiusdiv", 1);
                <%if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
                			setDisplay("wpsinfo", 1);
                			wpsModeChange();
                <%end if %>

		     <% end if %>
		    break;

		  

		}
		if(OnPageLoad==1)
		{
			if ("n" == mode)
				algos = new Array(new Array('AES','AES'));
			else
				algos = new Array(new Array('TKIP','TKIP'), new Array('AES','AES'),new Array('TKIP+AES','TKIPAES'));
			wlWpa.length = algos.length;
			for (var i in algos)
			{
				wlWpa[i] = new Option(algos[i][0], algos[i][1]);
				wlWpa[i].value = algos[i][1];
				if (Wlan[ssidIdx].BeaconType == 'WPA'
				&& wlWpa[i][1] == Wlan[ssidIdx].WPAModes)
				{
					wlWpa[i].selected = true;
				}
				else if (Wlan[ssidIdx].BeaconType == '11i'
				&& wlWpa[i][1] ==  Wlan[ssidIdx].IEEE11iEModes)
				{
					wlWpa[i].selected = true;
				}
				else if (Wlan[ssidIdx].BeaconType == 'WPAand11i'
				&& wlWpa[i][1] ==  Wlan[ssidIdx].WPAWPA2Modes)
				{
					wlWpa[i].selected = true;
				}
			}
		}
		if (SecurMode == 'WPA')
		{
			if ("n" == mode)
				setSelect('wlWpa',"AES");
			else
				setSelect('wlWpa',Wlan[ssidIdx].WPAModes);
		}
		else if (SecurMode == '11i')
		{
			if ("n" == mode)
				setSelect('wlWpa',"AES");
			else
				setSelect('wlWpa',Wlan[ssidIdx].IEEE11iEModes);
		}
		else if (SecurMode == 'WPAand11i')
		{
			if ("n" == mode)
				setSelect('wlWpa',"AES");
			else
				setSelect('wlWpa',Wlan[ssidIdx].WPAWPA2Modes);
		}
		else if (SecurMode == 'Basic')
		{
			wlWep.length = 0;
			wlWep[0] = new Option("open", "OpenSystem");
			wlWep[1] = new Option("share", "SharedKey");
			wlWep[2] = new Option("open+share", "Both");
			if(OnPageLoad==1)
			{
				setSelect('wlWep',Wlan[ssidIdx].AuthMode);
			}
			else
			{
				setSelect('wlWep', "Both");
			}
		}
		//wzb add
        if (SecurMode == 'radiusWpa')
        {
            if ("n" == mode)
                setSelect('wlWpa',"AES");
            else
                setSelect('wlWpa',Wlan[ssidIdx].WPAModes);
        }
        	else if (SecurMode == 'radiuswpa2')
            {
                if ("n" == mode)
                    setSelect('wlWpa',"AES");
                else
                    setSelect('wlWpa',Wlan[ssidIdx].IEEE11iEModes);
            }
            else if (SecurMode == 'radiuswpawpa2')
            {
                wlWep.length = 0;
                wlWep[0] = new Option("open", "OpenSystem");
                wlWep[1] = new Option("share", "SharedKey");
                wlWep[2] = new Option("open+share", "Both");
                if(OnPageLoad==1)
                {
                    setSelect('wlWep',Wlan[ssidIdx].AuthMode);
                }
                else
                {
                    setSelect('wlWep', "Both");
                }
            }
            //wzb end
	}
	encrypChange();
}

function doBroadcastSSIDChange()
{
	with ( document.forms[0] )
	{	
		if(wpsV2Support == 1)
		{
			if(wlSsidIdx[0].selected == true && enableWps.checked == true && wlHide.checked == true)
			{
					var rv = confirm("Broadcast is canceled, WPS will be shut down!");
					if (rv == false)
					{
						wlHide.checked = false;
					}
					else
					{
						wlHide.checked = true;
						enableWps.checked = false;
						WpsActive.value = "0";					
					}
			} 
		} 
  }	
	return 1;
}

function wpapsk_window()
{
	var psk_window = window.open("", "", "toolbar=no,width=500,height=100");
	psk_window.document.write("The WPA Pre-Shared Key is " + wpaPskKey);
	psk_window.document.close();
}
function getGmodeIndex(mode) {
	var ret = 0;
	switch(mode) {
		case '0':
			ret = 3;
			break;
		case '4':
			ret = 1;
			break;
		case '5':
			ret = 2;
			break;
		default:
			ret = 0;
			break;
	}
	return ret;
}
function gModeChange()
{
	with ( document.forms[0] )
	{
		var mode = getValue('wlgMode');
		if ((mode == 'b,g,n') || (mode == 'n'))
		{
			setDisplay('wlTransferRate',0);
			if (curUserName == sptUserName)
			{
				setDisplay('11NmcsControl',1);
				setDisplay('11NbwControl',1);
				setDisplay('11NgiControl',1);
			}
			loadMCSList();
		}
		else
		{
			setDisplay('wlTransferRate',1);
			if (curUserName == sptUserName)
			{
				setDisplay('11NmcsControl',0);
				setDisplay('11NbwControl',0);
				setDisplay('11NgiControl',0);
			}
			loadRateList();
		}
		loadAuthModeList();
	}
}
function loadChannelList()
{
	var CountryRegion = <% tcWebApi_get("WLan_Common","CountryRegion","s") %>;
	
	if (band == "2")
	{
		document.forms[0].wlChannel[0] = new Option("Auto", "0");
		if(CountryRegion == "0"){
			document.forms[0].wlChannel[1] = new Option("1", "1");
			document.forms[0].wlChannel[2] = new Option("2", "2");
			document.forms[0].wlChannel[3] = new Option("3", "3");
			document.forms[0].wlChannel[4] = new Option("4", "4");
			document.forms[0].wlChannel[5] = new Option("5", "5");
			document.forms[0].wlChannel[6] = new Option("6", "6");
			document.forms[0].wlChannel[7] = new Option("7", "7");
			document.forms[0].wlChannel[8] = new Option("8", "8");
			document.forms[0].wlChannel[9] = new Option("9", "9");
			document.forms[0].wlChannel[10] = new Option("10", "10");
			document.forms[0].wlChannel[11] = new Option("11", "11");
		}
		else  if (CountryRegion == "2"){
			document.forms[0].wlChannel[1] = new Option("10", "10");
			document.forms[0].wlChannel[2] = new Option("11", "11");		
		}
		else  if (CountryRegion == "3"){
			document.forms[0].wlChannel[1] = new Option("10", "10");
			document.forms[0].wlChannel[2] = new Option("11", "11");
			document.forms[0].wlChannel[3] = new Option("12", "12");
			document.forms[0].wlChannel[4] = new Option("13", "13");					
		}
		else  if (CountryRegion == "4"){
			document.forms[0].wlChannel[1] = new Option("4", "4");		
		}
		else  if (CountryRegion == "5"){
			document.forms[0].wlChannel[1] = new Option("1", "1");
			document.forms[0].wlChannel[2] = new Option("2", "2");
			document.forms[0].wlChannel[3] = new Option("3", "3");
			document.forms[0].wlChannel[4] = new Option("4", "4");
			document.forms[0].wlChannel[5] = new Option("5", "5");
			document.forms[0].wlChannel[6] = new Option("6", "6");
			document.forms[0].wlChannel[7] = new Option("7", "7");
			document.forms[0].wlChannel[8] = new Option("8", "8");
			document.forms[0].wlChannel[9] = new Option("9", "9");
			document.forms[0].wlChannel[10] = new Option("10", "10");
			document.forms[0].wlChannel[11] = new Option("11", "11");
			document.forms[0].wlChannel[12] = new Option("12", "12");
			document.forms[0].wlChannel[13] = new Option("13", "13");
			document.forms[0].wlChannel[14] = new Option("14", "14");					
		}
		else  if (CountryRegion == "6"){
			document.forms[0].wlChannel[1] = new Option("3", "3");
			document.forms[0].wlChannel[2] = new Option("4", "4");
			document.forms[0].wlChannel[3] = new Option("5", "5");
			document.forms[0].wlChannel[4] = new Option("6", "6");
			document.forms[0].wlChannel[5] = new Option("7", "7");
			document.forms[0].wlChannel[6] = new Option("8", "8");
			document.forms[0].wlChannel[7] = new Option("9", "9");					
		}								
		else{//1 or else
			document.forms[0].wlChannel[1] = new Option("1", "1");
			document.forms[0].wlChannel[2] = new Option("2", "2");
			document.forms[0].wlChannel[3] = new Option("3", "3");
			document.forms[0].wlChannel[4] = new Option("4", "4");
			document.forms[0].wlChannel[5] = new Option("5", "5");
			document.forms[0].wlChannel[6] = new Option("6", "6");
			document.forms[0].wlChannel[7] = new Option("7", "7");
			document.forms[0].wlChannel[8] = new Option("8", "8");
			document.forms[0].wlChannel[9] = new Option("9", "9");
			document.forms[0].wlChannel[10] = new Option("10", "10");
			document.forms[0].wlChannel[11] = new Option("11", "11");
			document.forms[0].wlChannel[12] = new Option("12", "12");
			document.forms[0].wlChannel[13] = new Option("13", "13");
		}
	}
	else  if (band == "1")
	{
		document.forms[0].wlChannel[0] = new Option("Auto", "0");
	}
	else
	{
		document.forms[0].wlChannel[0] = new Option("Auto", "0")
	}
	setSelect('wlChannel',Wlan[ssidIdx].channel);
}
function loadMCSList()
{
	document.forms[0].wlMcs.options.length = 0;
	document.forms[0].wlMcs[0] = new Option("Auto", "33", false, Wlan[ssidIdx].MCSValue == "33");
	if (Wlan[0].TxRxStream == '1')
	{
		if ("0" == getSelectVal('bwControl'))
		{
				document.forms[0].wlMcs[1] = new Option("6.5 Mbps", "0", false, Wlan[ssidIdx].MCSValue == "0");
				document.forms[0].wlMcs[2] = new Option("13 Mbps", "1", false, Wlan[ssidIdx].MCSValue == "1");
				document.forms[0].wlMcs[3] = new Option("19.5 Mbps", "2", false, Wlan[ssidIdx].MCSValue == "2");
				document.forms[0].wlMcs[4] = new Option("26 Mbps", "3", false, Wlan[ssidIdx].MCSValue == "3");
				document.forms[0].wlMcs[5] = new Option("39 Mbps", "4", false, Wlan[ssidIdx].MCSValue == "4");
				document.forms[0].wlMcs[6] = new Option("52 Mbps", "5", false, Wlan[ssidIdx].MCSValue == "5");
				document.forms[0].wlMcs[7] = new Option("58.5 Mbps", "6", false, Wlan[ssidIdx].MCSValue == "6");
				document.forms[0].wlMcs[8] = new Option("65 Mbps", "7", false, Wlan[ssidIdx].MCSValue == "7");
		}
		else if ("1" == getSelectVal('bwControl'))
		{
				document.forms[0].wlMcs[1] = new Option("13.5 Mbps", "0", false, Wlan[ssidIdx].MCSValue == "0");
				document.forms[0].wlMcs[2] = new Option("27 Mbps", "1", false, Wlan[ssidIdx].MCSValue == "1");
				document.forms[0].wlMcs[3] = new Option("40.5 Mbps", "2", false, Wlan[ssidIdx].MCSValue == "2");
				document.forms[0].wlMcs[4] = new Option("54 Mbps", "3", false, Wlan[ssidIdx].MCSValue == "3");
				document.forms[0].wlMcs[5] = new Option("81 Mbps", "4", false, Wlan[ssidIdx].MCSValue == "4");
				document.forms[0].wlMcs[6] = new Option("108 Mbps", "5", false, Wlan[ssidIdx].MCSValue == "5");
				document.forms[0].wlMcs[7] = new Option("121.5 Mbps", "6", false, Wlan[ssidIdx].MCSValue == "6");
				document.forms[0].wlMcs[8] = new Option("135 Mbps", "7", false, Wlan[ssidIdx].MCSValue == "7");
		}
	}
	else if (Wlan[0].TxRxStream == '2')
	{
		if ("0" == getSelectVal('bwControl'))
		{
				document.forms[0].wlMcs[1] = new Option("13 Mbps", "8", false, Wlan[ssidIdx].MCSValue == "8");
				document.forms[0].wlMcs[2] = new Option("26 Mbps", "9", false, Wlan[ssidIdx].MCSValue == "9");
				document.forms[0].wlMcs[3] = new Option("39 Mbps", "10", false, Wlan[ssidIdx].MCSValue == "10");
				document.forms[0].wlMcs[4] = new Option("52 Mbps", "11", false, Wlan[ssidIdx].MCSValue == "11");
				document.forms[0].wlMcs[5] = new Option("78 Mbps", "12", false, Wlan[ssidIdx].MCSValue == "12");
				document.forms[0].wlMcs[6] = new Option("104 Mbps", "13", false, Wlan[ssidIdx].MCSValue == "13");
				document.forms[0].wlMcs[7] = new Option("117 Mbps", "14", false, Wlan[ssidIdx].MCSValue == "14");
				document.forms[0].wlMcs[8] = new Option("130 Mbps", "15", false, Wlan[ssidIdx].MCSValue == "15");
		}
		else if ("1" == getSelectVal('bwControl'))
		{
				document.forms[0].wlMcs[1] = new Option("27 Mbps", "8", false, Wlan[ssidIdx].MCSValue == "8");
				document.forms[0].wlMcs[2] = new Option("54 Mbps", "9", false, Wlan[ssidIdx].MCSValue == "9");
				document.forms[0].wlMcs[3] = new Option("81 Mbps", "10", false, Wlan[ssidIdx].MCSValue == "10");
				document.forms[0].wlMcs[4] = new Option("108 Mbps", "11", false, Wlan[ssidIdx].MCSValue == "11");
				document.forms[0].wlMcs[5] = new Option("162 Mbps", "12", false, Wlan[ssidIdx].MCSValue == "12");
				document.forms[0].wlMcs[6] = new Option("216 Mbps", "13", false, Wlan[ssidIdx].MCSValue == "13");
				document.forms[0].wlMcs[7] = new Option("243 Mbps", "14", false, Wlan[ssidIdx].MCSValue == "14");
				document.forms[0].wlMcs[8] = new Option("270 Mbps", "15", false, Wlan[ssidIdx].MCSValue == "15");
		}
	}
	//setSelect('wlMcs',Wlan[ssidIdx].MCSValue);
}
function loadRateList() {
	document.forms[0].wlRate.options.length = 0;
	var mode = getValue('wlgMode');
	if (band == "2")
	{ 
		if (mode == "b" )
		{ 
			document.forms[0].wlRate[0] = new Option("Auto", "Auto", false, Wlan[ssidIdx].rate == "Auto");
			document.forms[0].wlRate[1] = new Option("1 Mbps", "1", false, Wlan[ssidIdx].rate == "1");
			document.forms[0].wlRate[2] = new Option("2 Mbps", "2", false, Wlan[ssidIdx].rate == "2");
			document.forms[0].wlRate[3] = new Option("5.5 Mbps", "5.5", false, Wlan[ssidIdx].rate == "5.5");
			document.forms[0].wlRate[4] = new Option("11 Mbps", "11", false, Wlan[ssidIdx].rate == "11");
		}
		else
		{
			document.forms[0].wlRate[0] = new Option("Auto", "Auto", false, Wlan[ssidIdx].rate == "Auto");
			document.forms[0].wlRate[1] = new Option("1 Mbps", "1", false, Wlan[ssidIdx].rate == "1");
			document.forms[0].wlRate[2] = new Option("2 Mbps", "2", false, Wlan[ssidIdx].rate == "2");
			document.forms[0].wlRate[3] = new Option("5.5 Mbps", "5.5", false, Wlan[ssidIdx].rate == "5.5");
			document.forms[0].wlRate[4] = new Option("6 Mbps", "6", false, Wlan[ssidIdx].rate == "6");
			document.forms[0].wlRate[5] = new Option("9 Mbps", "9", false, Wlan[ssidIdx].rate == "9");
			document.forms[0].wlRate[6] = new Option("11 Mbps", "11", false, Wlan[ssidIdx].rate == "11");
			document.forms[0].wlRate[7] = new Option("12 Mbps", "12", false, Wlan[ssidIdx].rate == "12");
			document.forms[0].wlRate[8] = new Option("18 Mbps", "18", false, Wlan[ssidIdx].rate == "18");
			document.forms[0].wlRate[9] = new Option("24 Mbps", "24", false, Wlan[ssidIdx].rate == "24");
			document.forms[0].wlRate[10] = new Option("36 Mbps", "36", false, Wlan[ssidIdx].rate == "36");
			document.forms[0].wlRate[11] = new Option("48 Mbps", "48", false, Wlan[ssidIdx].rate == "48");
			document.forms[0].wlRate[12] = new Option("54 Mbps", "54", false, Wlan[ssidIdx].rate == "54");
		}
	}
	else if (band == "1")
	{ 
		document.forms[0].wlRate[0] = new Option("Auto", "Auto", false, Wlan[ssidIdx].rate == "Auto");
		document.forms[0].wlRate[1] = new Option("6 Mbps", "6", false, Wlan[ssidIdx].rate == "6");
		document.forms[0].wlRate[2] = new Option("9 Mbps", "9", false, Wlan[ssidIdx].rate == "9");
		document.forms[0].wlRate[3] = new Option("12 Mbps", "12", false, Wlan[ssidIdx].rate == "12");
		document.forms[0].wlRate[4] = new Option("18 Mbps", "18", false, Wlan[ssidIdx].rate == "18");
		document.forms[0].wlRate[5] = new Option("24 Mbps", "24", false, Wlan[ssidIdx].rate == "24");
		document.forms[0].wlRate[6] = new Option("36 Mbps", "36", false, Wlan[ssidIdx].rate == "36");
		document.forms[0].wlRate[7] = new Option("48 Mbps", "48", false, Wlan[ssidIdx].rate == "48");
		document.forms[0].wlRate[8] = new Option("54 Mbps", "54", false, Wlan[ssidIdx].rate == "54");
	}
	else
	{
		document.forms[0].wlRate[0] = new Option("Auto", "Auto", false, Wlan[ssidIdx].rate == "Auto");
	}
	//setSelect('wlRate',Wlan[ssidIdx].rate);
}
function loadSsidIdxList() {
	var ssidNum;
	var multiFlag = "<% tcWebApi_get("WLan_Common","MultiSSIDConfigEnable","s") %>";
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
	var WlanIndex = "<% tcWebApi_get("WebCurSet_Entry","wlan_id","s") %>";
	var ssidselsectFlag = 0;
	var ssidindex = 1;
	var ssid1 = "<% tcWebApi_get("WLan_Entry0","EnableSSID","s") %>";
	var ssid2 = "<% tcWebApi_get("WLan_Entry1","EnableSSID","s") %>";
	var ssid3 = "<% tcWebApi_get("WLan_Entry2","EnableSSID","s") %>";
	var ssid4 = "<% tcWebApi_get("WLan_Entry3","EnableSSID","s") %>";
<% end if %>
	if(multiFlag == "Yes")
		ssidNum = <% tcWebApi_get("WLan_Common","BssidNum","s") %>;
	else
		ssidNum = '1';//only can edit and query 0 index of ssid
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZNXSupported","h") = "Yes" then %>
<% if tcwebApi_get("WebCurSet_Entry","CurrentAccess","h") <> "0" then %>
	if(ssidNum > "1" && ssidNum <= "4")
		ssidNum = '1';//only can edit and query 0 index of ssid for second user.
<% end if %>
<% end if %>
	document.forms[0].wlSsidIdx.options.length = 0;
	document.forms[0].wlSsidIdx[0] = new Option("SSID1", "0");
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
	<% if tcWebApi_get("Account_Entry0","Logged","h") = "1" then %>
	if(ssidNum > "1")
	{
		if(ssid2 == "0" || ssid2 == "1")
		{
			document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID2", "1");
			ssidindex++;
		}
		<% if tcwebApi_get("WebCustom_Entry","isCTPONOnlyTwoSSIDSupported","h") <> "Yes" then %>
		if(ssid3 == "0" || ssid3 == "1") 
		{
			document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID3", "2");
			ssidindex++;
		}
		if(ssid4 == "0" || ssid4 == "1") 
		{
			document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID4", "3");
			ssidindex++;
		}

		<% end if %>
	<% end if %>
	}
<% else %>
	<% if tcWebApi_get("Account_Entry0","Logged","h") = "1" then %>
	if (ssidNum == "2"){
		document.forms[0].wlSsidIdx[1] = new Option("SSID2", "1");
	}
	else if (ssidNum == "3"){
		document.forms[0].wlSsidIdx[1] = new Option("SSID2", "1");
		document.forms[0].wlSsidIdx[2] = new Option("SSID3", "2");
	}
	else if (ssidNum == "4"){
		document.forms[0].wlSsidIdx[1] = new Option("SSID2", "1");
		document.forms[0].wlSsidIdx[2] = new Option("SSID3", "2");	
		document.forms[0].wlSsidIdx[3] = new Option("SSID4", "3");
	}
	<% end if %>
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
	for(var i = 0; i < document.forms[0].wlSsidIdx.options.length; i++) 
	{
		if(document.forms[0].wlSsidIdx.options[i].value == WlanIndex)
		{
			setSelect('wlSsidIdx',WlanIndex);
			ssidselsectFlag = 1;
			break;
		}
	}
	if(ssidselsectFlag != 1)
	{
		setSelect('wlSsidIdx',0);
		selChangedSSID();
	}
<% else %>
	setSelect('wlSsidIdx', <% tcWebApi_get("WebCurSet_Entry","wlan_id","s") %>);
<% end if %>	
}
function loadMCastRateList() {
	if (band == "2") { 
		if (phy == "b") {
			document.forms[0].wlMCastRate[0] = new Option("Auto", "Auto");
			document.forms[0].wlMCastRate[1] = new Option("1 Mbps", "1000000");
			document.forms[0].wlMCastRate[2] = new Option("2 Mbps", "2000000");
			document.forms[0].wlMCastRate[3] = new Option("5.5 Mbps", "5500000");
			document.forms[0].wlMCastRate[4] = new Option("11 Mbps", "11000000");
		}
		else {
			document.forms[0].wlMCastRate[0] = new Option("Auto", "Auto");
			document.forms[0].wlMCastRate[1] = new Option("1 Mbps", "1000000");
			document.forms[0].wlMCastRate[2] = new Option("2 Mbps", "2000000");
			document.forms[0].wlMCastRate[3] = new Option("5.5 Mbps", "5500000");
			document.forms[0].wlMCastRate[4] = new Option("6 Mbps", "6000000");
			document.forms[0].wlMCastRate[5] = new Option("9 Mbps", "9000000");
			document.forms[0].wlMCastRate[6] = new Option("11 Mbps", "11000000");
			document.forms[0].wlMCastRate[7] = new Option("12 Mbps", "12000000");
			document.forms[0].wlMCastRate[8] = new Option("18 Mbps", "18000000");
			document.forms[0].wlMCastRate[9] = new Option("24 Mbps", "24000000");
			document.forms[0].wlMCastRate[10] = new Option("36 Mbps", "36000000");
			document.forms[0].wlMCastRate[11] = new Option("48 Mbps", "48000000");
			document.forms[0].wlMCastRate[12] = new Option("54 Mbps", "54000000");
		}
	}
	else if (band == "1") { 
		document.forms[0].wlMCastRate[0] = new Option("Auto", "Auto");
		document.forms[0].wlMCastRate[1] = new Option("6 Mbps", "6000000");
		document.forms[0].wlMCastRate[2] = new Option("9 Mbps", "9000000");
		document.forms[0].wlMCastRate[3] = new Option("12 Mbps", "12000000");
		document.forms[0].wlMCastRate[4] = new Option("18 Mbps", "18000000");
		document.forms[0].wlMCastRate[5] = new Option("24 Mbps", "24000000");
		document.forms[0].wlMCastRate[6] = new Option("36 Mbps", "36000000");
		document.forms[0].wlMCastRate[7] = new Option("48 Mbps", "48000000");
		document.forms[0].wlMCastRate[8] = new Option("54 Mbps", "54000000");
	}
	else {
		document.forms[0].wlMCastRate[0] = new Option("Auto", "Auto");
	}
}
function loadAuthModeList(){
	var mode = getValue('wlgMode');
	document.forms[0].wlSecurMode.options.length = 0;
						  
	if (mode == "n"){
		document.forms[0].wlSecurMode[0] = new Option("None", "None",false,Wlan[ssidIdx].BeaconType=="None");
		document.forms[0].wlSecurMode[1] = new Option("WPA-PSK", "WPA",false,Wlan[ssidIdx].BeaconType=="WPA");
		document.forms[0].wlSecurMode[2] = new Option("WPA2-PSK", "11i",false,Wlan[ssidIdx].BeaconType=="11i");
		document.forms[0].wlSecurMode[3] = new Option("WPA-PSK/WPA2-PSK", "WPAand11i",false,Wlan[ssidIdx].BeaconType=="WPAand11i");
		<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
		document.forms[0].wlSecurMode[4] = new Option("WPA", "radiusWpa",false,Wlan[ssidIdx].BeaconType=="radiusWpa");
        document.forms[0].wlSecurMode[5] = new Option("WPA2", "radiuswpa2",false,Wlan[ssidIdx].BeaconType=="radiuswpa2");
        document.forms[0].wlSecurMode[6] = new Option("WPAWPA2", "radiuswpawpa2",false,Wlan[ssidIdx].BeaconType=="radiuswpawpa2");
        <% end if %>
	}
	else {
		document.forms[0].wlSecurMode[0] = new Option("None", "None",false,Wlan[ssidIdx].BeaconType=="None");
		document.forms[0].wlSecurMode[1] = new Option("WEP", "Basic",false,Wlan[ssidIdx].BeaconType=="Basic");
		//wzb add
	   <% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
		document.forms[0].wlSecurMode[2] = new Option("Radius-WEP64", "Radius-WEP64",false,Wlan[ssidIdx].BeaconType=="Radius-WEP64");
		document.forms[0].wlSecurMode[3] = new Option("Radius-WEP128", "Radius-WEP128",false,Wlan[ssidIdx].BeaconType=="Radius-WEP128");
		document.forms[0].wlSecurMode[4] = new Option("WPA-PSK", "WPA",false,Wlan[ssidIdx].BeaconType=="WPA");
		document.forms[0].wlSecurMode[5] = new Option("WPA2-PSK", "11i",false,Wlan[ssidIdx].BeaconType=="11i");
		document.forms[0].wlSecurMode[6] = new Option("WPA-PSK/WPA2-PSK", "WPAand11i",false,Wlan[ssidIdx].BeaconType=="WPAand11i");
		document.forms[0].wlSecurMode[7] = new Option("WPA", "radiusWpa",false,Wlan[ssidIdx].BeaconType=="radiusWpa");
        document.forms[0].wlSecurMode[8] = new Option("WPA2", "radiuswpa2",false,Wlan[ssidIdx].BeaconType=="radiuswpa2");
        document.forms[0].wlSecurMode[9] = new Option("WPAWPA2", "radiuswpawpa2",false,Wlan[ssidIdx].BeaconType=="radiuswpawpa2");
        <% else %>
		document.forms[0].wlSecurMode[2] = new Option("WPA-PSK", "WPA",false,Wlan[ssidIdx].BeaconType=="WPA");
		document.forms[0].wlSecurMode[3] = new Option("WPA2-PSK", "11i",false,Wlan[ssidIdx].BeaconType=="11i");
		document.forms[0].wlSecurMode[4] = new Option("WPA-PSK/WPA2-PSK", "WPAand11i",false,Wlan[ssidIdx].BeaconType=="WPAand11i");;
		<% end if %>	
	}
	authModeChange(1);
	doWPSUseChange();
}

function doWPSUseChange(){
<%if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
	if(document.forms[0].enableWps.checked && (getSelectVal('wlSecurMode') == "Basic"||getSelectVal('wlSecurMode') == "Radius-WEP128"||getSelectVal('wlSecurMode') == "Radius-WEP64"))
	{
		alert("When the encryption mode is WEP, the WPS function cannot be enabled!");
		document.forms[0].enableWps.checked = false;
		return;
	}
	if(wpsV2Support == 1)
	{
		if(document.forms[0].enableWps.checked)
		{
			if(getSelectVal('wlWpa') == "TKIP" &&	(getSelectVal('wlSecurMode') == "WPA" || getSelectVal('wlSecurMode') == "WPAand11i" || getSelectVal('wlSecurMode') == "11i"||
			getSelectVal('wlSecurMode') == "radiusWpa"||getSelectVal('wlSecurMode') == "radiuswpa2"||getSelectVal('wlSecurMode') == "radiuswpawpa2"))
			{
				alert("When the encryption mode is WPA TKIP, the WPS function cannot be enabled!");
				document.forms[0].enableWps.checked = false;
				return;
			}
	
			if(document.forms[0].wlHide.checked == true)
			{
				alert("When the broadcast is canceled, the WPS function cannot be enabled!");
				document.forms[0].enableWps.checked = false;
				return;
			}
		}		
	}
	if(document.forms[0].enableWps.checked)
	{
		setDisplay("wpsmodeTR", 1);
		document.forms[0].WpsActive.value = "1";
}
	else
	{
		if(getValue('isInWPSing')!=0)	//WPS is running
		{
			alert("WPS is currently working, WPS function can not be disabled! Try it again after press the STOP WPS button.");
			document.forms[0].enableWps.checked = true;
			document.forms[0].WpsActive.value = "1";
			return;		
		}
		else
		{
		setDisplay("wpsmodeTR", 0);
		document.forms[0].WpsActive.value = "0";
	}
	}
<%end if %>	
	return;
}

function wpsModeChange()
{
	with ( document.forms[0])
	{
		var temp = getSelectVal("wpsmode");
		if (temp == 'ap-pin')
		{
			setDisplay("pinval", 1);
		}
		else
		{
			setDisplay("pinval", 0);
		}
	}
}
function wpsContChange()
{
	with ( document.forms[0])
	{
		var temp = getCheckVal("wpsControl");
		if (temp == 0)
		{
			setDisable("wpsMode", 1);
			setDisable("pinValue", 1);
		}
		else
		{
			setDisable("wpsMode", 0);
			setDisable("pinValue", 0);
		}
	}
}
function isvalidpin(val)
{
	var ret = false;
	var len = val.length;
	var pinSize = 8;
	var pinvalue = new Array();
	if ( len !=  pinSize)
	{
		return false;
	}
	else
	{
		for(i = 0; i < pinSize; i++ )
		{
			pinvalue[i] = parseInt(val.charAt(i),10);
		}
		var accum = 0;
		accum = (pinvalue[0] + pinvalue[2] + pinvalue[4] + pinvalue[6]) * 3 + pinvalue[1] + pinvalue[3] + pinvalue[5] + pinvalue[7];
		if (0 == (accum % 10))
		{
			return true; 
		}
		else
		{
			return false; 
		}
	}
	return ret;
}
function getAfterBurnerIndex(afterburner)
{
	var ret;
	if ( afterburner == "auto" )
		ret = 1;
	else
		ret = 0;
	return ret;
}
function getTpcDbIndex(val) {
	var ret;
	if ( val == "0" )
		ret = 0;
	else if ( val == "2" )
		ret = 1;
	else if ( val == "3" )
		ret = 2;
	else if ( val == "4" )
		ret = 3;
	else ret = 0;
	return ret;
}
function ChannelChange() {
}
function getBandIndex(b) {
	var ret;
	if ( b == '1' )
		ret = 1;
	else
		ret = 0;
	return ret;
}
function wl_afterburner_options(OnPageLoad) {
}
function wl_recalc(OnPageLoad)
{
	with ( document.forms[0] )
	{
		wl_afterburner_options(OnPageLoad);
	}
}
function updateCurChannel() {
}
function LoadFrame()
{
	with ( document.forms[0] )
	{
		setCheck('wlEnbl', enbl);
		setCheck('wlHide', Wlan[ssidIdx].wlHide);
		if ( phy == "g" )
		{
			if(Wlan[ssidIdx].mode == "b/g")
			{
				setSelect('wlgMode', "b,g");
			}
			else
			{
				setSelect('wlgMode',Wlan[ssidIdx].mode);
			}
		}
		if(getValue('BSSCoexistence')==0 && Wlan[ssidIdx].BWControl == 1){		
			setSelect('bwControl',2);
		} else
			setSelect('bwControl',Wlan[ssidIdx].BWControl);
		setSelect('giControl',Wlan[ssidIdx].GIControl);
		loadChannelList();
		loadSsidIdxList();
		gModeChange();
		setSelect('wlTxPwr',Wlan[ssidIdx].power)
		setCheck('wlHide',Wlan[ssidIdx].wlHide);
		setCheck('enableSsid',Wlan[ssidIdx].enable);
		setText('wlSsid',Wlan[ssidIdx].ssid);
		setSelect('wlSecurMode',Wlan[ssidIdx].BeaconType);
		setDisplay('wlInfo',enbl);
		setDisplay('authen',enbl);
		setDisplay('wlUserTip',enbl);
		setSelect('wlKeyBit',Wlan[ssidIdx].EncypBit);//setSelect('wlKeyBit',parseInt(Wlan[ssidIdx].EncypBit)+24);		
		wlKeyBitChange();
		if (ssidAccessAttr.indexOf('Subscriber') < 0)
		{
			setDisable('wlSsid',1);
		}
		if ( EnableAccessAttr.indexOf('Subscriber') < 0)
		{
			setDisable('enableSsid',1);
		}
		if ( beaconTypeAccessAttr.indexOf('Subscriber') < 0)
		{
			setDisable('wlSecurMode',1);
		}
	}
	setSelect("wpsmode", Wlan[ssidIdx].WPSMode);
	if (getSelectVal("wpsmode") == 'ap-pin')
	{
		setText("pinvalue", Wlan[ssidIdx].PINValue);
	}
	authModeChange(1);
	disWpsStatus();
}
function addParameter(Form)
{
	var url = '';
	var temp = '';
	var pinLen = 8;
	Form.usingPrefix('y');
	var phymode = getValue('wlgMode');
	Form.addParameter('Standard',phymode);
	if(phymode == 'b' || phymode == 'g' || phymode== 'b/g' ||phymode== 'b,g')
	{
		Form.addParameter('MaxBitRate',getSelectVal('wlRate'));
	}
	else
	{
		Form.addParameter('X_ATP_11NHtMcs',getSelectVal('wlMcs'));
		Form.addParameter('X_ATP_Wlan11NBWControl',getSelectVal('bwControl'));
		Form.addParameter('X_ATP_Wlan11NGIControl',getSelectVal('giControl'));
	}
	Form.addParameter('Enable',getCheckVal('enableSsid'));
	Form.addParameter('Channel',getSelectVal('wlChannel'));
	Form.addParameter('X_CT-COM_SSIDHide',getCheckVal('wlHide'));
	Form.addParameter('X_CT-COM_Powerlevel',getSelectVal('wlTxPwr'));
	var ssid = getValue('wlSsid');
	if (ssid == '' )
	{
		alert('SSID is empty.');
		setCheck('wlEnbl',1);
		wlClickEnble(getElById('wlEnbl'));
		return false;
	}
	if (isValidSSID(ssid) != '')
	{
		alert("SSID has invalid characters '" + isValidSSID(ssid) + "'。");
		setCheck('wlEnbl',1);
		wlClickEnble(getElById('wlEnbl'));
		return false;
	}
	if (getSSIDByteLen(ssid) > 32)
	{
		alert('SSID "' + getValue('wlSsid') + '"It should be less than or equal to 32 characters.');
		setCheck('wlEnbl',1);
		wlClickEnble(getElById('wlEnbl'));
		return false;
	}

	if (<% tcWebApi_get("WebCurSet_Entry","wlan_id","s") %> == 0)
	{
			var preLen= document.forms[0].SSIDPre.value.length;
      if (document.forms[0].SSIDPre.value != "N/A") {
        var the_substring = ssid.substring(0, preLen);
        if (the_substring != document.forms[0].SSIDPre.value)
        {
          alert('SSID1 "' + getValue('wlSsid') + '" should be string starts with'+document.forms[0].SSIDPre.value);
          setCheck('wlEnbl',1);
          wlClickEnble(getElById('wlEnbl'));
          return false;
        }
      }
	}
	
	if (ssid.charAt(ssid.length - 1) == ' ' )
	{
		alert("SSID can not be null-terminated.");
		setCheck('wlEnbl',1);
		wlClickEnble(getElById('wlEnbl'));
		return false;
	}
<% If tcWebApi_get("WebCustom_Entry","isMaxStaNumSupported","h") = "Yes" Then %>
	var deviceNum = parseInt(getValue('wlAssociateNum'),10);
  if (isPlusInteger(deviceNum) == false
      || parseInt(deviceNum) < 0
      || parseInt(deviceNum) > 32
      || !isInteger(getValue('wlAssociateNum')))
  {
      alert('The number of STA ranges from 0,1 to 32.');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));      
      return false;
  }
<%end if%>
	Form.addParameter('SSID',ssid);
	var AuthMode = getSelectVal('wlSecurMode');
	Form.addParameter('BeaconType',AuthMode);
	Form.endPrefix();
	if (AuthMode == 'None')
	{
		Form.addParameter('y.BasicEncryptionModes','None');
		Form.addParameter('y.BasicAuthenticationMode','OpenSystem');
		return true;
	}
	else if (AuthMode == 'Basic')
	{
		var wepauthtype = getSelectVal('wlWep');
		if ( (wepauthtype == 'OpenSystem')
		||(wepauthtype == 'SharedKey')
		||(wepauthtype == 'Both'))
		{
			var KeyBit = getSelectVal('wlKeyBit');
			var index = parseInt(getSelectVal('wlKeyIndex'));
			var wlKeys = getElById('wlKeys');
			var val = wlKeys[index-1].value;
			if ( val == '')
			{
				alert('Key value can not be empty.');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
			var vKey = 0;
			for (vKey = 0; vKey < 4; vKey++)
			{
				val = wlKeys[vKey].value;
				if ( val != '' )
				{
					if ( KeyBit == '128' )
					{
						if (isValidKey(val, 13) == false )
						{
							alert('Key "' + val + '" Invalid, plead input 13 ASCII characters or 26-digit hexadecimal number as a certified 128-bit WEP key.');
							setCheck('wlEnbl',1);
							wlClickEnble(getElById('wlEnbl'));
							return false;
						}
					}
					else
					{
						if ( isValidKey(val, 5) == false )
						{
							alert('Key "' + val + '" Invalid, please input 5 ASCII characters or 10 hexadecimal as a 64-bit WEP key authentication.');
							setCheck('wlEnbl',1);
							wlClickEnble(getElById('wlEnbl'));
							return false;
						}
					}
				}
			}
			Form.addParameter('y.WEPEncryptionLevel',(KeyBit-24)+'-bit');
			Form.addParameter('y.WEPKeyIndex',index);
			for (l = 1; l <= 4; l++)
			{
				Form.addParameter('k' + l +  '.InternetGatewayDevice.LANDevice.1.WLANConfiguration.1.WEPKey.' + l + '.' + 'WEPKey',
				wlKeys[l-1].value);
			}
		}
		Form.addParameter('y.BasicEncryptionModes','WEPEncryption');
		Form.addParameter('y.BasicAuthenticationMode',wepauthtype);
		return true;
	}
		<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
	else if(AuthMode == 'Radius-WEP64')
	{
			var KeyBit = getSelectVal('wlKeyBit');
           			var index = parseInt(getSelectVal('wlKeyIndex'));
           			var wlKeys = getElById('wlKeys');
            			var val = wlKeys[index-1].value;
            			if ( val == '')
            			{
            				alert('Key value can not be empty.');
            				setCheck('wlEnbl',1);
            				wlClickEnble(getElById('wlEnbl'));
            				return false;
            			}
            			var vKey = 0;
            			for (vKey = 0; vKey < 4; vKey++)
            			{
            				val = wlKeys[vKey].value;
            				if ( val != '' )
            				{

            						if ( isValidKey(val, 5) == false )
            						{
            							alert('Key "' + val + '" Invalid, please input 5 ASCII characters or 10 hexadecimal as a 64-bit WEP key authentication.');
           							setCheck('wlEnbl',1);
            							wlClickEnble(getElById('wlEnbl'));
            							return false;
            						}

            				}
           	}
	}
	else if(AuthMode == 'Radius-WEP128')
	{
			var KeyBit = getSelectVal('wlKeyBit');
			var index = parseInt(getSelectVal('wlKeyIndex'));
			var wlKeys = getElById('wlKeys');
			var val = wlKeys[index-1].value;
			if ( val == '')
			{
				alert('Key value can not be empty.');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
			var vKey = 0;
			for (vKey = 0; vKey < 4; vKey++)
			{
				val = wlKeys[vKey].value;
				if ( val != '' )
				{

						if (isValidKey(val, 13) == false )
						{
							alert('Key "' + val + '" Invalid, plead input 13 ASCII characters or 26-digit hexadecimal number as a certified 128-bit WEP key.');
							setCheck('wlEnbl',1);
							wlClickEnble(getElById('wlEnbl'));
							return false;
						}


				}
			}

	}
	<% end if %>
	
	
	
	else if (AuthMode == 'WPA' || AuthMode == '11i' || AuthMode == 'WPAand11i')
	{
		value = getValue('wlWpaPsk');
		if (isValidWPAPskKey(value) == false )
		{
			alert('WPA pre-shared key authentication should be 8-63 bit ASCII characters or 64-bit hexadecimal number.');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
			return false;
		}
		Form.addParameter('y.X_ATP_WPSMode', getSelectVal('wpsmode'));
		if(getSelectVal("wpsmode") == 'ap-pin')
		{
			var pinval = getElement('pinvalue');
			if(isSafeStringIn(pinval.value,'0123456789') == false)
			{
				alert('PIN code should be integers range in "0123456789"');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
			var pinValue = pinval.value;
			if(pinValue.length != pinLen)
			{
				alert('Please input the 8-digit PIN code');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
			if(isvalidpin(pinValue) == false)
			{
				alert('Input the correct PIN code rule: 3 doubly odd bit and the even bit is an integer multiple of 10');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
			Form.addParameter('y.X_ATP_WPSPinValue', getValue('pinvalue'));
		}
		Form.addParameter('k.PreSharedKey.1.PreSharedKey',value);
		if (AuthMode == 'WPA')
		{
			Form.addParameter('y.WPAEncryptionModes',getSelectVal('wlWpa'));
		}
		else  if (AuthMode == '11i')
		{
			Form.addParameter('y.IEEE11iEncryptionModes',getSelectVal('wlWpa'));
		}
		else  if (AuthMode == 'WPAand11i')
		{
			Form.addParameter('y.WPAWPA2EncryptionModes',getSelectVal('wlWpa'));
		}
	}
   
	return true;
}
function SubmitForm()
{
<%if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
	if(enbl == 1)
	{
	if(getValue('isInWPSing')!=0 && getValue('hWpsStart')!=1)
	{
		alert("WPS is currently working, WPS function can not be disabled! Try it again after press the STOP WPS button..");
		return;
	}		
	}		
<%end if %>	
	var Form = new webSubmitForm();
	var enable = getCheckVal('wlEnbl');
	Form.addParameter('x.WLANConfiguration.1.X_CT-COM_APModuleEnable',enable);
	var wlandomain = 'InternetGatewayDevice.LANDevice.1.WLANConfiguration.'
	+(ssidIdx + 1);
	if(state == 1 && enable == 1)
	{
		if (addParameter(Form) == false)
		{
			return;
		}
		var SecurMode = getSelectVal('wlSecurMode');
		if (SecurMode == 'None')
		{
			Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
			+ '&y=' + wlandomain
			+ '&RequestFile=html/network/wlan.asp');
		}
		else if (SecurMode == 'Basic'||SecurMode == 'Radius-WEP64'||SecurMode == 'Radius-WEP128')
		{
<%if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
			if(document.forms[0].enableWps.checked)
			{
				alert("When the encryption mode is WEP, the WPS function cannot be enabled!");
				return;
			}		
<%end if %>	
			Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
			+ '&y=' + wlandomain + '&k1=' + '&k2='
			+ '&k3=' + '&k4='
			+ '&RequestFile=html/network/wlan.asp');
		}
		else if (SecurMode == 'WPA' || SecurMode == '11i' || SecurMode == 'WPAand11i')
		{
			if(wpsV2Support == 1 && document.forms[0].enableWps.checked && getSelectVal('wlWpa') == "TKIP")
			{
				alert("When the encryption mode is WPA TKIP, the WPS function cannot be enabled!");
				return;
			}
			
			Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
			+ '&y=' + wlandomain + '&k=' + wlandomain 
			+ '&RequestFile=html/network/wlan.asp');
	
		}
	}
	else
	{
		Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
		+ '&y='+ wlandomain
		+ '&RequestFile=html/network/wlan.asp');
	}
	//Form.submit();
	setDisable('btnOK',1);
	SetCtlValue();
	document.ConfigForm.submit();
}
function wlClickEnble(wlEnbleCl)
{   
	if (wlEnbleCl.checked == true)
	{
		if (state == 1)
		{
			setDisplay('wlInfo',1);
			setDisplay('authen',1);
			setDisplay('wlUserTip',1);
		}
	}
	else
	{
		setDisplay('wlInfo',0);
		setDisplay('authen',0);
		setDisplay('wlUserTip',0);
	}
}

function SetCtlValue()
{	
	with ( document.forms[0])
	{
		var enable = getCheckVal('wlEnbl');
		if(enable == 1)
			setText('hwlEnbl', 1);
		else
			setText('hwlEnbl', 0);
		enable = getCheckVal('enableSsid');
		if(enable == 1)
			setText('henableSsid', 1);
		else
			setText('henableSsid', 0);
		var hide = getCheckVal('wlHide');
		if(hide == 1)
			setText('hwlHide', 1);
		else
			setText('hwlHide', 0);		
		
		var temp = getSelectVal("wpsmode");
		if(temp == 'ap-pin')
		{
			setText('hWPSMode', 0);
		}
		else
		{
			setText('hWPSMode', 1);
		}
		
		setText('hwlKeys0', wlKeys[0].value);
		setText('hwlKeys1', wlKeys[1].value);
		setText('hwlKeys2', wlKeys[2].value);
		setText('hwlKeys3', wlKeys[3].value);
		
		var mode = '0';
		WirelessMode = getSelectVal('wlgMode');
		if (WirelessMode == 'b,g')
			mode = '0';
		else if (WirelessMode == 'b')
			mode = '1';
		else if (WirelessMode == 'g')
			mode = '4';
		else if (WirelessMode == 'n')
			mode = '6';
		else if (WirelessMode == 'g,n')
			mode = '7';
		else if (WirelessMode == 'b,g,n')
			mode = '9';		
		else
			mode = '0';			
		setText('hwlgMode', mode);		
		
		var BeaconType = 'OPEN';
		var SecurMode = getSelectVal('wlSecurMode');
		if (SecurMode == 'Basic')
		{
			var wlKeyBitLen = getSelectVal('wlKeyBit');
			if(wlKeyBitLen == 128)
				BeaconType = 'WEP-128Bits';
			else
				BeaconType = 'WEP-64Bits';
		}
	<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
		else if(SecurMode == 'Radius-WEP64')
		{
				BeaconType='Radius-WEP64';
		}
		else if(SecurMode == 'Radius-WEP128')
		{
				BeaconType='Radius-WEP128';
		}
	 <% end if %>
		else if (SecurMode == 'WPA')
			BeaconType = 'WPAPSK';
		else if (SecurMode == '11i')
			BeaconType = 'WPA2PSK';
		else if (SecurMode == 'WPAand11i')
			BeaconType = 'WPAPSKWPA2PSK';
		else if(SecurMode=='radiusWpa')
		    BeaconType = 'WPA';
		else if(SecurMode=='radiuswpa2')
           BeaconType = 'WPA2';
        else if(SecurMode=='radiuswpawpa2')
           	BeaconType = 'WPAWPA2';
		else                
			BeaconType = 'OPEN';
		setText('hwlAuthMode', BeaconType);
		
		setText('Save_Flag', 1);
	}
}

function selChangedSSID()
{
	document.ConfigForm.SSID_Flag.value = "1";
	document.ConfigForm.submit();
}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>WLAN Settings</P></TD>
          <TD width=7 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170  rowSpan=5>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#WLAN" 
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
            <FORM name=ConfigForm action="/cgi-bin/net-wlan.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <P>
                  <TABLE cellSpacing=0 cellPadding=0 width=500 border=0>
                    <TBODY>
                    <TR>
                      <TD width="200">Wireless Enable</TD>
                       <TD><INPUT onclick=wlClickEnble(this) 
                        type=checkbox value=ON 
                  name=wlEnbl></TD></TR></TBODY></TABLE><BR>
			<input type="hidden" name="hwlKeys0" value="0">
			<input type="hidden" name="hwlKeys1" value="0">
			<input type="hidden" name="hwlKeys2" value="0">
			<input type="hidden" name="hwlKeys3" value="0">
			<input type="hidden" name="hwlgMode" value="0">
			<input type="hidden" name="hwlAuthMode" value="0">
			<input type="hidden" name="hwlEnbl" value="0">
			<input type="hidden" name="hWPSMode" value="0">
			<input type="hidden" name="henableSsid" value="0">
			<input type="hidden" name="hwlHide" value="0">
			<!--wzb add  -->
			<input type="hidden" name="serverIP" value="0">
			<input type="hidden" name="serverPort" value="0">
			<input type="hidden" name="serverpwd" value="0">
			<!--wzb end-->
			<INPUT TYPE="hidden" NAME="BSSCoexistence" value="<%If TCWebApi_get("WLan_Common","HT_BSSCoexistence","h") <> "N/A" then tcWebApi_get("WLan_Common","HT_BSSCoexistence","s") else asp_write("0") end if%>">
			<INPUT TYPE="hidden" NAME="isInWPSing2" value="<%If TCWebApi_get("Info_WLan","wlanWPStimerRunning","h") <> "N/A" then tcWebApi_get("Info_WLan","wlanWPStimerRunning","s") else asp_write("0") end if%>">
			<INPUT TYPE="HIDDEN" NAME="WpsConfModeAll" value="7">
			<INPUT TYPE="HIDDEN" NAME="WpsConfModeNone" value="0">
			<INPUT TYPE="hidden" NAME="hWpsStart" value="0">
			<INPUT TYPE="hidden" NAME="isCUCSupport" value="<%if tcWebApi_get("Info_WLan","isCUCSupport","h")="Yes" then asp_write("1") else asp_write("0") end if%>">
			<INPUT type="hidden" NAME="SSIDPre" value="<%tcWebApi_get("WLan_Common","SSIDPre","s")%>">			
                  <TABLE id=wlInfo cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR id=div_gMode>
                      <TD width=200>
                        <P>Wireless Mode:</P></TD>
                      <TD width=280><SELECT onchange=gModeChange() size=1 
                        name=wlgMode> <OPTION value=b,g,n selected>802.11b/g/n 
                          Mixed<OPTION value=b,g>802.11b/g Mixed<OPTION 
                          value=n>802.11n<OPTION value=g>802.11g<OPTION 
                          value=b>802.11b</OPTION></SELECT></TD></TR>
                    	<SCRIPT language=JavaScript type=text/javascript>
			if (curUserName != sptUserName)
				getElement("div_gMode").style.display = "none";
			</SCRIPT>

                    <TR id=switchChannel>
                      <TD>Wireless Channel:</TD>
                      <TD><SELECT style="WIDTH: 123px" 
                        onchange=ChannelChange() size=1 
                      name=wlChannel></SELECT></TD></TR>
                    	<SCRIPT language=JavaScript type=text/javascript>
<% if tcwebApi_get("WebCustom_Entry","isCustomerComway","h" ) <> "Yes" then %>
			if (curUserName != sptUserName)
				getElement("switchChannel").style.display = "none";
<% end if %>
			</SCRIPT>

                    <TR id=wlTransferRate>
                      <TD>
                        <P>Rate:</P></TD>
                      <TD><SELECT style="WIDTH: 123px" size=1 
                        name=wlRate></SELECT></TD></TR>
                    <SCRIPT language=JavaScript type=text/javascript>
			//if (curUserName != sptUserName)
			//	getElement("wlTransferRate").style.display = "none";
                    </SCRIPT>

                    <TR id=wlPutOutPower>
                      <TD>
                        <P>TX Power:</P></TD>
                      <TD><SELECT style="WIDTH: 123px" size=1 name=wlTxPwr> 
                          <OPTION value=1 selected>100%</OPTION> <OPTION 
                          value=2>75%</OPTION> <OPTION value=3>50%</OPTION> 
                          <OPTION value=4>25%</OPTION> <OPTION 
                          value=5>15%</OPTION></SELECT> </TD></TR>
		<SCRIPT language=JavaScript type=text/javascript>
		//if (curUserName != sptUserName)
		//	getElement("wlPutOutPower").style.display = "none";
		</SCRIPT>

                    <TR id=trSSID>
                      <TD width=200>
                        <P>SSID Index:</P></TD>
                      <TD><SELECT style="WIDTH: 123px" 
                        onchange="selChangedSSID()" size=1 
                        name=wlSsidIdx></SELECT><input type="hidden" name="SSID_Flag" value="0"></TD></TR>
                    <TR>
                      <TD>
                        <P>SSID:</P></TD>
                      <TD><INPUT style="WIDTH: 123px" size=10 
                    name=wlSsid></TD></TR>
                    <TR id=11NmcsControl>
                      <TD width=200>
                        <P>Rate:</P></TD>
                      <TD><SELECT style="WIDTH: 123px" size=1 
                        name=wlMcs></SELECT> </TD></TR>
		<SCRIPT language=JavaScript type=text/javascript>
		//if (curUserName != sptUserName)
		//	getElement("11NmcsControl").style.display = "none";
		</SCRIPT>

                    <TR id=11NbwControl>
                      <TD width=200>
                        <P>Channel Bandwidth:</P></TD>
                      <TD><SELECT id=bwControl style="WIDTH: 123px" 
                        onchange=loadMCSList() size=1 name=bwControl> <OPTION 
                          value=0 selected>20</OPTION> <OPTION 
                          value=1>20/40</OPTION>
						  <OPTION 
                          value=2>40</OPTION>
						  </SELECT>MHz </TD></TR>
		<SCRIPT language=JavaScript type=text/javascript>
		if (curUserName != sptUserName)
			getElement("11NbwControl").style.display = "none";
		</SCRIPT>

                    <TR id=11NgiControl>
                      <TD width=200>
                        <P>Guard Interval:</P></TD>
                      <TD><SELECT id=giControl style="WIDTH: 123px" 
                        onchange=loadMCSList() size=1 name=giControl> <OPTION 
                          value=0 selected>Long<OPTION 
                          value=1>Short</OPTION></SELECT> </TD></TR>
		<SCRIPT language=JavaScript type=text/javascript>
		if (curUserName != sptUserName)
			getElement("11NgiControl").style.display = "none";
		</SCRIPT>
                    <TR>
                      <TD>
                        <P>SSID Enable:</P></TD>
                      <TD><INPUT type=checkbox name=enableSsid></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isMaxStaNumSupported","h" ) = "Yes" then %>
                    <TR>
                      <TD>
                        <P>Max STA Number:</P></TD>
                      <TD>
					<INPUT style="WIDTH: 123px" size=10 
                    name=wlAssociateNum value="<% if tcWebApi_get("WLan_Entry","MaxStaNum","h") <> "N/A" then tcWebApi_get("WLan_Entry","MaxStaNum","s") else asp_write("0") end if %>">&nbsp;(0,1-32) 0:means unlimited
					</TD></TR>                      	
<% end if %>
                    <TR>
                      <TD>
                        <P>Disable Broadcast SSID:</P></TD>
                      <TD><INPUT type=checkbox value=ON onClick="doBroadcastSSIDChange();"
                    name=wlHide></TD></TR></TBODY></TABLE>
                  <DIV id=authen>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD>&nbsp;</TD>
                      <TD width=122>&nbsp;</TD></TR>
                    <TR>
                      <TD width=200>Security Mode:</TD>
                      <TD><SELECT style="WIDTH: 160px" onchange=authModeChange(0) size=1 name=wlSecurMode> 
                          </SELECT> 
                    </TD></TR></TBODY></TABLE><BR>
               
                    <% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
                    <div id="Radiusdiv">
                    <TABLE cellSpacing=0 cellPadding=0 border=0 >
                    <TBODY>
                    <TR>
                    <TD width=200><font color="#000000">Radius Server IP:</font></TD>
                    <TD><input name="radiusSVR_IP1" type="text" value="<% if tcWebApi_get("WLan_Entry","RADIUS_Server","h") <> "N/A" then tcWebApi_get("WLan_Entry","RADIUS_Server","s") end if %>" size="20" maxlength="15"></TD>
                    </TR>
                    <TR>
                    <TD width=200><font color="#000000">Radius Server Port:</font></TD>
                    <TD><input name="radiusSVR_Port1" type="text" value="<% if tcWebApi_get("WLan_Entry","RADIUS_Port","h") <> "N/A" then tcWebApi_get("WLan_Entry","RADIUS_Port","s") end if %>" size="8" maxlength="5"></TD>
                    </TR>
                    <TR>
                    <TD width=200><font color="#000000">Radius Share secret:</font></TD>
                    <TD><input name="radiusSVR_Key1" type="text" value="<% if tcWebApi_get("WLan_Entry","RADIUS_Key","h") <> "N/A" then tcWebApi_get("WLan_Entry","RADIUS_Key","s") end if %>" style="width:140px;" maxlength="63"></TD>
                    </TR>
                    <TR><TD>
                    <input type="hidden" name="isDot1XSupported" value="<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then asp_write("1") else asp_write("0") end if %>"></TD></TR>
                    </TBODY>
                    </TABLE>
                    </div>
                     <% end if %>
                 
                  <DIV id=Preauth>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=200>WPA2 Prequalification:</TD>
                      <TD width=122><SELECT style="WIDTH: 123px" size=1 
                        name=wlPreauth> <OPTION value=off 
                          selected>Disabled</OPTION> <OPTION 
                          value=on>Enabled</OPTION></SELECT></TD></TR></TBODY></TABLE></DIV>
                  <DIV id=NetReauth>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=200>Re-authentication interval: </TD>
                      <TD width=172><INPUT maxLength=10 name=wlNetReauth value="<%if TCWebApi_get("WLan_Common","DtimPeriod","h") <> "N/A" then TCWebApi_get("WLan_Common","DtimPeriod","s") end if%>"></TD></TR></TBODY></TABLE></DIV>
                  <DIV id=wpaPreShareKey>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=200>WPA Pre-Shared Key:</TD>
                      <TD>
					  	<span id="inpsw"><INPUT style="FONT-FAMILY: 'Arial'" type=password maxLength=65 name=wlWpaPsk value="<%if tcWebApi_get("WLan_Entry","WPAPSK","h") <> "N/A" then tcWebApi_get("WLan_Entry","WPAPSK","s") end if%>"></span>
						<%if TCWebApi_get("WebCurSet_Entry","IsSupportShowPSW","h" ) = "1" then%>
						<INPUT id="cb_enablshowpsw" onClick="doshowpswChange()" type=checkbox name="cb_enablshowpsw">show password
						<script language="JavaScript" type="text/JavaScript">
						
						function doshowpswChange() {
							with (getElById('ConfigForm')){
								var tempvalue1 = wlWpaPsk.value;
								if (cb_enablshowpsw.checked) {
									inpsw.innerHTML = "<input style=\"FONT-FAMILY: 'Arial'\" type=\"text\" maxLength=65 name=\"wlWpaPsk\" value=" +document.ConfigForm.wlWpaPsk.value+ ">";
								}
								else {
									inpsw.innerHTML = "<input style=\"FONT-FAMILY: 'Arial'\" type=\"password\" maxLength=65 name=\"wlWpaPsk\" value=" +document.ConfigForm.wlWpaPsk.value+ ">";
								}
								wlWpaPsk.value = tempvalue1;
							}
						
						}
						
						</script>
						<%end if%></TD>
					</TR></TBODY></TABLE></DIV>

                  <DIV id=wpaGTKRekey style="DISPLAY: none">
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=200>WPA Key Group Updating Interval:</TD>
                      <TD width=172><INPUT style="FONT-FAMILY: 'Arial'" 
                        maxLength=10 
                  name=wlWpaGtkRekey></TD></TR></TBODY></TABLE></DIV>
                   <% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
                  <DIV id=wlRadius>
                  <!--
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=200>RADIUS server address:</TD>
                      <TD width=172><INPUT maxLength=15 
                    name=wlRadiusIPAddr></TD></TR>
                    <TR>
                      <TD width=200>RADIUS Server port:</TD>
                      <TD><INPUT maxLength=5 name=wlRadiusPort></TD></TR>
                    <TR>
                      <TD width=200>RADIUS Shared Key:</TD>
                      <TD>
					  	<span id="inrapsw"><INPUT style="FONT-FAMILY: 'Arial'" type=password maxLength=80 name=wlRadiusKey></span>
						<%if TCWebApi_get("WebCurSet_Entry","IsSupportShowPSW","h" ) = "1" then%>
						<INPUT id="cb_enablshowrapsw" onClick="doshowrapswChange()" type=checkbox name="cb_enablshowrapsw">show password
						<script language="JavaScript" type="text/JavaScript">
						
						function doshowrapswChange() {
							with (getElById('ConfigForm')){
								var tempvalue2 = wlRadiusKey.value;
								if (cb_enablshowrapsw.checked) {
									inrapsw.innerHTML = "<input style=\"FONT-FAMILY: 'Arial'\" type=\"text\" maxLength=80 name=\"wlRadiusKey\" value=" +document.ConfigForm.wlRadiusKey.value+ ">";
								}
								else {
									inrapsw.innerHTML = "<input style=\"FONT-FAMILY: 'Arial'\" type=\"password\" maxLength=80 name=\"wlRadiusKey\" value=" +document.ConfigForm.wlRadiusKey.value+ ">";
								}
								wlRadiusKey.value = tempvalue2;
							}						
						}
						
						</script>
						<%end if%></TD></TR></TBODY></TABLE>
						-->
						</DIV>
						<%end if%>
                  <DIV id=wlWpaD>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=200>WPA Encryption:</TD>
                      <TD width=70><SELECT name=wlWpa></SELECT> 
                  </TD></TR></TBODY></TABLE></DIV>
                  <DIV id=wlWepD>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=200>WEP Authenticate:</TD>
                      <TD width=70><SELECT name=wlWep></SELECT> 
                  </TD></TR></TBODY></TABLE></DIV>
                  <DIV id=keyInfo>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR id="pwddLenId">
                      <TD width=200>Encryption Length:</TD>
                      <TD width=86><SELECT style="WIDTH: 83px" 
                        onchange=wlKeyBitChange() size=1 name=wlKeyBit> 
                          <OPTION value=128 selected>128-bit</OPTION> <OPTION 
                          value=64>64-bit</OPTION></SELECT> </TD>
				   </TR>
                    <TR>
                      <TD width=200>Current Key Index:</TD>
                      <TD><SELECT style="WIDTH: 83px" size=1 
                        name=wlKeyIndex></SELECT></TD></TR>
                    <TR>
                      <TD>KEY 1:</TD>
                      <TD><INPUT maxLength=26 name=wlKeys value="<%if tcWebApi_get("WLan_Entry","Key1Str","h") <> "N/A" then tcWebApi_get("WLan_Entry","Key1Str","s") end if%>"></TD>
                      <TD id=wlKeyBitTip>Please enter 13 characters or 26 hexadecimal numbers</TD></TR>
                    <TR>
                      <TD>KEY 2:</TD>
                      <TD><INPUT maxLength=26 name=wlKeys value="<%if tcWebApi_get("WLan_Entry","Key2Str","h") <> "N/A" then tcWebApi_get("WLan_Entry","Key2Str","s") end if%>"></TD></TR>
                    <TR>
                      <TD>KEY 3:</TD>
                      <TD><INPUT maxLength=26 name=wlKeys value="<%if tcWebApi_get("WLan_Entry","Key3Str","h") <> "N/A" then tcWebApi_get("WLan_Entry","Key3Str","s") end if%>"></TD></TR>
                    <TR>
                      <TD>KEY 4:</TD>
                      <TD><INPUT maxLength=26 
                  name=wlKeys value="<%if tcWebApi_get("WLan_Entry","Key4Str","h") <> "N/A" then tcWebApi_get("WLan_Entry","Key4Str","s") end if%>"></TD></TR></TBODY></TABLE></DIV>
                  <DIV id=wpsinfo style="display:none">
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR id=wpsenableTR>
                      <TD width=200>WPS Enable:</TD>
                      <TD><INPUT type=checkbox name=enableWps <%if tcWebApi_get("WLan_Entry","WPSConfMode","h") <> "0" then asp_Write("checked") end if%> onClick="doWPSUseChange()">
                      <INPUT TYPE="hidden" NAME="WpsActive" value="0"></TD>
                    </TR>
                    <TR id=wpsmodeTR style="display:none">
                      <TD width=200>WPS Mode:</TD>
                      <TD><SELECT id=wpsmode style="WIDTH: 123px;display:none" 
                        onchange=wpsModeChange() size=1 name=wpsmode> <OPTION 
                          value=ap-pbc selected>PBC</OPTION> <!-- OPTION 
                          value=ap-pin>PIN</OPTION !--></SELECT>
                                      <input name="btnStartWPS"  onClick="doStartWPS();" type="button"> 
                                    </TD>
                                  </TR>
					<INPUT TYPE="hidden" NAME="isInWPSing" value="<%If TCWebApi_get("Info_WLan","wlanWPStimerRunning","h") <> "N/A" then tcWebApi_get("Info_WLan","wlanWPStimerRunning","s") else asp_write("0") end if%>">
                    <TR id=pinval style="display:none">
                      <TD>
                        <P>PIN:</P></TD>
                      <TD><INPUT style="WIDTH: 123px" size=10 
                    name=pinvalue>
                                    </TD>
                                  </TR></TBODY></TABLE></DIV></DIV><BR><BR>
                  <P>
                  <DIV id=wlUserTip><FONT color=red>Prompt:</FONT> 
                  <BR>&nbsp;&nbsp;&nbsp;&nbsp;If the security mode is set to WEP, the transmission data will not be encrypted. 
                  <BR>&nbsp;&nbsp;&nbsp;&nbsp;Other users can access to your wireless network which is easily leads to security issues. 
                  <BR>&nbsp;&nbsp;&nbsp;&nbsp;Not recommended to use unless special needs. </DIV>
                  <P></P></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD width=10><input type="hidden" name="Save_Flag" value="0"></TD>
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
            id=btnCancel onClick="RefreshPage()" height=23 
            width=80 border=0> </P></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<script language="JavaScript">
var enableOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aSSIDEnable","s")%>";
var beaconTypeOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aWLanBeaconType","s")%>";
var ssidOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aWLanSSID","s")%>";
if(enableOpenFlag == "0")
	getElById('enableSsid').disabled = true;
if(beaconTypeOpenFlag == "0")
	getElById('wlSecurMode').disabled = true;
if(ssidOpenFlag == "0")
	getElById('wlSsid').disabled = true;
</script>
</BODY></HTML>
