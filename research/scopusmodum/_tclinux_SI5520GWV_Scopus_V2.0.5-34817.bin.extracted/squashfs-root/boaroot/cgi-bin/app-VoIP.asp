<%
If request_Form("VoIP_basic_flag")="1" then
	tcWebApi_constSet("WebCurSet_Entry", "VoIPIdle", "1")
	if tcWebApi_get("VoIPBasic_Entry0", "Enable", "h") = "Yes"  then
		if tcWebApi_get("VoIPSysParam_Entry0", "SC_LINE_INFO_STATUS", "h") <> "Idle"  then
			tcWebApi_constSet("WebCurSet_Entry", "VoIPIdle", "0")
		end if
	end if
	if tcWebApi_get("WebCurSet_Entry", "VoIPIdle", "h") = "1"  then
		if tcWebApi_get("VoIPBasic_Entry1", "Enable", "h") = "Yes"  then
			if tcWebApi_get("VoIPSysParam_Entry1", "SC_LINE_INFO_STATUS", "h") <> "Idle"  then
				tcWebApi_constSet("WebCurSet_Entry", "VoIPIdle", "0")
			end if
		end if
	end if
	if tcWebApi_get("WebCurSet_Entry", "VoIPIdle", "h") = "1"  then
		if tcWebApi_get("InfoVoIPH248_Entry0", "lineInfoStatus", "h") <> "N/A" then
			if tcWebApi_get("InfoVoIPH248_Entry0", "lineInfoStatus", "h") <> "Idle"  then
				tcWebApi_constSet("WebCurSet_Entry", "VoIPIdle", "0")
			end if
		end if
	end if
	if tcWebApi_get("WebCurSet_Entry", "VoIPIdle", "h") = "1"  then
		if tcWebApi_get("VoIPBasic_Common", "VoIPLine2Enable", "h") = "Yes"  then
			if tcWebApi_get("InfoVoIPH248_Entry1", "lineInfoStatus", "h") <> "N/A" then
				if tcWebApi_get("InfoVoIPH248_Entry1", "lineInfoStatus", "h") <> "Idle"  then
					tcWebApi_constSet("WebCurSet_Entry", "VoIPIdle", "0")
				end if
			end if
		end if
	end if
	if tcWebApi_get("WebCurSet_Entry", "VoIPIdle", "h") = "1"  then
		tcWebApi_set("VoIPBasic_Common", "SIPProtocol", "sipMode")
		tcWebApi_set("VoIPAdvanced_Common", "VoIPRegion", "localeName")
		tcWebApi_set("VoIPAdvanced_Common","CurIFName","ifName")
		tcWebApi_set("VoIPAdvanced_Common","CurIFIndex","curSetIndex")
		tcWebApi_set("VoIPAdvanced_Common", "SIPDomain", "dareSipDomain")
		tcWebApi_set("VoIPBasic_Common", "RegistrarServer", "regAddr")
		tcWebApi_set("VoIPBasic_Common", "RegistrarServerPort", "regPort")
		tcWebApi_set("VoIPBasic_Common", "SBRegistrarServer", "regAddr2")
		tcWebApi_set("VoIPBasic_Common", "SBRegistrarServerPort", "regPort2")	
		tcWebApi_set("VoIPBasic_Entry0", "Enable", "lineEnabled0")	
		tcWebApi_set("VoIPBasic_Entry0", "SIPAuthenticationName", "authName0")	
		tcWebApi_set("VoIPBasic_Entry0", "SIPDisplayName", "authName0")	
		tcWebApi_set("VoIPBasic_Common", "SIPProxyAddr", "proxyAddr")
		tcWebApi_set("VoIPBasic_Common", "SIPProxyPort", "proxyPort")
		tcWebApi_set("VoIPBasic_Common", "SBSIPProxyAddr", "proxyAddr2")
		tcWebApi_set("VoIPBasic_Common", "SBSIPProxyPort", "proxyPort2")
		if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes"  then
			tcWebApi_set("VoIPBasic_Common", "SIPOutboundProxyEnable", "obProxyEn_flag")
		end if
		tcWebApi_set("VoIPBasic_Common", "SIPOutboundProxyAddr", "obProxyAddr")
		tcWebApi_set("VoIPBasic_Common", "SIPOutboundProxyPort", "obProxyPort")
		tcWebApi_set("VoIPBasic_Common", "SBOutboundProxyAddr", "obProxyAddr2")
		tcWebApi_set("VoIPBasic_Common", "SBOutboundProxyPort", "obProxyPort2")	
		
		tcWebApi_set("VoIPBasic_Entry0", "SIPPassword", "password0")	
		If tcWebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then
			tcWebApi_set("VoIPBasic_Entry1", "Enable", "lineEnabled1")
			tcWebApi_set("VoIPBasic_Entry1", "SIPAuthenticationName", "authName1")
			tcWebApi_set("VoIPBasic_Entry1", "SIPDisplayName", "authName1")
			tcWebApi_set("VoIPBasic_Entry1", "SIPPassword", "password1")		
		End If		
		if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "IMSSIP" then
			tcWebApi_set("VoIPBasic_Entry0", "SIPDisplayName", "extension0")
			tcWebApi_set("VoIPBasic_Entry0", "SIPDisplayNumber", "dispName0")
			If tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") <> "Yes"  then
			tcWebApi_constSet("VoIPAdvanced_Common", "SubscribeType", "1")
			End if
			If tcWebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then
				tcWebApi_set("VoIPBasic_Entry1", "SIPDisplayName", "extension1")
				tcWebApi_set("VoIPBasic_Entry1", "SIPDisplayNumber", "dispName1")
			End If		
		end if	
		if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "SIP" then
			If tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") <> "Yes"  then
			tcWebApi_constSet("VoIPAdvanced_Common", "SubscribeType", "0")
			End If
		end if	
		tcWebApi_commit("VoIPBasic")
		tcWebApi_save()
	end if
end if
%>
<HTML><HEAD><TITLE>VOIP configuration</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>
<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
<SCRIPT language=javascript>
<%
If request_Form("VoIP_basic_flag")="1" then
	if tcWebApi_get("WebCurSet_Entry", "VoIPIdle", "h") <> "1"  then
		asp_write("alert('VoIP is calling , can not save , please save after the calls.');")
	end if
end if
%>
	var voiptype=document.location.search.toString();
	<% if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "H.248"  then %>
		if(voiptype.slice(10) != "SIP" && voiptype.slice(10) != "IMSSIP")
			location.replace("/cgi-bin/app-VoIP248.asp");
	<% end if %>
<% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
var maxLines = '2';
<% else %>
var maxLines = '1';
<% end if %>

var sm = "<%if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "SIP" then asp_Write("1") else asp_Write("0") end if %>";
function LoadFrame() {

   generatePerLineTable();

   with ( document.ConfigForm ) 
   {
<% if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then %>
	   	if(voiptype != "")
	   	{
	   		selectOption();
	   	}
<% end if %>
      enableEditBoxes();
	   <% if tcWebApi_get("WebCustom_Entry", "isCTSCSupported", "h") = "Yes" then%>
	   	extension0.disabled=true;
	   	dispName0.disabled=true;
	   	authName0.disabled=true;
	   	password0.disabled=true;
	   <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
	   	extension1.disabled=true;
	   	dispName1.disabled=true;
	   	authName1.disabled=true;
	   	password1.disabled=true;
	   <% end if %>
	   <% end if %>
   } 
   
   document.getElementById("regStatus0").value = showRegisterState(1);
   <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
   document.getElementById("regStatus1").value = showRegisterState(2);
   <% end if %>
}
	
function showRegisterState(port)
{
	var Status = '';
	var LineEnable='';
	var RegFailReason = '';
	
	if ( 1 == port ){
      Status = "<% tcWebAPI_get("InfoVoIP_Entry0", "Status", "s") %>";
      LineEnable = '<%if tcWebAPI_get("VoIPBasic_Entry0", "Enable", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "Enable", "s") else asp_Write("") end if %>';
      RegFailReason = "<% tcWebAPI_get("InfoVoIP_Entry0", "RegFailReason", "s") %>";
	}
  <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
	else if ( 2 == port ){
      Status = "<% tcWebAPI_get("InfoVoIP_Entry1", "Status", "s") %>";
      LineEnable = '<%if tcWebAPI_get("VoIPBasic_Entry1", "Enable", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "Enable", "s") else asp_Write("") end if %>';
      RegFailReason = "<% tcWebAPI_get("InfoVoIP_Entry1", "RegFailReason", "s") %>";
  }
  <% end if %>
	else
      return;
	if(LineEnable == 'No'){
			return 'To enable';
	};
	if ( Status == 'Up' )
			return 'Registered';
	else if ( Status == 'Initializing' )
			return 'Initializing';
	else if ( Status == 'Registering' )
			return 'Registering';
	else if ( Status == 'Unregistering' )
			return 'Unregistered';
	else if ( Status == 'Quiescent' )
			return 'Quiescent';
	else if ( Status == 'Disabled' )
			return 'To enable';
	else if ( Status == 'Error' ){
		switch ( parseInt(RegFailReason) ){
			case 2:
			case 3:
				voiptatus = 'network(SBC) unreachable';
				break;
			case 4:
				voiptatus = 'Authentication failed';
				break;
			case 6:
				voiptatus = 'Business channel exception';
				break;				
			default:
				voiptatus = 'breakdown';
				break;
		}
		return voiptatus;		
		}
	else if ( Status == 'Testing' )
			return 'Testing';
	else
			return '--';
}
	
function generatePerLineTable()
{
  // Generate the table
   if (document.body.innerHTML) {
      var tableHtmlOutput = "<table id='perLineTable1' border='1'><tbody id='perLineTbody1'>";
	  
	  // Enable row
      tableHtmlOutput += "<tr>";
      tableHtmlOutput += "<td class='hd'>Status<\/td>"
      var selectOptions1 = Array();
      //var pFlag = "off";
      selectOptions1[0] = "<option value=\'No\' <%if tcWebAPI_get("VoIPBasic_Entry0", "Enable", "h") = "No" then  asp_Write("selected") end if %>>" + "Disabled";
      //pFlag = "on";
      selectOptions1[1] = "<option value=\'Yes\' <%if tcWebAPI_get("VoIPBasic_Entry0", "Enable", "h") = "Yes" then  asp_Write("selected") end if %>>" + "Enabled";
      var data = "<select name='lineEnabled0' <% if tcwebApi_get("WebCustom_Entry","isCTSCSupported","h") = "Yes" then %>disabled<% end if %>>" + selectOptions1.join("") + "<\/select>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      
      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
      selectOptions1[0] = "<option value=\'No\' <%if tcWebAPI_get("VoIPBasic_Entry1", "Enable", "h") = "No" then  asp_Write("selected") end if %>>" + "Disabled";
      //pFlag = "on";
      selectOptions1[1] = "<option value=\'Yes\' <%if tcWebAPI_get("VoIPBasic_Entry1", "Enable", "h") = "Yes" then  asp_Write("selected") end if %>>" + "Enabled";
      var data = "<select name='lineEnabled1' <% if tcwebApi_get("WebCustom_Entry","isCTSCSupported","h") = "Yes" then %>disabled<% end if %>>" + selectOptions1.join("") + "<\/select>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";         
      tableHtmlOutput += "</tr>";
      <% end if %>

      tableHtmlOutput += "<tr>";
      tableHtmlOutput += "<td class='hd'>regist status<\/td>"
      var data = "<input type='text' size=20 maxlength=40 disabled=true name=\'regStatus0\' id=\'regStatus0\' value=\'<%if tcWebAPI_get("InfoVoIP_Entry0", "Status", "h") <> "N/A" then tcWebAPI_get("InfoVoIP_Entry0", "Status", "s") else asp_Write("unregistered") end if %>\'>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      
      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
      var data = "<input type='text' size=20 maxlength=40 disabled=true name=\'regStatus1\' id=\'regStatus1\' value=\'<%if tcWebAPI_get("InfoVoIP_Entry1", "Status", "h") <> "N/A" then tcWebAPI_get("InfoVoIP_Entry1", "Status", "s") else asp_Write("unregistered") end if %>\'>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      <% end if %>
      tableHtmlOutput += "</tr>";

      //telephone number
      tableHtmlOutput += "<tr ID=\"edit_telnumber\">";
      tableHtmlOutput += "<td class='hd'>Phone number<\/td>"

      var data = "<input type='text' size=20 maxlength=64 name=\'extension0\' value=\'<%if tcWebAPI_get("VoIPBasic_Entry0", "SIPDisplayName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "SIPDisplayName", "s") else asp_Write("") end if %>\'>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      
      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
      var data = "<input type='text' size=20 maxlength=64 name=\'extension1\' value=\'<%if tcWebAPI_get("VoIPBasic_Entry1", "SIPDisplayName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "SIPDisplayName", "s") else asp_Write("") end if %>\'>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      <% end if %>

      tableHtmlOutput += "</tr>";
      
      //display name
      tableHtmlOutput += "<tr ID=\"edit_displayname\">";
      tableHtmlOutput += "<td class='hd'>Display number<\/td>"
     	var data = "<input type='text' size=20 maxlength=128 name=\'dispName0\' value=\'<%if tcWebAPI_get("VoIPBasic_Entry0", "SIPDisplayNumber", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "SIPDisplayNumber", "s") else asp_Write("") end if %>\'>";
     	tableHtmlOutput += "<td align=center>" + data + "</td>";
     	
     	<% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
     	var data = "<input type='text' size=20 maxlength=128 name=\'dispName1\' value=\'<%if tcWebAPI_get("VoIPBasic_Entry1", "SIPDisplayNumber", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "SIPDisplayNumber", "s") else asp_Write("") end if %>\'>";
     	tableHtmlOutput += "<td align=center>" + data + "</td>";     	
     	<% end if %>   	
      tableHtmlOutput += "</tr>";
      
      //auth name
      tableHtmlOutput += "<tr>";
      tableHtmlOutput += "<td class='hd'>Account<\/td>"

      var data = "<input type='text' size=20 maxlength=128 name=\'authName0\' value=\'<%if tcWebAPI_get("VoIPBasic_Entry0", "SIPAuthenticationName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "SIPAuthenticationName", "s") else asp_Write("") end if %>\'>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      
      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
      var data = "<input type='text' size=20 maxlength=128 name=\'authName1\' value=\'<%if tcWebAPI_get("VoIPBasic_Entry1", "SIPAuthenticationName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "SIPAuthenticationName", "s") else asp_Write("") end if %>\'>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      <% end if %>
         
      tableHtmlOutput += "</tr>";

      // Password row
      tableHtmlOutput += "<tr>";
      tableHtmlOutput += "<td class='hd'>Password<\/td>"

      var data = "<input type='Password' size=20 maxlength=128 name=\'password0\' value=\'<%if tcWebAPI_get("VoIPBasic_Entry0", "SIPPassword", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "SIPPassword", "s") else asp_Write("") end if %>\'>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      
      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
      var data = "<input type='Password' size=20 maxlength=128 name=\'password1\' value=\'<%if tcWebAPI_get("VoIPBasic_Entry1", "SIPPassword", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "SIPPassword", "s") else asp_Write("") end if %>\'>";
      tableHtmlOutput += "<td align=center>" + data + "</td>";
      <% end if %>

      tableHtmlOutput += "</tr>";

      //End of table
      tableHtmlOutput += "</tbody></table>";

      document.getElementById("perLineTablePlaceholder1").innerHTML = tableHtmlOutput;
   } else {
      alert("Cannot create per line table in this browser.");
   }
	
}

function enableEditBoxes()
{
   if ( sm == "1" )
   {
    	document.getElementById('edit_dareSipDomain').style.display = "none";
    	document.getElementById('edit_telnumber').style.display = "none";
    	document.getElementById('edit_displayname').style.display = "none";    	
    }
    else
    {
    	document.getElementById('edit_dareSipDomain').style.display = "";
    	document.getElementById('edit_telnumber').style.display = "";
    	document.getElementById('edit_displayname').style.display = "";    	
 
    }
}	
	
function applyClickAdvanced()
{
   var loc = "app-VoIP_Adv.asp";
   var code = "location='" + loc + " '";
   eval(code);
}	

function proClick(obj) {
    var idx = obj.selectedIndex;
    var val = obj.options[idx].value;
    if ( val == "SIP" )
    {
    	sm = '1';
    }
<% if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then %>
    else if ( val == "H.248" )
    {
    	location.replace("/cgi-bin/app-VoIP248.asp?isLocation=1");
    }
<% end if %>
    else
    {
    	sm = '0';	
    }
    
    enableEditBoxes();
}

function curIndexUpdate()
{
	var pvc_counts = <% tcWebApi_get("WanInfo_Common", "CycleNum", "s") %>;
	var vArrayStr = "<% tcWebApi_get("WanInfo_Common", "CycleValue", "s") %>";
	var indexArrayStr = "<% tcWebApi_get("WanInfo_Common", "ValidIFIndex", "s") %>";
	var Wan_WanName = vArrayStr.split(',');
	var Voip_WanIndex = indexArrayStr.split(',');

	for (var i = 0;i < pvc_counts;i++)
	{
		if(Wan_WanName[i]==document.ConfigForm.ifName.value) 
		{
			document.ConfigForm.curSetIndex.value = Voip_WanIndex[i]; 
		}
	}
}

function printInterfaceListBox()
{
	var pvc_counts = <% tcWebApi_get("WanInfo_Common", "CycleNum", "s") %>;
	var vArrayStr = "<% tcWebApi_get("WanInfo_Common", "CycleValue", "s") %>";
	var Voip_WanName = "<% tcWebApi_get("VoIPAdvanced_Common", "CurIFName", "s") %>";
	var Wan_WanName = vArrayStr.split(',');

	for (var i = 0;i < pvc_counts;i++)
	{
		if (Wan_WanName[i].indexOf('_VOICE_') > -1 && Wan_WanName[i].indexOf('_R_') > -1)
		{
			if(Wan_WanName[i]==Voip_WanName) 
			{
				document.writeln("<option value=\"" + Wan_WanName[i] + "\" selected>"+Wan_WanName[i]+"");
			}
			else
				document.writeln("<option value=\"" + Wan_WanName[i] + "\">"+Wan_WanName[i]+"");
		}
	}

	curIndexUpdate();
}

function printLocaleListBox()
{
//	 var locList = ',,,,,,,,,,,,,,,,,,,,,,,,';	
     document.writeln("<option value=\"AUS-AUSTRAILIA\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "AUS-AUSTRAILIA" then  asp_Write("selected") end if %>> AUS-AUSTRAILIA" );
     document.writeln("<option value=\"BEL-BELIGIUM\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "BEL-BELIGIUM" then  asp_Write("selected") end if %>> BEL-BELIGIUM" );
     document.writeln("<option value=\"BRA-BRAZIL\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "BRA-BRAZIL" then  asp_Write("selected") end if %>> BRA-BRAZIL" );
     document.writeln("<option value=\"CHL-CHILE\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "CHL-CHILE" then  asp_Write("selected") end if %>> CHL-CHILE" );
     document.writeln("<option value=\"CHN-CHINA\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "CHN-CHINA" then  asp_Write("selected") end if %>> CHN-CHINA" );
     document.writeln("<option value=\"CZH-CZECH\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "CZH-CZECH" then  asp_Write("selected") end if %>> CZH-CZECH" );
     document.writeln("<option value=\"DNK-DENMARK\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "DNK-DENMARK" then  asp_Write("selected") end if %>> DNK-DENMARK" );
     document.writeln("<option value=\"ETS-ETSI\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "ETS-ETSI" then  asp_Write("selected") end if %>> ETS-ETSI" );
     document.writeln("<option value=\"FIN-FINLAND\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "FIN-FINLAND" then  asp_Write("selected") end if %>> FIN-FINLAND" );
     document.writeln("<option value=\"FRA-FRANCE\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "FRA-FRANCE" then  asp_Write("selected") end if %>> FRA-FRANCE" );
     document.writeln("<option value=\"DEU-GERMANY\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "DEU-GERMANY" then  asp_Write("selected") end if %>> DEU-GERMANY" );
     document.writeln("<option value=\"HUN-HUNGARY\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "HUN-HUNGARY" then  asp_Write("selected") end if %>> HUN-HUNGARY" );
     document.writeln("<option value=\"IND-INDIA\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "IND-INDIA" then  asp_Write("selected") end if %>> IND-INDIA" );
     document.writeln("<option value=\"ITA-ITALY\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "ITA-ITALY" then  asp_Write("selected") end if %>> ITA-ITALY" );
     document.writeln("<option value=\"JPN-JAPAN\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "JPN-JAPAN" then  asp_Write("selected") end if %>> JPN-JAPAN" );
     document.writeln("<option value=\"RUS-RUSSIA\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "RUS-RUSSIA" then  asp_Write("selected") end if %>> RUS-RUSSIA" );     
     document.writeln("<option value=\"NLD-NETHERLANDS\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "NLD-NETHERLANDS" then  asp_Write("selected") end if %>> NLD-NETHERLANDS" );
     document.writeln("<option value=\"NZL-NEWZEALAND\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "NZL-NEWZEALAND" then  asp_Write("selected") end if %>> NZL-NEWZEALAND" );
     document.writeln("<option value=\"USA-NORTHAMERICA\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "USA-NORTHAMERICA" then  asp_Write("selected") end if %>> USA-NORTHAMERICA" );
     document.writeln("<option value=\"ESP-SPAIN\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "ESP-SPAIN" then  asp_Write("selected") end if %>> ESP-SPAIN" );
     document.writeln("<option value=\"SWE-SWEDEN\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "SWE-SWEDEN" then  asp_Write("selected") end if %>> SWE-SWEDEN" );
     document.writeln("<option value=\"NOR-NORWAY\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "NOR-NORWAY" then  asp_Write("selected") end if %>> NOR-NORWAY" );
     document.writeln("<option value=\"CHE-SWITZERLAND\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "CHE-SWITZERLAND" then  asp_Write("selected") end if %>> CHE-SWITZERLAND" );
     document.writeln("<option value=\"T57-TR57\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "T57-TR57" then  asp_Write("selected") end if %>> T57-TR57" );
     document.writeln("<option value=\"GBR-UK\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "GBR-UK" then  asp_Write("selected") end if %>> GBR-UK" );
     document.writeln("<option value=\"THA-THAILAND\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "THA-THAILAND" then  asp_Write("selected") end if %>> THA-THAILAND" );
     document.writeln("<option value=\"TWN-TAIWAN\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "TWN-TAIWAN" then  asp_Write("selected") end if %>> TWN-TAIWAN" );
     document.writeln("<option value=\"CHE-SWITZERLAND\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "CHE-SWITZERLAND" then  asp_Write("selected") end if %>> CHE-SWITZERLAND" );
     document.writeln("<option value=\"YUG-YUGOSLAVIA\" <%if TCWebAPI_get("VoIPAdvanced_Common", "VoIPRegion", "h") = "YUG-YUGOSLAVIA" then  asp_Write("selected") end if %>> YUG-YUGOSLAVIA" );
     
}

function limitNum(o)
{
	if (o.value != "")
	{
		if (!isInteger(o.value))
		{
			alert('"' + o.value + '"' + 'only numbers may be entered.');	
			window.setTimeout( function(){ o.focus(); }, 0);
		}
	}
}
//检查域名
function checkDomainName(o)
{
	//检查是不是IP地址
	if(o.value == "")
	{
		return;
	}
	var regexpIP = /^(([1-9]?\d|1\d{2}|2[0-4]\d|25[0-5])\.){3}([1-9]?\d|1\d{2}|2[0-4]\d|25[0-5])$/
	if(regexpIP.test(o.value))
	{
		return;
	}
	//是否包含bsnl.in后缀
	var regexpEnd = /.bsnl.in$/
	if(regexpEnd.test(o.value))
	{
		return;
	}
	//添加bsnl.in后缀
	o.value += ".bsnl.in";
}


function checkPort(o)
{
	if (o.value != "")
	{
		if (!isInteger(o.value) || !isValidPort(o.value))
		{
			alert('"' + o.value + '"' + 'is a invalid port');	
			window.setTimeout( function(){ o.focus(); }, 0);
		}
	}
}

function btnApplySip() 
{
   with ( document.ConfigForm )
   {
   	/*
   	if(regAddr.value != "")
   	{
			if (isValidIpAddress(regAddr.value) == false)
			{
				alert('"注册服务器' + regAddr.value + '"是无效IP地址.');	
				return;
			}
		}

		if (regAddr2.value != "")
		{	
			if (isValidIpAddress(regAddr2.value) == false)
			{
				alert('"备用注册服务器' + regAddr2.value + '"是无效IP地址.');	
				return;
			}			
		}
		*/

			/*
			if (proxyAddr.value != "")
			{
				if (isValidIpAddress(proxyAddr.value) == false)
				{
					alert('"代理服务器' + proxyAddr.value + '"是无效IP地址.');	
					return;
				}
			}
			
			if (obProxyAddr.value != "")
			{
				if (isValidIpAddress(obProxyAddr.value) == false)
				{
					alert('"出局代理服务器' + obProxyAddr.value + '"是无效IP地址.');	
					return;
				}
			}

			if (obProxyAddr2.value != "")
			{
				if (isValidIpAddress(obProxyAddr2.value) == false)
				{
					alert('"备用出局代理服务器' + obProxyAddr2.value + '"是无效IP地址.');	
					return;
				}
			}		
			*/
			
			if (regAddr.value != "")
			{
				if (regPort.value == "")
				{
					alert('register server port number can not be empty.');
					return;
				}
			}
			else
			{
				if (regPort.value != "")
				{
					alert('register server address can not be empty.');
					return;
				}
			}			
			
			if (regAddr2.value != "")
			{
				if (regPort2.value == "")
				{
					alert('backup register server port number can not be empty.');
					return;
				}
			}
			else
			{
				if (regPort2.value != "")
				{
					alert('backup register server address can not be empty.');
					return;
				}
			}	
			
			if (proxyAddr.value != "")
			{
				if (proxyPort.value == "")
				{
					alert('proxy register server port number can not be empty.');
					return;
				}
			}
			else
			{
				if (proxyPort.value != "")
				{
					alert('proxy register server address can not be empty.');
					return;
				}
			}	
			
			if (obProxyAddr.value != "")
			{
				if (obProxyPort.value == "")
				{
					alert('outband proxy register server port number can not be empty.');
					return;
				}
			}
			else
			{
				if (obProxyPort.value != "")
				{
					alert('outband proxy register server address can not be empty.');
					return;
				}
			}	
			
			if (obProxyAddr2.value != "")
			{
				if (obProxyPort2.value == "")
				{
					alert('backup outband proxy register server port number can not be empty.');
					return;
				}
			}
			else
			{
				if (obProxyPort2.value != "")
				{
					alert('backup outband proxy register server address can not be empty.');
					return;
				}
			}	
		
<% if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes"  then %>		
		if (obProxyEn.checked)
		{
			obProxyEn_flag.value = "Yes";
		}
<% end if %>
		VoIP_basic_flag.value = 1;
		parent.voipType = "SIP";
		submit();						
   }
}
<% if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then %>
function selectOption()
{
	with (document.ConfigForm)
	{
		for(i = 0;i<3;i++)
		{
			if(sipMode.options[i].value == voiptype.slice(10))
			{
				sipMode.options[i].selected = true;
			}
		}

		if ( voiptype.slice(10) == "SIP" )
		{
				sm = '1';
		}
 		else if(voiptype.slice(10) == "IMSSIP")
		{
				sm = '0';
		}
	}
}
<% end if %>
</SCRIPT>
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
                <TD class=welcom vAlign=bottom align=middle width=120>Welcome！ </TD>
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
            value="Application->VoIP" name=Selected_Menu> </FONT></B><SPAN 
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
		<TD width=157 bgColor=#dff5ff height=15></TD>
		<TD width=851 bgColor=#ffffff height=15></TD>
		</TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=top>
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>VoIP Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170
            rowSpan=13><TABLE cellSpacing=0 cellPadding=20 width="100%" 
border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#VoIP" 
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
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <FORM id=ConfigForm name="ConfigForm" action="/cgi-bin/app-VoIP.asp" method="post">
                 		<DIV id=pptp>
                  		<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
										     <TBODY>
							                <TR>
							                    <TD>
							                        <input type='button' style="font-size:100%;width:170;height:30" onClick="applyClickAdvanced()" value='VoIP Advanced Settings'>
							                    </TD>
							                </TR>
							                <TR>
							                    <TD height="10">
							                        
							                    </TD>
							                </TR>
							                <TR>
							                    <TD class=table1_head>
							                    	<B>
							                        VoIP Basic Settings
							                      </B>
							                    </TD>
							                </TR>
							                <TR>
							                    <TD height="10">
							                        
							                    </TD>
							                </TR>
							                <TR>
							                    <TD>
							                        Input VoIP parameters, and click [apply] to save .
							                    </TD>
							                </TR>
							                <TR>
							                    <TD height="10">
							                        
							                    </TD>
							                </TR>
							            </TBODY>
								        </TABLE>
								        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
								            <TBODY>
								                <TR>
								                    <TD class=prompt>
								                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
								                            <TBODY>
								                                <TR>
								                                    <TD style="PADDING-LEFT: 10px" width="100%"></TD>
								                                </TR>
								                            </TBODY>
								                        </TABLE>
								                    </TD>
								                </TR>
								            </TBODY>
								        </TABLE>
								        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
								            <TBODY>
								                <TR>
								                    <TD height=5></TD>
								                </TR>
								            </TBODY>
							       		</TABLE>
								        <TABLE border=0 cellSpacing=1 cellPadding=0 width="98%">
								            <TBODY>
								                <TR>
								                    <TD width="35%" align=left>
								                        Protocol:
								                    </TD>
								                    <TD width="65%" colSpan=2 align=left>
										                        <select name="sipMode" id="mg_regist" onChange="proClick(this)">
						                                    <option value="IMSSIP" <%if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "IMSSIP" then asp_Write("selected") end if %>>IMSSIP</option>
																								<option value="SIP" <%if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "SIP" then asp_Write("selected") end if %>>SIP</option>
<% if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then %>
						                                    <option value="H.248" >H.248</option>
<%end if%>
						                                </select>
<% if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then %>
								                       To switch voice protocol, reboot.
<%end if%>
								                    </TD>
								                </TR>
								                <TR>
								                    <TD align=left>
								                        Binding Interface Name:
								                    </TD>
								                    <TD align=left>
								                    	<TABLE>
								                    		<TR>
								                    			<TD>
								                    			<input type="hidden" name="curSetIndex" value="<%if tcWebApi_get("VoIPAdvanced_Common", "CurIFIndex", "h") <> "N/A" then tcWebAPI_get("VoIPAdvanced_Common", "CurIFIndex", "s") else asp_Write("") end if %>">
										                        <select name="ifName" onChange="curIndexUpdate()" size="1" >
															                  <script TYPE="text/javascript">
															                     printInterfaceListBox()
															                  </script>
															              </select>
															            </TD>
															            <TD>
															            	<b>(Note: You must restart VoIP services to take effect)</b>
															            </TD>
													              </TR>
													            </TABLE>
								                    </TD>
								                </TR>
								                <TR>
								                    <TD align=left>
								                        Region:
								                    </TD>
								                    <TD align=left>
								                    	<TABLE>
								                    		<TR>
								                    			<TD>
										                        <select name="localeName" size="1">
															                  <script TYPE="text/javascript">
															                     printLocaleListBox()
															                  </script>
															              </select>
															            </TD>
															            <TD>
															            	<b>(Note: you must restart Voip services to take effect)</b>
															            </TD>
													              </TR>
													            </TABLE>
								                    </TD>
								                </TR>
									               <tr ID="edit_dareSipDomain">
									                  <td width="35%">SIP domain:</td>
									                  <td width="65%"><input type='text' name='dareSipDomain' VALUE="<%if tcWebApi_get("VoIPAdvanced_Common", "SIPDomain", "h") <> "N/A" then tcWebAPI_get("VoIPAdvanced_Common", "SIPDomain", "s") else asp_Write("") end if %>"></td>
									               </tr>
									               <tr>
									                  <td>Register server:</td>
<% if tcWebApi_get("WebCustom_Entry", "isCustomerBSNLSupported", "h") = "Yes"  then %>
									                  <td><input type='text' name='regAddr' onchange="checkDomainName(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "RegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServer", "s") else asp_Write("") end if %>"></td>
<% else %>
														<td><input type='text' name='regAddr' VALUE="<%if tcWebApi_get("VoIPBasic_Common", "RegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServer", "s") else asp_Write("") end if %>"></td>
<% end if %>
												   </tr>
									               <tr>
									                  <td>Register server port:</td>
									                  <td><input type='text' name='regPort' onblur="checkPort(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "RegistrarServerPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServerPort", "s") else asp_Write("") end if %>"></td>
									               </tr>
									               <tr ID="edit_proxyAddr">
									                  <td>SIP Proxy Address:</td>
<% if tcWebApi_get("WebCustom_Entry", "isCustomerBSNLSupported", "h") = "Yes"  then %>
									                  <td><input type='text' name='proxyAddr'  onchange="checkDomainName(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SIPProxyAddr", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SIPProxyAddr", "s") else asp_Write("") end if %>"></td>
<% else %>
													<td><input type='text' name='proxyAddr' VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SIPProxyAddr", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SIPProxyAddr", "s") else asp_Write("") end if %>"></td>
<% end if %>
												   </tr>
									               <tr ID="edit_proxyPort">
									                  <td>SIP Proxy Port:</td>
									                  <td><input type='text' name='proxyPort' onblur="checkPort(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SIPProxyPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SIPProxyPort", "s") else asp_Write("") end if %>"></td>
									               </tr>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes"  then %>
									               <tr ID="edit_obProxyEn">
									                  <td>Enable outband proxy server:</td>
									                  <td>
									                		<input type='checkbox' name='obProxyEn' value='YES' <%if tcWebApi_get("VoIPBasic_Common", "SIPOutboundProxyEnable", "h") = "Yes" then asp_Write("checked") end if %>>
									                  </td>
									               </tr>
<% end if %>
									               <tr ID="edit_obProxyAddr">
									                  <td>SIP Outband Proxy:</td>
<% if tcWebApi_get("WebCustom_Entry", "isCustomerBSNLSupported", "h") = "Yes"  then %>													  
									                  <td><input type='text' name='obProxyAddr'  onchange="checkDomainName(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SIPOutboundProxyAddr", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SIPOutboundProxyAddr", "s") else asp_Write("") end if %>"></td>
<% else %>
									                  <td><input type='text' name='obProxyAddr' VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SIPOutboundProxyAddr", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SIPOutboundProxyAddr", "s") else asp_Write("") end if %>"></td>
<% end if %>
												   </tr>
									               <tr ID="edit_obProxyPort">
									                  <td>SIP Outband proxy Port:</td>
									                  <td><input type='text' name='obProxyPort' onblur="checkPort(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SIPOutboundProxyPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SIPOutboundProxyPort", "s") else asp_Write("") end if %>"></td>
									               </tr>
									               <tr ID="edit_regAddr2">
									                  <td>SB Register Server:</td>
<% if tcWebApi_get("WebCustom_Entry", "isCustomerBSNLSupported", "h") = "Yes"  then %>	
									                  <td><input type='text' name='regAddr2' onchange="checkDomainName(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServer", "s") else asp_Write("") end if %>"></td>
<% else %>
									                  <td><input type='text' name='regAddr2' VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServer", "s") else asp_Write("") end if %>"></td>
<% end if%>
												   </tr>
									               <tr ID="edit_regPort2">
									                  <td>SB Register Server Port:</td>
									                  <td><input type='text' name='regPort2' onblur="checkPort(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServerPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServerPort", "s") else asp_Write("") end if %>"></td>
									               </tr>
									               <tr ID="edit_proxyAddr2">
									                  <td>SB SIP Proxy Address:</td>
<% if tcWebApi_get("WebCustom_Entry", "isCustomerBSNLSupported", "h") = "Yes"  then %>	
									                  <td><input type='text' name='proxyAddr2'  onchange="checkDomainName(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBSIPProxyAddr", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBSIPProxyAddr", "s") else asp_Write("") end if %>"></td>
<% else %>									                  
													  <td><input type='text' name='proxyAddr2' VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBSIPProxyAddr", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBSIPProxyAddr", "s") else asp_Write("") end if %>"></td>
<% end if %>
									               </tr>
									               <tr ID="edit_proxyPort2">
									                  <td>SB SIP Proxy Port:</td>
									                  <td><input type='text' name='proxyPort2' onblur="checkPort(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBSIPProxyPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBSIPProxyPort", "s") else asp_Write("") end if %>"></td>
									               </tr>									               
												  			 <tr ID="edit_obProxyAddr2">
									                  <td>SB Outband Proxy:</td>
<% if tcWebApi_get("WebCustom_Entry", "isCustomerBSNLSupported", "h") = "Yes"  then %>	
									                  <td><input type='text' name='obProxyAddr2'  onchange="checkDomainName(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBOutboundProxyAddr", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBOutboundProxyAddr", "s") else asp_Write("") end if %>"></td>
<% else %>									                  
													  <td><input type='text' name='obProxyAddr2' VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBOutboundProxyAddr", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBOutboundProxyAddr", "s") else asp_Write("") end if %>"></td>
<% end if %>
									               </tr>
									               <tr ID="edit_obProxyPort2">
									                  <td>SB Outband Proxy Port:</td>
									                  <td><input type='text' name='obProxyPort2' onblur="checkPort(this)" VALUE="<%if tcWebApi_get("VoIPBasic_Common", "SBOutboundProxyPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBOutboundProxyPort", "s") else asp_Write("") end if %>"></td>
									               </tr>
									             </TBODY>
										        </TABLE>
										        <BR>
										        <div id="perLineTablePlaceholder1">
										        
										        </div>
										        <TABLE border=0 cellSpacing=1 cellPadding=0 width="98%">
										        	<tr>
										        		<td height="10">
										        		</td>
										        	</tr>
										        	<tr>
					                        <td align="center">
					                        	 <input type='hidden' name="VoIP_basic_flag" value="0">
<% if tcWebApi_get("WebCustom_Entry", "isCTPONC9Supported", "h") = "Yes"  then %>
					                        	 <input type='hidden' name="obProxyEn_flag" value="No">
<% end if %>
					                        </td>
					                    </tr>
					                    <tr>
					                        <td align="center">
					                          <input type='button' onClick="btnApplySip()" value='Apply' ID="ApplyButton" >
					                        </td>
					                    </tr>
										        </TABLE>
										      </DIV>
                    </FORM>
                  </TD>
                </TR>
              </TBODY>
            </TABLE>
          </TD>
        </TR>      
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2></P></TD>
           <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff></TD>
           <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR></TBODY></TABLE>
      </TD></TR>
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
