<%
if Request_Form("formcommit") = "1" then
	TCWebApi_set("WebCurSet_Entry","VlanBind_id","entryidx")
	TCWebApi_set("VlanBind_Entry","Active","bindmode")
	if Request_Form("bindmode") = "Yes" then
		TCWebApi_set("VlanBind_Entry","mn","bindvalue")
	else
		TCWebApi_set("VlanBind_Entry","mn","empty")
	end if
	TCWebApi_commit("VlanBind_Entry")	
	tcWebApi_save()
end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Binding settings</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<style type="text/css">
.title_01 {
	COLOR: #5c5d55
}
.prompt {
	PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: "Tohama", "Arial", "????"; FONT-SIZE: 12px; PADDING-TOP: 5px
}
</style>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>
<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
<SCRIPT language=JavaScript src="/JS/printtable.js"></SCRIPT>
<SCRIPT language=JavaScript type=text/javascript>
function LoadFrame()
{
}

function ModifyInstance(index)
{
  var lanmode = LanArray[index -1].Mode;
  var vlanpair = LanArray[index -1].Vlan;

  document.getElementById("TableUrlInfo").style.display = "block";
  getElById("UrlAddressControl").value = vlanpair;
  
  if (lanmode == 0)
  {
      getElById("ChooseDeviceType").value = "lanwanbinding";
      getElById("BindVlanRow").style.display = "none";        
  }
  else if (lanmode == 1)
  {
      getElById("ChooseDeviceType").value = "vlanbinding"; 
      getElById("BindVlanRow").style.display = "block";       
  }
}

 
function setControl(index) 
{ 
	var identi = "";

	selectIndex = index;
	if (index < -1)
		return;

	if(index <= 8)
	{
		identi = index > 4 ? "SSID"+(index-4) : "LAN"+index;
	}
	else
	{
		identi = "SSIDAC"+(index-10)
	}
	document.getElementById("PortId").innerHTML = identi;

	return ModifyInstance(index);
}



function BindInfoClass(Mode, Vlan)
{
    this.Mode = ( 'Yes' == Mode ) ? 1 : 0;
    this.Vlan = ( 'N/A' == Vlan ) ? '' : Vlan;
}

var LanArray = new Array(
new BindInfoClass('<% tcWebApi_get("VlanBind_Entry0","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry0","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry1","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry1","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry2","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry2","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry3","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry3","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry4","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry4","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry5","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry5","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry6","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry6","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry7","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry7","mn","s") %>')
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry8","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry8","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry9","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry9","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry10","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry10","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry11","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry11","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry12","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry12","mn","s") %>')
, new BindInfoClass('<% tcWebApi_get("VlanBind_Entry13","Active","s") %>', '<% tcWebApi_get("VlanBind_Entry13","mn","s") %>')
<% end if %>
,null);


//创建port vlan 路由链表 
function CreateRouteList()
{     
  var HtmlCode = "";
  var Lan_Indenti1 = "LAN";
  var Lan_Indenti2 = "SSID";
  var Lan_Indenti3 = "SSIDAC";
  var Lan = "";
  var LanCnt = 4;
  var LanWire = 4;

<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>
  for(var i = 1; i <= 14; i++)
<% else %>
  for(var i = 1; i <= 8; i++)
<% end if %>
  {  
      var modestr = ""
      if (LanArray[i-1].Mode == 0)
      {
          modestr = "Port Binding";
      }
      else if (LanArray[i-1].Mode == 1)
      {
          modestr = "VLAN Binding";
      }

<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then%>
		if(i <= 8)
		{
			Lan = i > LanWire ? (Lan_Indenti2+(i-4)) : (Lan_Indenti1+i);
		}
		else
		{
			if(i == 9 || i == 10)
				continue;
		
			Lan = Lan_Indenti3+(i-10);
		}
<% else %>
		Lan = i > LanWire ? (Lan_Indenti2+(i-4)) : (Lan_Indenti1+i);
<% end if %>

      HtmlCode += '<tr id= "record_' + i +'" align = "center" class="table1_01" onclick="selectLine(this.id); " >';
      HtmlCode += '<td >' + Lan + '</td>';

      HtmlCode += '<td>' +modestr + '</td>';
      
      if( (LanArray[i-1].Vlan == "") || (LanArray[i-1].Mode == 0))
      {
          HtmlCode += '<td>--</td>';
      }
      else
      {
          HtmlCode += '<td style="word-break:break-all;word-wrap:break-word;">' + LanArray[i-1].Vlan + '</td>'; 
      }
      
      HtmlCode += '</tr>'            
  }  
  
  return HtmlCode;    
}

function OnChooseDeviceType(Select)
{
   var Mode = getElementById("ChooseDeviceType").value;

   if (Mode == "lanwanbinding")
       getElById("BindVlanRow").style.display = 'none';        
   else if (Mode == "vlanbinding")
       getElById("BindVlanRow").style.display = '';
}

//用户点击了取消按钮后的代码逻辑
function OnCancelButtonClick()
{
    document.getElementById("TableUrlInfo").style.display = "none";
    return false;
}

function getEntryIndex(portid)
{
	switch ( portid )
	{
		case 'LAN1':
		case 'LAN2':
		case 'LAN3':
		case 'LAN4':
			return parseInt(portid.substring(3, 4)) - 1;
		case 'SSID1':
		case 'SSID2':
		case 'SSID3':
		case 'SSID4':
			return parseInt(portid.substring(4, 5)) + 3;
<% if tcWebApi_get("WebCustom_Entry", "isWLanACSupported","h") = "Yes" then %>			
		case 'SSIDAC1':
		case 'SSIDAC2':
		case 'SSIDAC3':
		case 'SSIDAC4':
			return parseInt(portid.substring(6, 7)) + 9;
<% end if %>			
		default:
			return -1;
	}
}

function OnApplyButtonClick()
{
		var entryidx = 0;
		var PortId = getElementById("PortId").innerHTML;

		if (FillBindInfo() == false)
		  return false;

		entryidx = getEntryIndex(PortId);
		if ( entryidx < 0 )
		{
			alert('Invalid entry!')
			return false;	
		}
		document.forms[0].entryidx.value = entryidx;
		document.forms[0].formcommit.value = 1;
		document.forms[0].bindmode.value = ('vlanbinding' == getElById("ChooseDeviceType").value) ? 'Yes' : 'No';
		if ( 'Yes' == document.forms[0].bindmode.value )
			document.forms[0].bindvalue.value = getElById("UrlAddressControl").value;
		document.forms[0].submit();
		return true;
}

function FillBindInfo(Form)
{
	if (CheckParameter() == false)
		return false;

	return true;
}

function CheckParameter()
{
	var BindVlan = getElById("UrlAddressControl").value;
	
	var Mode = getElementById("ChooseDeviceType").value;
	if ((0 == BindVlan.length) && (Mode == "vlanbinding"))
	{
	    alert('must set VLAN ');
			return false;
	}

	if (Mode == "vlanbinding")
	{
		if (IsBindBindVlanValid(BindVlan) == false)
		{
			return false;
		}
	}

	return true;
}

function checkwVlanDup( vlanid )
{
	var wanNum = "<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>";
	<% tcWebApi_constSet("WanInfo_Common", "CycleJump", "23") %>
	// num 23
	var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var Wan_VidPRI = vArrayStr.split(',');
	var idx = 0;
	var wVlan = 0;
	var svlan = '';
	var wVlanDupCnt = 0;

	for ( idx = 0; 	idx < wanNum; idx ++ )
	{
			svlan = Wan_VidPRI[idx].split('/');
			wVlan = parseInt(svlan[0]);
			if ( wVlan == vlanid )
				wVlanDupCnt ++;
	}

	if ( wVlanDupCnt >= 2 )
		return 1;
	else
		return 0;
}

function IsBindBindVlanValid(BindVlan)
{   
	var LanVlanWanVlanList = BindVlan.split(";");
	var LanVlan0;
	var WanVlan;
	var TempList;

	for (var i = 0; i < LanVlanWanVlanList.length; i++)
	{
		TempList = LanVlanWanVlanList[i].split("/");
		
		/* 检验是否满足a/b格式 */
		if (TempList.length != 2)
		{
			alert(BindVlan+"Format is invalid.");
			return false;
		}
		
		/* 检验a，b是否为数字 */
		if ((isNaN(parseInt(TempList[0]))) || (isNaN(parseInt(TempList[1]))))
		{
			alert(BindVlan+"Format is invalid.");
			return false;
		}
		
		/* 检验lan口的vlan是否合法 */
		if (!(parseInt(TempList[0]) >= 1 && parseInt(TempList[0]) <= 4094))
		{
			alert(BindVlan+"in User Vlan\""+parseInt(TempList[0])+"\" is invalid.");
			return false;
		}
		
		if (!(parseInt(TempList[1]) >= 1 && parseInt(TempList[1]) <= 4094))
		{
			alert(BindVlan+"outbound interface Vlan\""+parseInt(TempList[1])+"\" is invalid.");
			return false;
		}
		
		if ( 1 == checkwVlanDup(parseInt(TempList[1])) )
		{
			alert(BindVlan+"in User Vlan\""+parseInt(TempList[1])+"\"more than one WAN connection existed");
			return false;
		}
	}

	if ( LanVlanWanVlanList.length > 20 )
	{
			alert("Support up to 20 VLAN pairs.");
			return false;
	}

	return true;
}
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
            value="Network->Binding" name=Selected_Menu> </FONT></B><SPAN 
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
     </TD></TR>
  <TR>
    <TD vAlign=top>
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY>
        <TR>
          <TD class=Item_L1 width=157 bgColor=#dff5ff height=30>
            <P>Binding Mode</P></TD>	
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170 
          rowSpan=4>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A href="/cgi-bin/help_content.asp#binding" 
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
          <TD class=Item_L2 vAlign=top width=157 bgColor=#dff5ff height=30>
            <P></P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
          	<FORM name="ConfigForm" action="/cgi-bin/net-binding.asp" method="post">
						<!--解释头-->
						<div id="PromptPanel">
						    <table width="100%" border="0" cellpadding="0" cellspacing="0">
						        <tr>
						            <td class="prompt">
						                <table width="100%" border="0" cellspacing="0" cellpadding="0">
						                    <tr>
						                        <td width="100%" class="title_01" style="padding-left: 10px;">
						                            You can operate VLAN binding, the value of the VLAN is set in the way of VLAN pairs as the format is m1 / n1 which m1 presents the lan side, n1 on behalf of the vlan out interface, multiple VLAN pairs separated by semicolons.
						                        </td>
						                    </tr>
						                </table>
						            </td>
						        </tr>
						        <tr>
						        <td height="5px"></td>
						        </tr>
						
						    </table>
						  
					</div>

					<!--TODO:在这里加入你的具体页面展现-->
					  <table class="table1_bg" border="0" cellspacing="1" style="margin-left: 5px;" width="98%">
					    <tr class="table1_title">
						       <td width="10%">Port</td>
						       <td width="15%">Binding Mode</td>
						       <td width="75%">Bind Vlan</td>
						  </tr>    
						    <script>
						   document.write(CreateRouteList()); 
<% if tcwebApi_get("WebCustom_Entry","isCT1PORTSupported","h") = "Yes" then %>
						   setDisplay('record_2', 0);
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isCT2PORTSSupported","h") = "Yes" then %>
						   setDisplay('record_3', 0);
						   setDisplay('record_4', 0);
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","is3PORTSSupported","h") = "Yes" then %>
						   setDisplay('record_4', 0);
<% end if %>
<% if TCWebApi_get("WebCustom_Entry","isWLanSupported","h" ) <> "Yes" then %>
							for(var i = 5; i <= 8; i++){
								var ctlID = 'record_'+i;
								setDisplay(ctlID, 0);
							}
<% else %>
							var ssidNum = parseInt('<% tcWebApi_get("WLan_Common","BssidNum","s") %>');
							if(ssidNum == 1)
							{
								setDisplay('record_6', 0);
								setDisplay('record_7', 0);
								setDisplay('record_8', 0);
							}
							else if(ssidNum == 2)  
							{
								setDisplay('record_7', 0);
								setDisplay('record_8', 0);
							}
							else if(ssidNum == 3)  
							{
								setDisplay('record_8', 0);
							}	
<% end if %>
<% if TCWebApi_get("WebCustom_Entry","isWLanACSupported","h" ) <> "Yes" then %>
							for(var i = 11; i <= 14; i++){
								var ctlID = 'record_'+i;
								setDisplay(ctlID, 0);
							}
<% else %>
							var ssidacNum = parseInt('<% tcWebApi_get("WLan11ac_Common","BssidNum","s") %>');
							if(ssidacNum == 1)
							{
								setDisplay('record_12', 0);
								setDisplay('record_13', 0);
								setDisplay('record_14', 0);
							}
							else if(ssidacNum == 2)  
							{
								setDisplay('record_13', 0);
								setDisplay('record_14', 0);
							}
							else if(ssidacNum == 3)  
							{
								setDisplay('record_14', 0);
							}
<% end if %>
						   </script>  
					  
					 </table>

					 <!--Apply和Cancel按钮-->
					  <div id="TableUrlInfo" style="display:none">
					
					  <table cellspacing="1" cellpadding="0" class="table1_bg" style="margin-left: 5px;" width="98%">
					  
					    <tr class="trTabConfigure">  
					    <td align= left width=25% class="table1_left">Port: <td  class="table1_right"> <div id="PortId"></div></td> </td>
					    </tr>
					</table>
					
					  <table cellspacing="1" cellpadding="0" class="table1_bg" style="margin-left: 5px;" width="98%">
					    <tr class="trTabConfigure">
					    <td  align=left width="25%" class="table1_left">Port Mode:</td><td  class="table1_right"><select id="ChooseDeviceType" onchange="OnChooseDeviceType(this);"><option value="vlanbinding">VLAN Binding</option><option value="lanwanbinding">Port Binding</option></select>
					    </td>
					    </tr>
					  </table>
					  <div id="BindVlanRow">
					  <table cellspacing="1" cellpadding="0" class="table1_bg" style="margin-left: 5px;" width="98%">
					    <tr class="trTabConfigure"><td width="25%"  align=left class="table1_left">Bind VLAN Pair:</td><td class="table1_right"><input type=text id="UrlAddressControl"  style="width:300px" maxlength=255 /></td></tr>
					  </table>
					  </div>
					  <table id="ConfigPanelButtons" width="100%" cellspacing="1" class="table1_button">
					    <tr>
					        <td width="25%">
					        </td>
					        <td class="table1_submit" style="padding-left: 5px">
					        		<input type='hidden' value='0' name='entryidx'>
					        		<input type='hidden' value='0' name='formcommit'>
					        		<input type='hidden' value='0' name='bindmode'>
					        		<input type='hidden' value='0' name='bindvalue'>
					        		<input type='hidden' value='' name='empty'>
					            <input id="ButtonApply"  type="button" value="Apply" onclick="javascript:return OnApplyButtonClick();" class="submit" />
					            <input id="ButtonCancel" type="button" value="Cancel" onclick="javascript:OnCancelButtonClick();" class="submit" />
					        </td>
					    </tr>
					  </table>
					</div>

            </FORM></TD></TR>
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
          <TD width=393 bgColor=#ffffff>
            <P align=center></P></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
