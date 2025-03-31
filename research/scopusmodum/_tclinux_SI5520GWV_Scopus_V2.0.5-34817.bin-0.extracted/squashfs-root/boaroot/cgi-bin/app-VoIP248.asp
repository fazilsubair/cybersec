<%
If request_Form("VoIP_h248_flag")="1" then
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
	if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then
		tcWebApi_set("VoIPBasic_Common", "SIPProtocol", "VoIPMode")
		tcWebApi_commit("VoIPBasic")
	End if
	tcWebApi_set("VoIPH248_Common", "DeviceIDType", "mgidselect")	
	tcWebApi_set("VoIPH248_Common", "DeviceID", "mymgname")	
	tcWebApi_set("VoIPH248_Common", "MediaGatewayPort", "mymgport")
	tcWebApi_set("VoIPH248_Common", "MediaGatewayControler", "mymgcip")
	tcWebApi_set("VoIPH248_Common", "MediaGatewayControlerPort", "mymgcport")
	tcWebApi_set("VoIPH248_Common", "SBMediaGatewayControler", "mybkmgcip")	
	tcWebApi_set("VoIPH248_Common", "SBMediaGatewayControlerPort", "mybkmgcport")	
	tcWebApi_set("VoIPH248_Common", "RTPPrefix", "mgRTPPrefix")	
	tcWebApi_set("VoIPH248_Common", "EphemeralTermIDAddLen", "mgEpTermIDLen")	
	tcWebApi_set("VoIPH248_Common", "EphemeralTermIDUniform", "mgEpTermIDUniform")	
	tcWebApi_set("VoIPH248_Common", "EphemeralTermIDStart", "mgEpTermIDStart")	
	tcWebApi_set("VoIPH248_Common", "EphemeralTermIDNum", "mgEpTermIDNum")
	tcWebApi_set("VoIPH248_Common", "MegacoSignalDSCP", "mymgtos")
	tcWebApi_set("VoIPH248_Common", "MegacoRTPDSCP", "mymgtos2")	
	tcWebApi_set("VoIPH248_Entry0", "PhysicalTermID", "mymgterm0")
	tcWebApi_set("VoIPH248_Common", "PhysicalTermIDPrefix", "termidPrefix")		
	tcWebApi_set("VoIPH248_Common", "PhysicalTermIDConfigMethod", "termidMethod")		
	tcWebApi_set("VoIPH248_Common", "PhysicalTermIDStart", "termidStart")		
	If tcWebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then 	
	tcWebApi_set("VoIPH248_Entry1", "PhysicalTermID", "mymgterm1")			
	End If			
	tcWebApi_set("VoIPAdvanced_Common","RtpBindIFIndex","ifName")
	tcWebApi_commit("VoIPH248_Common")
	tcWebApi_commit("VoIPH248")
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
<SCRIPT language="javascript" type = "text/javascript">
<%
If request_Form("VoIP_h248_flag")="1" then
	if tcWebApi_get("WebCurSet_Entry", "VoIPIdle", "h") <> "1"  then
		asp_write("alert('In Voip calls, you can't save them. Please save them after the call.');")
	end if
end if
%>
function LoadFrame() 
{
	with (document.ConfigForm)
	{

		generatePerLineTable1();
				
		if ("0" == document.getElementById("termid_method").selectedIndex){
			document.getElementById("termidPrefix_table").style.display = "";
			document.getElementById("termidStart_table").style.display = "";	
				
			document.getElementById("perLineTablePlaceholder2").style.display = "none";
		}
		else{			
			document.getElementById("termidPrefix_table").style.display = "none";
			document.getElementById("termidStart_table").style.display = "none";	
			
			document.getElementById("perLineTablePlaceholder2").style.display = "";		
		}
	}
	
	if ( "0" == document.getElementById("mgidtype").selectedIndex){
		document.getElementById("in_h_domain1_val").style.display = "none";
	}
	else{
		document.getElementById("in_h_domain1_val").style.display = "";
	}
	
}
		

function generatePerLineTable1()
{
   if (document.body.innerHTML) 
   {
      var tableHtmlOutput = "<tr>";
	  tableHtmlOutput += "<td>";
	  tableHtmlOutput += "<table width='391' border='1' cellpadding='0' cellspacing='0' bordercolor='#C0C0C0' style='border-collapse: collapse'>";
      tableHtmlOutput += "<tr align='left'>";
      tableHtmlOutput += "<td height='25' colspan='3' ><strong id='in_h_resource1'>Resource</strong></td>";
	  tableHtmlOutput += "</tr>";
	  
	  tableHtmlOutput += "<tr align='center'>";
	  tableHtmlOutput += "<td width='162' height='25' bgcolor='eeeeee'>&nbsp;</td>"
	  	
	 <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
	  for (var mgline = 1; mgline <= 2; mgline++) 
	 <% else %>
	  for (var mgline = 1; mgline <= 1; mgline++)
	 <% end if %> 
      {
         var data = "<td width='162' height='25' bgcolor='#EEEEEE' id=\'in_h_line" + mgline+ "\'>line"+mgline+"</td>";
         tableHtmlOutput += data;
      }
	  
	  tableHtmlOutput += "</tr>";
	  tableHtmlOutput += "<tr align='center'>";
	  tableHtmlOutput += "<td height='25' bgcolor='eeeeee' id='in_h_term1'>Terminal</td>";
	  
  	var data = "<input name=\'mymgterm0\' type='text' id=\'in_h_term1_val0\' value=\'<%if tcWebApi_get("VoIPH248_Entry0", "PhysicalTermID", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Entry0", "PhysicalTermID", "s") else asp_Write("") end if %>\'>";
  	tableHtmlOutput += "<td height='25'>" + data + "</td>";
	<% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
  	var data = "<input name=\'mymgterm1\' type='text' id=\'in_h_term1_val1\' value=\'<%if tcWebApi_get("VoIPH248_Entry1", "PhysicalTermID", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Entry1", "PhysicalTermID", "s") else asp_Write("") end if %>\'>";
  	tableHtmlOutput += "<td height='25'>" + data + "</td>";
	<% end if %> 
	  tableHtmlOutput += "</tr>";
	  tableHtmlOutput += "</table>";
	  tableHtmlOutput += "</td>";
	  tableHtmlOutput += "</tr>";  
      
      document.getElementById("perLineTablePlaceholder2").innerHTML = tableHtmlOutput;
   }
   else 
   {
      alert("Cannot create per line table in this browser.");
   }
}		
		
function applyClickAdvanced()
{
   var loc = "app-VoIP248_Adv.asp";
   var code = "location='" + loc + " '";
   eval(code);
}

function VoiceApplyBasic()
{
	with (document.ConfigForm)
	{

		if (mymgname.value != "")
		{
								
			if (mgidselect.selectedIndex == "2")
			{
				if (isValidMacAddress(mymgname.value) == false)
				{
					alert('"' + mymgname.value + '"MAC address is invalid');	
					return;
				}		
			}	
			
		}

		if (mgRTPPrefix.value == "")
		{
			alert('Temporary endpoint prefix cannot be empty');
			return;
		}
				
		var temp = parseInt(mymgtos.value);	
		if (temp < 0 || temp > 63)
		{
			alert('TOS/DSCP Signaling priority ranges in 0 ~ 63');
			return;
		}
		
		var temp = parseInt(mymgtos2.value);	
		if (temp < 0 || temp > 63)
		{
			alert('TOS/DSCP RTP priority rangs in 0 ~ 63');
			return;
		}		
		
		if (mymgcip.value != "")
		{
			if (mymgcport.value == "")
			{
				alert('Server port number cannot be empty.');
				return;
			}
		}
		else
		{
			if (mymgcport.value != "")
			{
				alert('The server address can not be empty.');
				return;
			}
		}
		
		if (mybkmgcip.value != "")
		{
			if (mybkmgcport.value == "")
			{
				alert('Spare server port number cannot be empty.');
				return;
			}
		}
		else
		{
			if (mybkmgcport.value != "")
			{
				alert('Spare server address can not be empty.');
				return;
			}
		}
		VoIP_h248_flag.value = 1;
		var voipType = "H.248";
	<% if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") <> "H.248"  then %>
			location.replace("/cgi-bin/app-VoIP.asp");
	<% end if %>
		submit();
	}
}

function limitNum(o)
{
	if (o.value != "")
	{
		if (!isInteger(o.value) )
		{
			alert('"' + o.value + '"' + 'can only enter numbers.');	
			window.setTimeout( function(){ o.focus(); }, 0);
		}
	}
}
function checkPort(o)
{
	if (o.value != "")
	{
		if (!isInteger(o.value) || !isValidPort(o.value))
		{
			alert('"' + o.value + '"' + 'is an invalid port');	
			window.setTimeout( function(){ o.focus(); }, 0);
		}
	}
}

function mgIdSelectChange(o){
  var idx = o.selectedIndex;
  var val = o.options[idx].value;
  
  if ( val == "0" ){
  	document.getElementById("in_h_domain1_val").style.display = "none";
  }
  else{
  	document.getElementById("in_h_domain1_val").style.display = "";
  }
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
function printInterfaceListBoxRTP()
{
	var pvc_counts = <% tcWebApi_get("WanInfo_Common", "CycleNum", "s") %>;
	var vArrayStr = "<% tcWebApi_get("WanInfo_Common", "CycleValue", "s") %>";
	var Rtp_WanName = "<% tcWebApi_get("VoIPAdvanced_Common", "RtpBindIFIndex", "s") %>";
	var Wan_WanName = vArrayStr.split(',');

	for (var i = 0;i < pvc_counts;i++)
	{
		if (Wan_WanName[i].indexOf('_R_') > -1)
		{
			if(Wan_WanName[i]==Rtp_WanName) 
			{
				document.writeln("<option value=\"" + Wan_WanName[i] + "\" selected>"+Wan_WanName[i]+"");
			}
			else
				document.writeln("<option value=\"" + Wan_WanName[i] + "\">"+Wan_WanName[i]+"");
		}
	}
	curIndexUpdate();
}

function termidMethodSelectChange(o){
  var idx = o.selectedIndex;
  var val = o.options[idx].value;
  
  if ( val == "0" ){
  	document.getElementById("termidPrefix_table").style.display = "";
  	document.getElementById("termidStart_table").style.display = "";
  	
  	document.getElementById("perLineTablePlaceholder2").style.display = "none";
  }
  else{
  	document.getElementById("termidPrefix_table").style.display = "none";
  	document.getElementById("termidStart_table").style.display = "none";
  	
  	document.getElementById("perLineTablePlaceholder2").style.display = "";
  }
}

<% if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then %>
function voipTypeChg(){
	with (document.ConfigForm)
	{
		if(VoIPMode.options[VoIPMode.selectedIndex].value != "H.248")
		{	
			location.replace('/cgi-bin/app-VoIP.asp'+'?voiptype='+VoIPMode.options[VoIPMode.selectedIndex].value);
		}
	}
}
<%end if%>

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
            <P class=Item_L1>VOIP configuration H248</P></TD>
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
                  <FORM id=ConfigForm name="ConfigForm" action="/cgi-bin/app-VoIP248.asp" method="post">
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
								        <TABLE class=table1_bg border=0 cellSpacing=1 cellPadding=0 width="98%">
								            <TBODY>
<% if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then %>
										<TR>
			                 						<TD class="table1_left" width="100">PROTOCOL:</td>
			                 						<TD class=table1_right>
			                 							<select onchange="voipTypeChg()" name="VoIPMode">
			                 								<option value="IMSSIP">IMSSIP</option>
			                 								<option value="SIP" >SIP</option>
			                 								<option value="H.248" selected>H.248</option>
			                 							</select>
<% if tcWebApi_get("WebCustom_Entry", "isCTCUCSIPH248Supported", "h") = "Yes"  then %>
								                       To switch voice protocol, reboot.
<%end if%>
			                 						</TD>
			                 					</TR>
<% end if %>			                 					
								                <TR>
								                    <TD class=table1_left align=left>
								                        MG registration mode
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                  
										                        <select name="mgregselect" id="mg_regist" onchange="" disabled=true>
						                                    <option value="0" <%if tcWebApi_get("VoIPH248_Common", "DeviceRegType", "h") = "0" then asp_Write("selected") end if %>>ROOT</option>
						                                    <option value="1" <%if tcWebApi_get("VoIPH248_Common", "DeviceRegType", "h") = "1" then asp_Write("selected") end if %>>Terminal node</option>
						                                </select>
						                       
								                    </TD>
								                </TR>        
								                <TR>
								                    <TD class=table1_left width="35%" align=left>
								                        RTP Bind Interface:
								                    </TD>
								                    <TD class=table1_right width="65%" colSpan=2 align=left>
									                    <input type="hidden" name="curSetIndex" value="<%if tcWebApi_get("VoIPAdvanced_Common", "RtpBindIFIndex", "h") <> "N/A" then tcWebAPI_get("VoIPAdvanced_Common", "RtpBindIFIndex", "s") else asp_Write("") end if %>">			            
							                               <select name="ifName" id="mgidtype" onChange="curIndexUpdate()">
			                                                      <script TYPE="text/javascript">
												                     printInterfaceListBoxRTP()
												                  </script>
												           </select>
												    </TD>
												</TR> 						                       
								                <TR>
								                    <TD class=table1_left width="35%" align=left>
								                        Terminal type
								                    </TD>
								                    <TD class=table1_right width="65%" colSpan=2 align=left>
								                  
										                        <select name="mgidselect" id="mgidtype" onchange="mgIdSelectChange(this)">
						                                    <option value="0" <%if tcWebApi_get("VoIPH248_Common", "DeviceIDType", "h") = "0" then asp_Write("selected") end if %>>IP</option>
						                                    <option value="1" <%if tcWebApi_get("VoIPH248_Common", "DeviceIDType", "h") = "1" then asp_Write("selected") end if %>>Domain name</option>             
						                                    <option value="2" <%if tcWebApi_get("VoIPH248_Common", "DeviceIDType", "h") = "2" then asp_Write("selected") end if %>>MAC</option>
						                                </select>
						                            
						                              	<input name="mymgname" type="text" id="in_h_domain1_val" value="<%if tcWebApi_get("VoIPH248_Common", "DeviceID", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "DeviceID", "s") else asp_Write("") end if %>">
						                       
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        MG port number
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>	
								                        <input name="mymgport" type="text" id="in_h_mg1_val" onblur="checkPort(this)" value="<%if tcWebApi_get("VoIPH248_Common", "MediaGatewayPort", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "MediaGatewayPort", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        Server address
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mymgcip" type="text" id="in_h_servaddr1_val" value="<%if tcWebApi_get("VoIPH248_Common", "MediaGatewayControler", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "MediaGatewayControler", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        Server port number
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mymgcport" type="text" id="in_h_servnum1_val" onblur="checkPort(this)" title=an_tos2 value="<%if tcWebApi_get("VoIPH248_Common", "MediaGatewayControlerPort", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "MediaGatewayControlerPort", "s") else asp_Write("") end if %>">
										                </TD>
										            </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        Spare server address
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mybkmgcip" type="text" id="in_h_standbyaddr1_val" value="<%if tcWebApi_get("VoIPH248_Common", "SBMediaGatewayControler", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "SBMediaGatewayControler", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        Spare server port number
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mybkmgcport" type="text" id="in_h_standbynum1_val" onblur="checkPort(this)" value="<%if tcWebApi_get("VoIPH248_Common", "SBMediaGatewayControlerPort", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "SBMediaGatewayControlerPort", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        Temporary endpoint prefix
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mgRTPPrefix" type="text" id="in_h_rtpprefix_val" value="<%if tcWebApi_get("VoIPH248_Common", "RTPPrefix", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "RTPPrefix", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								             		<TR>
								                    <TD class=table1_left align=left>
								                        Temporary endpoint length
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mgEpTermIDLen" type="text" id="in_h_eptermidlen_val" onblur="limitNum(this)" value="<%if tcWebApi_get("VoIPH248_Common", "EphemeralTermIDAddLen", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "EphemeralTermIDAddLen", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        Temporary endpoint starting value
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mgEpTermIDStart" type="text" id="in_h_eptermidstart_val" onblur="limitNum(this)" value="<%if tcWebApi_get("VoIPH248_Common", "EphemeralTermIDStart", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "EphemeralTermIDStart", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        Temporary endpoint number
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mgEpTermIDNum" type="text" id="in_h_eptermidnum_val" onblur="limitNum(this)" value="<%if tcWebApi_get("VoIPH248_Common", "EphemeralTermIDNum", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "EphemeralTermIDNum", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>								        
								                <TR>
								                    <TD class=table1_left width="35%" align=left>
								                        Temporary endpoint alignment mode
								                    </TD>
								                    <TD class=table1_right width="65%" colSpan=2 align=left>
								                  
										                        <select name="mgEpTermIDUniform" id="mg_uniform" >
						                                    <option value="0" <%if tcWebApi_get("VoIPH248_Common", "EphemeralTermIDUniform", "h") = "0" then asp_Write("selected") end if %>>alignment mode</option>
						                                    <option value="1" <%if tcWebApi_get("VoIPH248_Common", "EphemeralTermIDUniform", "h") = "1" then asp_Write("selected") end if %>>unalignment mode</option>             
						                                </select>
						                            
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        TOS/DSCP priority (signalling)
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mymgtos" type="text" id="in_h_tos1_val" onblur="limitNum(this)" value="<%if tcWebApi_get("VoIPH248_Common", "MegacoSignalDSCP", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "MegacoSignalDSCP", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left align=left>
								                        TOS/DSCP priority(RTP)
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="mymgtos2" type="text" id="in_h_tos2_val" value="<%if tcWebApi_get("VoIPH248_Common", "MegacoRTPDSCP", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "MegacoRTPDSCP", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR>
								                    <TD class=table1_left width="35%" align=left>
								                         Terminal configuration mode
								                    </TD>
								                    <TD class=table1_right width="65%" colSpan=2 align=left>
								                  
										                        <select name="termidMethod" id="termid_method" onchange="termidMethodSelectChange(this)">
						                                    <option value="0" <%if tcWebApi_get("VoIPH248_Common", "PhysicalTermIDConfigMethod", "h") = "0" then asp_Write("selected") end if %>>general configuration mode</option>
						                                    <option value="1" <%if tcWebApi_get("VoIPH248_Common", "PhysicalTermIDConfigMethod", "h") = "1" then asp_Write("selected") end if %>>line mode</option>             
						                                </select>
						                            
								                    </TD>
								                </TR>
								                <TR id="termidPrefix_table">
								                    <TD class=table1_left align=left>
								                        Terminal prefix
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="termidPrefix" type="text" id="in_h_termidPrefix_val" value="<%if tcWebApi_get("VoIPH248_Common", "PhysicalTermIDPrefix", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "PhysicalTermIDPrefix", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>
								                <TR id="termidStart_table">
								                    <TD class=table1_left align=left>
								                        Terminal starting value
								                    </TD>
								                    <TD class=table1_right colSpan=2 align=left>
								                        <input name="termidStart" type="text" id="in_h_termidStart_val" value="<%if tcWebApi_get("VoIPH248_Common", "PhysicalTermIDStart", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Common", "PhysicalTermIDStart", "s") else asp_Write("") end if %>">
								                    </TD>
								                </TR>								         
										          </TBODY>
										        </TABLE>
										        <TABLE border=0 cellSpacing=1 cellPadding=0 width="98%">
										        	<tr>
										        		<td height="5">
										        		</td>
										        	</tr>
										        	<tr>
							                    <td><div class="tableWrapper" id="perLineTablePlaceholder2" ></div></td>
							                </tr> 
							                <tr>
										        		<td height="5">
										        		</td>
										        	</tr>
										        	<tr>
					                        <td align="center">
					                          <input name="VoIP_h248_flag" type="hidden" value="0">
					                          <input name="bt_apply" type="button"  id="VoiceApplyButton"  value="Apply" onClick="VoiceApplyBasic()">
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
