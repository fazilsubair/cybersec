<%		  
if Request_Form("alg_Flag") = "1" then
	TCWebApi_set("ALGSwitch_Entry","L2TPSW","L2TPSW_Flag")
	TCWebApi_set("ALGSwitch_Entry","IPSECSW","IPSecSW_Flag")
	TCWebApi_set("ALGSwitch_Entry","H323SW","H323SW_Flag")
	TCWebApi_set("ALGSwitch_Entry","RTSPSW","RTSPSW_Flag")
	TCWebApi_set("ALGSwitch_Entry","SIPSW","SIPSW_Flag")	
	TCWebApi_set("ALGSwitch_Entry","FTPSW","FTPSW_Flag")
	TCWebApi_set("ALGSwitch_Entry","PPTPSW","PPTPSW_Flag")
	TCWebApi_commit("ALGSwitch_Entry")	
	tcWebApi_save()
end if

if Request_Form("DMZ_Flag") = "1" then
	TCWebApi_set("WebCurSet_Entry","nat_pvc","DMZEntryCurIndex")
	TCWebApi_set("WebCurSet_Entry","dmz_ifidx","DMZEntryCurIndex")
	TCWebApi_commit("WebCurSet_Entry")
	TCWebApi_set("Dmz_Entry","IFName","DMZInterface")
	TCWebApi_set("Dmz_Entry","Active","EnableDMZ_Flag")
	
	if Request_Form("isAutoDMZSupported") = "1" then
		TCWebApi_set("Dmz_Common","UpdateDMZ_Active","AutoDMZ_Flag")
		TCWebApi_set("Dmz_Entry","AutoDMZ_Flag","AutoDMZ_Flag")
	end if
	
	TCWebApi_set("Dmz_Entry","DMZ_IP","DMZHostIPAddress")
	TCWebApi_commit("Dmz_Entry")
	tcWebApi_save()
end if

if Request_Form("natloopback_Flag") = "1" then
	TCWebApi_set("Lan_NATLoopback","Enable","natloopbackEnb")
	TCWebApi_commit("Lan_NATLoopback")
	TCWebApi_commit("VirServer_Entry_Entry")
	tcWebApi_save()
end if

if Request_Form("VirServer_Flag") = "1" then
	TCWebApi_set("WebCurSet_Entry","nat_pvc","VirServEntryCurIndex")
	TCWebApi_set("WebCurSet_Entry","nat_ifidx","VirServEntryCurIndex")
	TCWebApi_set("WebCurSet_Entry","virServ_id","VirServCurIndex")
	TCWebApi_commit("WebCurSet_Entry")
	TCWebApi_set("VirServer_Entry","IFName","PortMappingInterface")
	TCWebApi_unset("VirServer_Entry_Entry")
	TCWebApi_commit("VirServer_Entry_Entry")	
	TCWebApi_set("VirServer_Entry_Entry","Active","EnableVirServer_Flag")
	TCWebApi_set("VirServer_Entry_Entry","Protocal","PortMappingProtocol")
	TCWebApi_set("VirServer_Entry_Entry","SrcIP","RemoteHost")
	TCWebApi_set("VirServer_Entry_Entry","STARTPORT","ExternalPort")
	TCWebApi_set("VirServer_Entry_Entry","ENDPORT","InternalPort")
	TCWebApi_set("VirServer_Entry_Entry","LOCALIP","InternalClient")
	TCWebApi_set("VirServer_Entry_Entry","MapName","PortMappingDescription")	
	TCWebApi_commit("VirServer_Entry_Entry")
	tcWebApi_save()
elseif Request_Form("VirServer_Flag") = "2" then
	TCWebApi_set("WebCurSet_Entry","nat_pvc","VirServEntryCurIndex")	
	TCWebApi_set("WebCurSet_Entry","nat_ifidx","VirServEntryCurIndex")
	if Request_Form("hVirServEntry0") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry0")
			TCWebApi_unset("VirServer_Entry_Entry")		
			TCWebApi_commit("VirServer_Entry_Entry")
	end if
	if Request_Form("hVirServEntry1") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry1")
			TCWebApi_unset("VirServer_Entry_Entry")	
			TCWebApi_commit("VirServer_Entry_Entry")
	end if
	if Request_Form("hVirServEntry2") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry2")
			TCWebApi_unset("VirServer_Entry_Entry")		
			TCWebApi_commit("VirServer_Entry_Entry")	
	end if
	if Request_Form("hVirServEntry3") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry3")
			TCWebApi_unset("VirServer_Entry_Entry")		
			TCWebApi_commit("VirServer_Entry_Entry")
	end if
	if Request_Form("hVirServEntry4") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry4")
			TCWebApi_unset("VirServer_Entry_Entry")
			TCWebApi_commit("VirServer_Entry_Entry")
	end if
	if Request_Form("hVirServEntry5") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry5")
			TCWebApi_unset("VirServer_Entry_Entry")
			TCWebApi_commit("VirServer_Entry_Entry")
	end if
	if Request_Form("hVirServEntry6") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry6")
			TCWebApi_unset("VirServer_Entry_Entry")		
			TCWebApi_commit("VirServer_Entry_Entry")
	end if
	if Request_Form("hVirServEntry7") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry7")
			TCWebApi_unset("VirServer_Entry_Entry")
			TCWebApi_commit("VirServer_Entry_Entry")
	end if	
	if Request_Form("hVirServEntry8") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry8")
			TCWebApi_unset("VirServer_Entry_Entry")	
			TCWebApi_commit("VirServer_Entry_Entry")
	end if	
	if Request_Form("hVirServEntry9") <> "99" then
		TCWebApi_set("WebCurSet_Entry","virServ_id","hVirServEntry9")
			TCWebApi_unset("VirServer_Entry_Entry")		
			TCWebApi_commit("VirServer_Entry_Entry")
	end if											
	tcWebApi_save()
elseif Request_Form("VirServer_Flag") = "3" then
	TCWebApi_set("WebCurSet_Entry","nat_pvc","VirServEntryCurIndex")
	TCWebApi_set("WebCurSet_Entry","nat_ifidx","VirServEntryCurIndex")
	TCWebApi_commit("WebCurSet_Entry")
end if

if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then
if Request_Form("PortTrigger_Flag") = "1" then
	TCWebApi_set("WebCurSet_Entry","pg_pvc","PortTriggerEntryCurIndex")
	TCWebApi_set("WebCurSet_Entry","pg_ifidx","PortTriggerEntryCurIndex")
	TCWebApi_set("WebCurSet_Entry","portTrigger_id","PortTriggerCurIndex")
	TCWebApi_commit("WebCurSet_Entry")
	TCWebApi_set("PortTriggering_Entry","IFName","PortTriggeringInterface")
	TCWebApi_unset("PortTriggering_Entry_Entry")
	TCWebApi_commit("PortTriggering_Entry_Entry")	
	TCWebApi_set("PortTriggering_Entry_Entry","Active","EnablePortTriggering_Flag")
	TCWebApi_set("PortTriggering_Entry_Entry","TSPort","PortTgTSPort")
	TCWebApi_set("PortTriggering_Entry_Entry","TEPort","PortTgTEPort")
	TCWebApi_set("PortTriggering_Entry_Entry","TProtocol","PortTgTProtocol")
	TCWebApi_set("PortTriggering_Entry_Entry","OSPort","PortTgOSPort")
	TCWebApi_set("PortTriggering_Entry_Entry","OEPort","PortTgOEPort")
	TCWebApi_set("PortTriggering_Entry_Entry","OProtocol","PortTgOProtocol")
	TCWebApi_set("PortTriggering_Entry_Entry","Name","PortTriggeringDescription")	
	TCWebApi_commit("PortTriggering_Entry_Entry")
	tcWebApi_save()
elseif Request_Form("PortTrigger_Flag") = "2" then
	TCWebApi_set("WebCurSet_Entry","pg_pvc","PortTriggerEntryCurIndex")	
	TCWebApi_set("WebCurSet_Entry","pg_ifidx","PortTriggerEntryCurIndex")
	if Request_Form("hPortTriggeringEntry0") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry0")
			TCWebApi_unset("PortTriggering_Entry_Entry")		
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if
	if Request_Form("hPortTriggeringEntry1") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry1")
			TCWebApi_unset("PortTriggering_Entry_Entry")	
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if
	if Request_Form("hPortTriggeringEntry2") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry2")
			TCWebApi_unset("PortTriggering_Entry_Entry")		
			TCWebApi_commit("PortTriggering_Entry_Entry")	
	end if
	if Request_Form("hPortTriggeringEntry3") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hVirServEntry3")
			TCWebApi_unset("PortTriggering_Entry_Entry")		
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if
	if Request_Form("hPortTriggeringEntry4") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry4")
			TCWebApi_unset("PortTriggering_Entry_Entry")
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if
	if Request_Form("hPortTriggeringEntry5") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry5")
			TCWebApi_unset("PortTriggering_Entry_Entry")
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if
	if Request_Form("hPortTriggeringEntry6") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry6")
			TCWebApi_unset("PortTriggering_Entry_Entry")		
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if
	if Request_Form("hPortTriggeringEntry7") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry7")
			TCWebApi_unset("PortTriggering_Entry_Entry")
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if	
	if Request_Form("hPortTriggeringEntry8") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry8")
			TCWebApi_unset("PortTriggering_Entry_Entry")	
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if	
	if Request_Form("hPortTriggeringEntry9") <> "99" then
		TCWebApi_set("WebCurSet_Entry","portTrigger_id","hPortTriggeringEntry9")
			TCWebApi_unset("PortTriggering_Entry_Entry")		
			TCWebApi_commit("PortTriggering_Entry_Entry")
	end if											
	tcWebApi_save()
elseif Request_Form("PortTrigger_Flag") = "3" then
	TCWebApi_set("WebCurSet_Entry","pg_pvc","PortTriggerEntryCurIndex")
	TCWebApi_set("WebCurSet_Entry","pg_ifidx","PortTriggerEntryCurIndex")
	TCWebApi_commit("WebCurSet_Entry")
end if
end if
%>
<HTML><HEAD><TITLE>Advanced NAT configuration</TITLE>
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
            value="Application->Advance NAT" name=Selected_Menu> </FONT></B><SPAN 
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
      <SCRIPT language=JavaScript type=text/javascript>
	var VirServEntryIndex = 0;
	var VirSerIdleEntryIndex = 0;
	var VirSerIdleFlag = 0;
	
	<%if tcWebApi_get("WebCustom_Entry","isportTriggeringSupported","h") = "Yes" then%>
	var PortTriggerEntryIndex = 0;
	var PortTriggerIdleEntryIndex = 0;
	var PortTriggerIdleFlag = 0;
	<% end if %>
	
	var WanInfo = new Array();
	var nEntryNum = <% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
	var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryName = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryValue = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vEntryIndex = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vActive = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
	var vNATENABLE = vArrayStr.split(',');
	
	//sort
	vEntryName = SortUtil.UpdateWanIFName( vEntryName, nEntryNum );
	vEntryValue = SortUtil.SortMyArray( vEntryValue );
	vEntryIndex = SortUtil.SortMyArray( vEntryIndex );
	vActive = SortUtil.SortMyArray( vActive );
	vNATENABLE = SortUtil.SortMyArray( vNATENABLE );
	
	nEntryNum = <% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","DmzCycleValue","s") %>";
	var vDMZActive = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","DmzCycleValue","s") %>";
	var vDMZIP = vArrayStr.split(',');
	vArrayStr = "<% tcWebApi_get("WanInfo_Common","AutoDMZ_Flag","s") %>";
	var vDMZAuto = vArrayStr.split(',');
	
	//sort
	vDMZActive = SortUtil.SortMyArray( vDMZActive );
	vDMZIP = SortUtil.SortMyArray( vDMZIP );
	vDMZAuto = SortUtil.SortMyArray( vDMZAuto );
		
	for (i = 0; i < nEntryNum; i++)
	{
		WanInfo[i] = new stWanInfo(vEntryValue[i],vEntryName[i],vActive[i],vNATENABLE[i],vEntryName[i],vEntryName[i],vDMZActive[i],vDMZIP[i],vDMZAuto[i]);
	}
	
function stAlg(domain,L2TPEnable,IPSECEnable,H323Enable,RTSPEnable,SIPEnable,FTPEnable,PPTPEnable)
{
	this.domain = domain;
	if(L2TPEnable == "on")
		this.L2TPEnable = 1;
	else
		this.L2TPEnable = 0;
	if(IPSECEnable == "on")
		this.IPSECEnable = 1;
	else
		this.IPSECEnable = 0;
	if(H323Enable == "on")
		this.H323Enable = 1;
	else
		this.H323Enable = 0;
	if(RTSPEnable == "on")
		this.RTSPEnable = 1;
	else
		this.RTSPEnable = 0;
	if(SIPEnable == "on")
		this.SIPEnable = 1;
	else
		this.SIPEnable = 0;
	if(FTPEnable == "on")
		this.FTPEnable = 1;
	else
		this.FTPEnable = 0;	
	if(PPTPEnable == "on")
		this.PPTPEnable = 1;
	else
		this.PPTPEnable = 0;	
}
var algArray = 
new Array
(
	new stAlg("domain","<% tcWebApi_get("ALGSwitch_Entry","L2TPSW","s") %>","<% tcWebApi_get("ALGSwitch_Entry","IPSECSW","s") %>","<% tcWebApi_get("ALGSwitch_Entry","H323SW","s") %>","<% tcWebApi_get("ALGSwitch_Entry","RTSPSW","s") %>","<% tcWebApi_get("ALGSwitch_Entry","SIPSW","s") %>","<% tcWebApi_get("ALGSwitch_Entry","FTPSW","s") %>","<% tcWebApi_get("ALGSwitch_Entry","PPTPSW","s") %>"),
	null
);
var alg = algArray[0];
var WanIndex = -1;
function stWanInfo(domain,Name,Enable,NATEnabled,ConnectionType,ServiceList,DMZEnable,DMZIP,DMZAuto)
{
	this.domain = domain;
	this.key = this.domain;
	this.Name = Name;
	this.ConnectionType = ConnectionType;
	this.ServiceList = ServiceList;
	if(DMZAuto == "1")
		this.AutoDMZ_Flag = 1;
	else
		this.AutoDMZ_Flag = 0;
	if(DMZEnable == "Yes")
		this.DMZEnable = 1;
	else
		this.DMZEnable = 0;
	this.DMZIP = DMZIP;
	if(Enable == "Yes")
		this.Enable = 1;
	else
		this.Enable = 0;
	if(NATEnabled == "Enable")
		this.NATEnabled = 1;
	else
		this.NATEnabled = 0;		
	this.CntStatus = '';
}

function stPortMap(domain,ProtMapEnabled,Protocol,RemoteHost,ExPort,InPort,InClient,Description)
{
	domain = ""+domain;	
	this.domain = domain;
	this.key = this.domain;
	this.ProtMapEnabled = ProtMapEnabled;
	this.Protocol = Protocol;
	this.RemoteHost = RemoteHost;
	this.ExPort = ExPort;
	this.InPort = InPort;
	this.InClient = InClient;
	this.Description = Description;
	var index = domain.lastIndexOf('PortMapping');
	this.interface = domain.substr(0,index - 1);
	this.interface = domain;
	this.NATEnabled = '';
	this.Enable = '';
}

<% if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then %>
function stPortTrigger(domain,PortTriggeringEnabled,Description,PortTgTSPort,PortTgTEPort,PortTgTProtocol,PortTgOSPort,PortTgOEPort,PortTgOProtocol)
{
	domain = ""+domain;	
	this.domain = domain;
	this.key = this.domain;
	this.PortTriggeringEnabled = PortTriggeringEnabled;
	this.PortTgTSPort = PortTgTSPort;
	this.PortTgTEPort = PortTgTEPort;
	this.PortTgOSPort = PortTgOSPort;
	this.PortTgOEPort = PortTgOEPort;
	this.PortTgTProtocol = PortTgTProtocol;
	this.PortTgOProtocol = PortTgOProtocol;
	this.PortTriggeringDescription = Description;
	var index = domain.lastIndexOf('PortTriggering');
	this.interface = domain.substr(0,index - 1);
	this.interface = domain;
	this.NATEnabled = '';
	this.Enable = '';
}
<% end if %>
var PortMapping = new Array();
var indexPortMapping = 0;
var MAX_VIRSERVER_NUM = 10;

nEntryNum = <% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
vArrayStr = "<% tcWebApi_get("WanInfo_Common","VirServerCycleValue","s") %>";
var vNatActive = vArrayStr.split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","VirServerCycleValue","s") %>";
var vNatProtocal = vArrayStr.split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","VirServerCycleValue","s") %>";
var vNatSrcIP = vArrayStr.split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","VirServerCycleValue","s") %>";
var vNatSTARTPORT = vArrayStr.split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","VirServerCycleValue","s") %>";
var vNatENDPORT = vArrayStr.split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","VirServerCycleValue","s") %>";
var vNatLOCALIP = vArrayStr.split(',');
vArrayStr = "<% tcWebApi_get("WanInfo_Common","VirServerCycleValue","s") %>";
var vNatMapName = vArrayStr.split(',');

for (j = 0; j < MAX_VIRSERVER_NUM; j++)
{
	if(vNatActive[j] == "Yes" || vNatActive[j] == "No")
	{
		PortMapping[indexPortMapping] = new stPortMap(j,vNatActive[j],vNatProtocal[j],vNatSrcIP[j],vNatSTARTPORT[j],vNatENDPORT[j],vNatLOCALIP[j],vNatMapName[j]);
		indexPortMapping++;
	}
	else if(0 == VirSerIdleFlag){
		VirSerIdleEntryIndex = j;
		VirSerIdleFlag = 1;
	}
}
<% if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then %>
var PortTriggering = new Array();
var indexPortTriggering = 0;
var MAX_PORTTRIGGER_NUM = 10;

nEntryNum = <% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
//active
vArrayStr = "<% tcWebApi_get("WanInfo_Common","PortTriggerCycleValue","s") %>";
var vNatActive = vArrayStr.split(',');
//Name
vArrayStr = "<% tcWebApi_get("WanInfo_Common","PortTriggerCycleValue","s") %>";
var vPgName = vArrayStr.split(',');

//TSPort
vArrayStr = "<% tcWebApi_get("WanInfo_Common","PortTriggerCycleValue","s") %>";
var vPgTSPort = vArrayStr.split(',');
//TEPort
vArrayStr = "<% tcWebApi_get("WanInfo_Common","PortTriggerCycleValue","s") %>";
var vPgTEPort = vArrayStr.split(',');
//TProtol
vArrayStr = "<% tcWebApi_get("WanInfo_Common","PortTriggerCycleValue","s") %>";
var vPgTProtol = vArrayStr.split(',');

//OSPort
vArrayStr = "<% tcWebApi_get("WanInfo_Common","PortTriggerCycleValue","s") %>";
var vPgOSPort = vArrayStr.split(',');
//OEPort
vArrayStr = "<% tcWebApi_get("WanInfo_Common","PortTriggerCycleValue","s") %>";
var vPgOEPort = vArrayStr.split(',');
//OProtol
vArrayStr = "<% tcWebApi_get("WanInfo_Common","PortTriggerCycleValue","s") %>";
var vPgOProtol = vArrayStr.split(',');
for (j = 0; j < MAX_PORTTRIGGER_NUM; j++)
{
	if(vNatActive[j] == "Yes" || vNatActive[j] == "No")
	{
		PortTriggering[indexPortTriggering] = new stPortTrigger(j,vNatActive[j],vPgName[j],vPgTSPort[j],vPgTEPort[j],vPgTProtol[j],vPgOSPort[j],vPgOEPort[j],vPgOProtol[j]);
		indexPortTriggering++;
	}
	else if(0 == PortTriggerIdleFlag){
		PortTriggerIdleEntryIndex = j;
		PortTriggerIdleFlag = 1;
	}
}
<% end if %>

function hidesipPortInfo(hide)
{
	var status = 'visible';
	if ( hide == 1 )
	status = 'hidden';
	if (document.getElementById)  
	{
		document.getElementById('sipproxyport').style.visibility = status;
	}
	else
	{
		if (document.layers == false) 
		getElement('sipproxyport').style.visibility = status;
	}
}
function hideSiproxdInfo(hide) {
	var status = 'visible';
	if ( hide == 1 )
	status = 'hidden';
	if (document.getElementById)  
	{
		document.getElementById('sipproxdInfo').style.visibility = status;
		document.getElementById('applybutton').style.visibility = status;
	}
	else {
		if (document.layers) { 
			if ( hide == 1 )
				form1.Siproxd.value = '';
			else
				form1.Siproxd.value = enblSiproxd;
		}
		else  
		{
			getElement('sipproxdInfo').style.visibility = status;
			getElement('applybutton').style.visibility = status;
		}
	}
}
function dmzClick()
{
	if(getCheckVal('DMZEnable') == 0)
	{
		setText('DMZHostIPAddress', "");
		<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
		setCheck('AutoDMZEnable',0);
		document.dmzForm.AutoDMZEnable.disabled = true;
		<%End If%>
		document.dmzForm.DMZHostIPAddress.disabled = true;
	}
	else
	{	
		<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
		document.dmzForm.AutoDMZEnable.disabled = false;
		<%End If%>
		document.dmzForm.DMZHostIPAddress.disabled = false;
	}
}
function AutodmzClick()
{
	if(getCheckVal('AutoDMZEnable') == 0)
	{
		document.dmzForm.DMZHostIPAddress.disabled = false;
	}
	else
	{
		document.dmzForm.DMZHostIPAddress.disabled = true;
	}
}

function isOptionValid(portValue)
{
	if(isPlusInteger(portValue) == false)
	{
		alert('Invalid port');
		return false;
	}
	if(isValidPort(portValue) == false)
	{
		alert('Invalid port');
		return false;
	}
	return true;
}
function CheckForm(type)
{
	switch (type)
	{
	case 1:
		break;
	case 2:
		return CheckDMZ();
		break;
	case 3:
		return CheckPortMapping();
		break;
	case 4:
		with(getElById('PortMappingForm'))
		{
			var rml = getElById('rml');
			if (rml == null)
			{
				return false;
			}
		}
<% if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then %>
	case 8:
		with(getElById('PortTriggeringForm'))
		{
			var rml = getElById('rml');
			if (rml == null)
			{
				return false;
			}
		}
<% end if %>
	}
	return true;
}
function CheckAlg()
{
	for (var i = 0; i < WanInfo.length; i++)
	{
		if (getSelectVal('SIPWanPath') == WanInfo[i].key)
		{
			break;
		}
	}
	if (isOptionValid(getValue('SIPPort')) == false)
	{
		alert('Invalid SIP port！');
		return false;
	}
	if (getCheckVal('SIPEnable') == 1 && WanIndex > -1)
	{
		if (WanInfo[WanIndex].NATEnabled == 0 
		|| WanInfo[WanIndex].ConnectionType.indexOf('_B_')>-1)		
		{
			if (confirm('Note: This WAN interface have been invalid. Are you sure to modify the configuration') == false)
			return false;
		}
	}
	return true;
}
function CheckDMZ()
{
	var i = 0;
	var bWANinterface = false;
	for (i = 0; i < WanInfo.length; i++)
	{
		if((WanInfo[i].ServiceList.indexOf('_TR069_')<0) || (WanInfo[i].ServiceList.indexOf('_INTERNET_')>-1))
		{
			bWANinterface = true;
		}
	}
	if (bWANinterface == false)
	{
		alert('Currently no available WAN interface, please add one and then configure it');
		return false;
	}
	with (getElById('dmzForm'))
	{
		<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
		if (getCheckVal('AutoDMZEnable') == 1)
			return true;
		<%End If%>
		if (getCheckVal('DMZEnable') == 1)
		{
			if (getValue('DMZHostIPAddress') == "")
			{
				alert('Please enter the DMZ address');
				return false;
			}
			else if ((isAbcIpAddress(getValue('DMZHostIPAddress'))== false)||(isBroadcastIpAddress(getValue('DMZHostIPAddress'))==true)
			||(isNtwkSgmtIpAddress(getValue('DMZHostIPAddress'))==true))
			{
				alert('Invalid DMZ address');
				return false;
			}
		}
		else if (getCheckVal('DMZEnable') == 0 && getValue('DMZHostIPAddress') != "")
		{
			if ((isAbcIpAddress(getValue('DMZHostIPAddress'))== false)||(isBroadcastIpAddress(getValue('DMZHostIPAddress'))==true)
			||(isNtwkSgmtIpAddress(getValue('DMZHostIPAddress'))==true))
			{
				alert('Invalid DMZ address');
				return false;
			}
		}
	}
	return true;
}
function CheckPortMapping()
{
	if(VirServEntryIndex >= 10)
	{
		alert('Each interface can store up to 10 virtual host rules!')
		return false;
	}
	if(PortMapping.length >= 32)
	{
		alert('Can store up to 32 virtual host rules!')
		return false;
	}
	if (WanInfo.length == 0)
	{
		alert('Currently no available WAN connection, please add one and then configure it');
		return false;
	}
	with (getElById('PortMappingForm') )
	{
		if (RemoteHost.value != "")
		{
			if (isValidIpAddress(RemoteHost.value) == false)
			{
				alert('The source IP address format error');
				return false;
			}
			else if ((isLoopIpAddress(getValue('RemoteHost'))==true)||(isBroadcastIpAddress(getValue('RemoteHost'))==true)
			||(isNtwkSgmtIpAddress(getValue('RemoteHost'))==true))
			{
				alert('Invalid source IP address');
				return false;
			}
		}
		if (ExternalPort.value == "")
		{
			alert('Invalid start port' );
			return false;
		}
		if (InternalPort.value == "")
		{
			alert('Invalid end port' );
			return false;
		}
		if(parseInt(ExternalPort.value)>parseInt(InternalPort.value))
		{
			alert('Start port value should  be less than End port value !');
			return false;
		}
		if (InternalClient.value == "")
		{
			alert('Invalid host address!' );
			return false;
		}
		if (PortMappingDescription.value == "")
		{
			alert('Rule name is incorrect, please enter again!' );
			return false;
		}
		if (isAbcIpAddress(InternalClient.value) == false ||(isBroadcastIpAddress(getValue('InternalClient'))==true)
		||(isNtwkSgmtIpAddress(getValue('InternalClient'))==true))
		{
			alert('Invalid host address。');
			return false;
		}
		if (isValidPort(ExternalPort.value) == false )
		{
			alert('Invalid start port' );
			return false;
		}
		if (isValidPort(InternalPort.value) == false )
		{
			alert('Invalid end port' );
			return false;
		}
		if (isValidName(PortMappingDescription.value) == false)
		{
			alert('Invalid name。');
			return false;
		}
		for (i = 0; i < PortMapping.length; i++)
		{
			if (PortMapping[i].Description == PortMappingDescription.value)
			{
				alert('The rule name has already been used');
				return false;
			}
			if (PortMapping[i].Protocol == PortMappingProtocol.value
			&& PortMapping[i].ExPort == ExternalPort.value
			&& PortMapping[i].InPort == InternalPort.value
			&& PortMapping[i].RemoteHost == RemoteHost.value
			&& PortMapping[i].InClient == InternalClient.value)
			{
				alert('The same rule already exists');
				return false;
			}
		}
		/*
		if ( "21" == getValue("ExternalPort"))
		{
			return confirm('Warning: if the current FTP service gateway port (21), configure the port mapping rules will change the FTP service gateway port to 2121, are you sure you want to add?');
		}
		else if ( "23" == getValue("ExternalPort") )
		{
			return confirm('Warning: if the current TELNET service gateway port (23), configure the port mapping rules will change the gateway TELNET port to 2323, are you sure you want to add?');
		}
		else if ( "80" == getValue("ExternalPort") )
		{
			return confirm('Warning: if the gateway current HTTP service port (80), configure the port mapping rule will change the gateway Web port to 8080, are you sure you want to add?');
		}
		*/
	}
	return true;
}
function RemovePortMapping(Form, CheckTag)
{
	var rml = getElById(CheckTag);
	var i;
	if (rml.length > 0)
	{
		for (i = 0; i < rml.length; i++)
		{
			if (rml[i].checked == true)
			{
				//Form.addParameter(rml[i].value,'');
				var ctlName = "hVirServEntry"+i;
				setText(ctlName,rml[i].value);
			}
		}
	}
	else if (rml.checked == true)
	{
		//Form.addParameter(rml.value,'');
		var ctlName = "hVirServEntry0";
		setText(ctlName,rml.value);		
	}
}
	
<% if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then %>
function CheckPortTriggering()
{
	if(PortTriggerEntryIndex >= 10)
	{
		alert('Each interface can store up to 10 port trigger rules!')
		return false;
	}
	
	if(PortTriggering.length >= 32)
	{
		alert('Can store up to 32 port trigger rules!')
		return false;
	}
	if (WanInfo.length == 0)
	{
		alert('Currently no available WAN connection, please add one and then configure it');
		return false;
	}
	with (getElById('PortTriggeringForm') )
	{
		if (PortTgTSPort.value == "")
		{
			alert('Invalid Trigger Start Port' );
			return false;
		}
		
		if (PortTgTEPort.value == "")
		{
			alert('Invalid Trigger End Port' );
			return false;
		}
		
		if(parseInt(PortTgTSPort.value)>parseInt(PortTgTEPort.value))
		{
			alert('Trigger Start port value should  be less than End port value !');
			return false;
		}
		
		if (PortTgOSPort.value == "")
		{
			alert('Invalid Open Start Port' );
			return false;
		}
		
		if (PortTgOEPort.value == "")
		{
			alert('Invalid Open End Port' );
			return false;
		}

		if(parseInt(PortTgOSPort.value)>parseInt(PortTgOEPort.value))
		{
			alert('Open Start port value should  be less than End port value !');
			return false;
		}
		
		if (isValidPort(PortTgTSPort.value) == false )
		{
			alert('Invalid Trigger Start Port' );
			return false;
		}
		
		if (isValidPort(PortTgTEPort.value) == false )
		{
			alert('Invalid Trigger End Port' );
			return false;
		}
		
		if (isValidPort(PortTgOSPort.value) == false )
		{
			alert('Invalid Open Start Port' );
			return false;
		}
		
		if (isValidPort(PortTgOEPort.value) == false )
		{
			alert('Invalid Open End Port' );
			return false;
		}
		
		if (isValidName(PortTriggeringDescription.value) == false)
		{
			alert('Invalid name。');
			return false;
		}
		for (i = 0; i < PortTriggering.length; i++)
		{
			if (PortTriggering[i].PortTgTProtocol == PortTgTProtocol.value
			&& PortTriggering[i].PortTgOProtocol == PortTgOProtocol.value
			&& PortTriggering[i].PortTgTSPort == PortTgTSPort.value
			&& PortTriggering[i].PortTgTEPort == PortTgTEPort.value
			&& PortTriggering[i].PortTgOSPort == PortTgOSPort.value
			&& PortTriggering[i].PortTgOEPort == PortTgOEPort.value)
			{
				alert('The same rule already exists');
				return false;
			}
		}
	}
	return true;
}

function RemovePortTriggering(Form, CheckTag)
{
	var rml = getElById(CheckTag);
	var i;
	if (rml.length > 0)
	{
		for (i = 0; i < rml.length; i++)
		{
			if (rml[i].checked == true)
			{
				//Form.addParameter(rml[i].value,'');
				var ctlName = "hPortTriggeringEntry"+i;
				setText(ctlName,rml[i].value);
			}
		}
	}
	else if (rml.checked == true)
	{
		//Form.addParameter(rml.value,'');
		var ctlName = "hPortTriggeringEntry0";
		setText(ctlName,rml.value);		
	}
}
<% end if %>

function LoadFrame()
{

<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
<% if tcwebApi_get("WebCurSet_Entry","CurrentAccess","h") = "0" then %>
	setCheck('L2TPEnable',alg.L2TPEnable);
	setCheck('IPSECEnable',alg.IPSECEnable);
	setCheck('H323Enable',alg.H323Enable);
	setCheck('RTSPEnable',alg.RTSPEnable);
	setCheck('SIPEnable',alg.SIPEnable);
	setCheck('FTPEnable',alg.FTPEnable);
	setCheck('PPTPEnable',alg.PPTPEnable);
<% end if %>
<% else %>	
	setCheck('L2TPEnable',alg.L2TPEnable);
	setCheck('IPSECEnable',alg.IPSECEnable);
	setCheck('H323Enable',alg.H323Enable);
	setCheck('RTSPEnable',alg.RTSPEnable);
	setCheck('SIPEnable',alg.SIPEnable);
	setCheck('FTPEnable',alg.FTPEnable);
	setCheck('PPTPEnable',alg.PPTPEnable);
<% end if %>
	ShowDMZ();

	setSelect('PortMappingInterface',getEntryValue(<% tcWebApi_get("WebCurSet_Entry","nat_ifidx","s") %>));
<% if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then %>
	var pgIndex = "<% tcWebApi_get("WebCurSet_Entry","pg_ifidx","s") %>";
	if ('N\A' != pgIndex)
		setSelect('PortTriggeringInterface',getEntryValue(pgIndex));
<% end if %>
		
	if(document.ConfigForm.isVirServerSupported.value == 1){	
	     ShowPortMapping();
        }
<% if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then %>
	ShowPortTriggering();
<% end if %>
}
function ShowPortMapping()
{
	var Interface = getElById('PortMappingInterface');
	var index = Interface.selectedIndex;
	setDisable('btn1',1);
	if (index >0)
	{
		var PortMpId = Interface.options[index].id;
		index = PortMpId.substr(PortMpId.indexOf('_') + 1);
		if (Interface.length > 1)
		{
			if (WanInfo[index].Enable == 0 || WanInfo[index].NATEnabled == 0)
			{
				setDisable('btn1',1);
			}
			else
			{
				setDisable('btn1',0);
			}
		}
		var html = '<table border="1" cellpadding="0" cellspacing="0" width="460">'
		+ '<tr align="middle">'
		+  '<td width="9%" class="table_title">Protocol</td>'
		+  '<td width="13%" class="table_title">Source IP</td>'
		+  '<td width="16%" class="table_title">Start Port</td>'
		+  '<td width="16%" class="table_title">End Port</td>'
		+  '<td width="13%" class="table_title">Host</td>'
		+  '<td width="30%" class="table_title">Mapping Name</td>'
		+  '<td width="10%" class="table_title">Enable</td>'
		+  '<td width="10%" class="table_title">Delete</td>'
		+ '</tr>'
		VirServEntryIndex = 0;
		for (i = 0; i < PortMapping.length; i++)
		{
			//if (PortMapping[i].domain.indexOf(getSelectVal('PortMappingInterface'))	> -1)
			{
				html += '<TR align="middle">'
				html +=  '<TD align="center">' + getDisplayText(PortMapping[i].Protocol,10) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortMapping[i].RemoteHost,8) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortMapping[i].ExPort,5) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortMapping[i].InPort,5) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortMapping[i].InClient,10) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortMapping[i].Description,10) + '&nbsp;</TD>';
				if (PortMapping[i].ProtMapEnabled == "Yes")
				{
					html += '<TD align="center">' + 'Enable' + '&nbsp;</TD>';
				}
				else
				{
					html += '<TD align="center">' + 'Disable' + '&nbsp;</TD>';
				}
				html += '<TD align="center"><input type="checkbox" name="rml" value="'
				+ PortMapping[i].domain + '"></TD>';
				html += '</TR>';
				VirServEntryIndex++;
			}
		}
		html += '</table>'
		getElById('portMappingInfo').innerHTML = html;
	}
}
<% if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then %>
function ShowPortTriggering()
{
	var Interface = getElById('PortTriggeringInterface');
	var index = Interface.selectedIndex;
	setDisable('btn1',1);
	
	if (index >0)
	{
		var PortTgId = Interface.options[index].id;
		index = PortTgId.substr(PortTgId.indexOf('_') + 1);
		if (Interface.length > 1)
		{
			if (WanInfo[index].Enable == 0 || WanInfo[index].NATEnabled == 0)
			{
				setDisable('btn1',1);
			}
			else
			{
				setDisable('btn1',0);
			}
		}
		var html = '<table border="1" cellpadding="0" cellspacing="0" width="460">'
		+ '<tr align="middle">'
		+  '<td width="100" class="table_title">Description</td>'
		+  '<td width="100" class="table_title">Trigger Protocol</td>'
		+  '<td width="100" class="table_title">Trigger Start Port</td>'
		+  '<td width="100" class="table_title">Trigger End Port</td>'
		+  '<td width="100" class="table_title">Open Protocol</td>'
		+  '<td width="150" class="table_title">Open Start Port</td>'
		+  '<td width="150" class="table_title">Open End Port</td>'
		+  '<td width="80" class="table_title">Enable</td>'
		+  '<td width="80" class="table_title">Delete</td>'
		+ '</tr>'
		PortTriggerEntryIndex = 0;
		for (i = 0; i < PortTriggering.length; i++)
		{
			//if (PortTriggering[i].domain.indexOf(getSelectVal('PortMappingInterface'))	> -1)
			{
				html += '<TR align="middle">'
				html += '<TD align="center">' + getDisplayText(PortTriggering[i].PortTriggeringDescription,10) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortTriggering[i].PortTgTProtocol,10) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortTriggering[i].PortTgTSPort,10) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortTriggering[i].PortTgTEPort,10) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortTriggering[i].PortTgOProtocol,10) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortTriggering[i].PortTgOSPort,10) + '&nbsp;</TD>';
				html += '<TD align="center">' + getDisplayText(PortTriggering[i].PortTgOEPort,10) + '&nbsp;</TD>';
				if (PortTriggering[i].PortTriggeringEnabled == "Yes")
				{
					html += '<TD align="center">' + 'Enable' + '&nbsp;</TD>';
				}
				else
				{
					html += '<TD align="center">' + 'Disable' + '&nbsp;</TD>';
				}
				html += '<TD align="center"><input type="checkbox" name="rml" value="'
				+ PortTriggering[i].domain + '"></TD>';
				html += '</TR>';
				PortTriggerEntryIndex++;
			}
		}
		html += '</table>'
		getElById('portTriggeringInfo').innerHTML = html;
	}
}
<% end if %>

TOTAL_APP = 14;
FIRST_APP = "Choose...";
var v = new Array(TOTAL_APP);
v[0] = new cV("Domain Name Server",1);
v[0].e[0] = new iVe("53", "53", "2", "53", "53");
v[1] = new cV("FTP Server",1);
v[1].e[0] = new iVe("21", "21", "1", "21", "21");
v[2] = new cV("IPSEC",1);
v[2].e[0] = new iVe("500", "500", "2", "500", "500");
v[3] = new cV("Mail POP3",1);
v[3].e[0] = new iVe("110", "110", "1", "110", "110");
v[4] = new cV("Mail SMTP",1);
v[4].e[0] = new iVe("25", "25", "1", "25", "25");
v[5] = new cV("PPTP",1);
v[5].e[0] = new iVe("1723", "1723", "1", "1723", "1723");
v[6] = new cV("Real Player 8 Plus",1);
v[6].e[0] = new iVe("7070", "7070", "2", "7070", "7070");
v[7] = new cV("Secure Shell Server",1);
v[7].e[0] = new iVe("22", "22", "1", "22", "22");
v[8] = new cV("Secure Web Server HTTPS",1);
v[8].e[0] = new iVe("443", "443", "1", "443", "443");
v[9] = new cV("SNMP",1);
v[9].e[0] = new iVe("161", "161", "2", "161", "161");
v[10] = new cV("SNMP Trap",1);
v[10].e[0] = new iVe("162", "162", "2", "162", "162");
v[11] = new cV("Telnet Server",1);
v[11].e[0] = new iVe("23", "23", "1", "23", "23");
v[12] = new cV("TFTP",1);
v[12].e[0] = new iVe("69", "69", "2", "69", "69");
v[13] = new cV("Web Server HTTP",1);
v[13].e[0] = new iVe("80", "80", "1", "80", "80");
function cV(name, entryNum)
{
	this.name = name;
	this.eNum = entryNum;
	this.e = new Array(5);
}
function iVe(eStart, eEnd, proto, iStart, iEnd)
{
	this.eStart = eStart;
	this.eEnd = eEnd;
	this.proto = proto;
	this.iStart = iStart;
	this.iEnd = iEnd;
}
function clearAll()
{
}
function trimspace(str)
{
	var strTemp = new String(str);
	while (-1 != strTemp.search(" "))
	{
		strTemp = strTemp.replace(" ", "");
	}
	return strTemp;
}
function appSelect(sName)
{
	clearAll();
	with (getElById('PortMappingForm'))
	{
		if (sName == FIRST_APP)
		{
			return;
		}
		for(i = 0; i < TOTAL_APP; i++)
		{
			if(v[i].name == sName)
			{
				switch (v[i].e[0].proto)
				{
				case '0':
					setSelect('PortMappingProtocol','TCP/UDP');
					break;
				case '1':
					setSelect('PortMappingProtocol','TCP');
					break;
				case '2':
					setSelect('PortMappingProtocol','UDP');
					break;
				}
				RemoteHost.value = "";
				ExternalPort.value = v[i].e[0].eStart;
				InternalPort.value = v[i].e[0].iStart;
				PortMappingDescription.value = trimspace(sName);
			}
		}
	}
}
function radioClick()
{
	if (document.PortMappingForm.radiosrv[0].checked == true)
	{
		with(document.PortMappingForm)
		{
			constsrvName.disabled = true;
		}
	}
	else
	{
		with(document.PortMappingForm)
		{
			constsrvName.disabled = false;
		}
	}
}

function setALGSwitch()
{
	var Form = document.algForm;
	if(Form.L2TPEnable.checked)
		Form.L2TPSW_Flag.value = "on";
	else 
		Form.L2TPSW_Flag.value = "off";
	
	if(Form.IPSECEnable.checked)
		Form.IPSecSW_Flag.value = "on";
	else 
		Form.IPSecSW_Flag.value = "off";
	
	if(Form.H323Enable.checked)
		Form.H323SW_Flag.value = "on";
	else 
		Form.H323SW_Flag.value = "off";
	
	if(Form.RTSPEnable.checked)
		Form.RTSPSW_Flag.value = "on";
	else 
		Form.RTSPSW_Flag.value = "off";
	
	if(Form.SIPEnable.checked)
		Form.SIPSW_Flag.value = "on";
	else 
		Form.SIPSW_Flag.value = "off";
	
	if(Form.FTPEnable.checked)
		Form.FTPSW_Flag.value = "on";
	else 
		Form.FTPSW_Flag.value = "off";
	
	if(Form.PPTPEnable.checked)
		Form.PPTPSW_Flag.value = "on";
	else 
		Form.PPTPSW_Flag.value = "off";
}
function getEntryIndex(ctl)
{
	for (i = 0; i < nEntryNum; i++)
	{
		if (getSelectVal(ctl) == vEntryValue[i])
			return vEntryIndex[i];
	}
	return 999;
}
function getEntryValue(idx)
{
	for (i = 0; i < nEntryNum; i++)
	{
		if (idx == vEntryIndex[i])
			return vEntryValue[i];
	}
	return 999;
}
function btnSubmit(iMode)
{
	if(CheckForm(iMode) == false)
		return;
		
	if(iMode == 1)//alg
	{
		setALGSwitch();
		document.algForm.alg_Flag.value = "1";
		document.algForm.submit();
	}
	else if(iMode == 2)//dmz
	{
		if(getCheckVal('DMZEnable') == 0)
			document.dmzForm.EnableDMZ_Flag.value = "No";
		else 
			document.dmzForm.EnableDMZ_Flag.value = "Yes";
		
		<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>	
		if(getCheckVal('AutoDMZEnable') == 0)
			document.dmzForm.AutoDMZ_Flag.value = "0";
		else 
			document.dmzForm.AutoDMZ_Flag.value = "1";
		<%End If%>	
		document.dmzForm.DMZ_Flag.value = "1";
		document.dmzForm.DMZEntryCurIndex.value = getEntryIndex('DMZInterface');
		document.dmzForm.submit();
	}
	else if(iMode == 3)//add
	{
		document.PortMappingForm.VirServCurIndex.value = VirSerIdleEntryIndex;
		document.PortMappingForm.VirServer_Flag.value = "1";
		document.PortMappingForm.VirServEntryCurIndex.value = getEntryIndex('PortMappingInterface');
		document.PortMappingForm.submit();
	}
	else if(iMode == 4)//del
	{
		RemovePortMapping(PortMappingForm,'rml');
		document.PortMappingForm.VirServCurIndex.value = VirServEntryIndex;
		document.PortMappingForm.VirServer_Flag.value = "2";
		document.PortMappingForm.VirServEntryCurIndex.value = getEntryIndex('PortMappingInterface');
		document.PortMappingForm.submit();
	}
	else if(iMode == 5)//changeIF
	{
		document.PortMappingForm.VirServer_Flag.value = "3";
		document.PortMappingForm.VirServEntryCurIndex.value = getEntryIndex('PortMappingInterface');
		document.PortMappingForm.submit();
	}	
<% if tcWebApi_get("WebCustom_Entry", "isNATLoopbackSupported", "h") = "Yes"  then %>	
	else if(iMode == 6)//loopback
	{
		if (document.LoopBackForm.LoopBackEnable.checked == true)
		{
			document.LoopBackForm.natloopbackEnb.value = "1";
		}
		else
		{
			document.LoopBackForm.natloopbackEnb.value = "0";
		}
		
		document.LoopBackForm.natloopback_Flag.value = "1";
		document.LoopBackForm.submit();
	}	
<% end if%>
<% if tcWebApi_get("WebCustom_Entry", "isportTriggeringSupported", "h") = "Yes"  then %>	
	else if(iMode == 7)//add
	{
		document.PortTriggeringForm.PortTriggerCurIndex.value = PortTriggerIdleEntryIndex;
		document.PortTriggeringForm.PortTrigger_Flag.value = "1";
		document.PortTriggeringForm.PortTriggerEntryCurIndex.value = getEntryIndex('PortTriggeringInterface');
		document.PortTriggeringForm.submit();
	}
	else if(iMode == 8)//del
	{
		RemovePortTriggering(PortTriggeringForm,'rml');
		document.PortTriggeringForm.PortTriggerCurIndex.value = PortTriggerEntryIndex;
		document.PortTriggeringForm.PortTrigger_Flag.value = "2";
		document.PortTriggeringForm.PortTriggerEntryCurIndex.value = getEntryIndex('PortTriggeringInterface');
		document.PortTriggeringForm.submit();
	}		
	else if(iMode == 9)//changeIF
	{
		document.PortTriggeringForm.PortTrigger_Flag.value = "3";
		document.PortTriggeringForm.PortTriggerEntryCurIndex.value = getEntryIndex('PortTriggeringInterface');
		document.PortTriggeringForm.submit();
	}
<% end if%>
}
function ShowDMZ()
{
	var Interface = getElById('DMZInterface');
	var index = Interface.selectedIndex;
	if (index >=0)
	{
		var DMZId = Interface.options[index].id;
		index = DMZId.substr(DMZId.indexOf('_') + 1);
		if ((index < 0) || (index >= WanInfo.length))
		{
			return;
		}
		setCheck('DMZEnable',WanInfo[index].DMZEnable);
		<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
		setCheck('AutoDMZEnable',WanInfo[index].AutoDMZ_Flag);
		<%End If%>
		setText('DMZHostIPAddress',WanInfo[index].DMZIP);
		if (WanInfo[index].Enable == 0 || WanInfo[index].NATEnabled == 0)
		{
			setDisable('DMZEnable',1);
			<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
			setDisable('AutoDMZEnable',1);
			<%End If%>
			setDisable('DMZHostIPAddress',1);	
		}
		else
		{
			setDisable('DMZEnable',0);
			<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
			setDisable('AutoDMZEnable',0);
			<%End If%>
			setDisable('DMZHostIPAddress',0);
			
			if(WanInfo[index].DMZEnable)
			{	
				document.dmzForm.DMZHostIPAddress.disabled = false;
				<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
				document.dmzForm.AutoDMZEnable.disabled = false;
				if(WanInfo[index].AutoDMZ_Flag)
				{
					document.dmzForm.DMZHostIPAddress.disabled = true;
				}
				else
				{
					document.dmzForm.DMZHostIPAddress.disabled = false;
				}
				<%End If%>
			}
			else
			{
				setText('DMZHostIPAddress', "");
				<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
				document.dmzForm.AutoDMZEnable.disabled = true;
				<%End If%>
				document.dmzForm.DMZHostIPAddress.disabled = true;
			}			
		}
	}
}
function clearAll()
{
}
</SCRIPT>

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width=1008>
        <TBODY id="alg_dmz">  
        <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>
        <SCRIPT language=JavaScript type=text/javascript>
					if (curUserName != sptUserName)
						getElement("alg_dmz").style.display = "none";
				</SCRIPT>
        <% end if %>      	 
<% if tcWebApi_get("WebCustom_Entry", "isCTFJSupported", "h") = "Yes"  then %>
<% if tcwebApi_get("WebCurSet_Entry","CurrentAccess","h") = "0" then %>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>ALG Settings</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170 
            rowSpan=13 id="TRSpan"><TABLE cellSpacing=0 cellPadding=20 width="100%" 
border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#AdvancedNAT" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
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
                  <FORM id=algForm name="algForm" action="/cgi-bin/app-natset.asp" method="post">
                  <DIV id=pptp>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=L2TPEnable> Enable L2TP 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                  <DIV id=ipsec>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=IPSECEnable> Enable IPSec 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                  <DIV id=h323>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=H323Enable> Enable H.323 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                  <DIV id=rtsp>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=RTSPEnable> Enable RTSP 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                  <DIV id=sipproxdInfo>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=SIPEnable> Enable SIP 
                  ALG</TD></TR><BR></TBODY></TABLE></DIV>
                      <input type="hidden" name="L2TPSW_Flag" value="0">
                      <input type="hidden" name="IPSecSW_Flag" value="0">
                      <input type="hidden" name="H323SW_Flag" value="0">
                      <input type="hidden" name="RTSPSW_Flag" value="0">
                      <input type="hidden" name="SIPSW_Flag" value="0">
                      <input type="hidden" name="FTPSW_Flag" value="0">
                      <input type="hidden" name="alg_Flag" value="0">
                      <input type="hidden" name="PPTPSW_Flag" value="0">
                  <DIV id=ftp>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=FTPEnable> Enable FTP 
                    ALG</TD>
                      </TR><BR></TBODY></TABLE>
                      </DIV>
                  <DIV id=pptp>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=PPTPEnable> Enable PPTP 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                    </FORM>
                  <CENTER>
                  <DIV id=applybutton><INPUT onclick="btnSubmit(1)" type=button value=Apply name=button3> 
                  </DIV></CENTER>
                  <P></P></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
<% end if %>
<% else %>	
		<TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>ALG Settings</P></TD>
          <TD width=7 bgColor=#ffffff>　</TD>
          <TD width=474>　</TD>
          <TD vAlign=top width=170 
            rowSpan=13 id="TRSpan"><TABLE cellSpacing=0 cellPadding=20 width="100%" 
border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#AdvancedNAT" 
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
                  <FORM id=algForm name="algForm" action="/cgi-bin/app-natset.asp" method="post">
                  <DIV id=pptp>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=L2TPEnable> Enable L2TP 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                  <DIV id=ipsec>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=IPSECEnable> Enable IPSec 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                  <DIV id=h323>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=H323Enable> Enable H.323 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                  <DIV id=rtsp>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=RTSPEnable> Enable RTSP 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                  <DIV id=sipproxdInfo>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=SIPEnable> Enable SIP 
                  ALG</TD></TR><BR></TBODY></TABLE></DIV>
                      <input type="hidden" name="L2TPSW_Flag" value="0">
                      <input type="hidden" name="IPSecSW_Flag" value="0">
                      <input type="hidden" name="H323SW_Flag" value="0">
                      <input type="hidden" name="RTSPSW_Flag" value="0">
                      <input type="hidden" name="SIPSW_Flag" value="0">
                      <input type="hidden" name="FTPSW_Flag" value="0">
                      <input type="hidden" name="alg_Flag" value="0">
                      <input type="hidden" name="PPTPSW_Flag" value="0">
                  <DIV id=ftp>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=FTPEnable> Enable FTP 
                    ALG</TD>
                      </TR><BR></TBODY></TABLE>
                      </DIV>
                  <DIV id=pptp>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD><INPUT type=checkbox name=PPTPEnable> Enable PPTP 
                    ALG</TD></TR><BR></TBODY></TABLE></DIV>
                    </FORM>
                  <CENTER>
                  <DIV id=applybutton><INPUT onclick="btnSubmit(1)" type=button value=Apply name=button3> 
                  </DIV></CENTER>
                  <P></P></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                 
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
<% end if %>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>DMZ Settings</P></TD>
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
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <FORM id=dmzForm name="dmzForm" action="/cgi-bin/app-natset.asp" method="post">
                      Message from the network side will be forwarded to the DMZ host if no port mapping.
                      <input type="hidden" name="EnableDMZ_Flag" value="0">
                      <input type="hidden" name="DMZ_Flag" value="0">
                      <input type="hidden" name="DMZEntryCurIndex" value="0">
					  <input type="hidden" name="AutoDMZ_Flag" value="0">
					  <input type="hidden" name="isAutoDMZSupported" value="<%if tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" then asp_write("1") else asp_write("0") end if%>">
                      <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=120>Interface name：</TD>
                      <TD><SELECT id=DMZInterface onchange=ShowDMZ() 
                        name=DMZInterface maxlength="15"> 
			<SCRIPT language=JavaScript type=text/javascript>
			var dmzidx = <% tcWebApi_get("WebCurSet_Entry","dmz_ifidx","s") %>;
			var sel = '';
			for (i = 0; i < nEntryNum; i++)
			{
				if ( i == 0 && dmzidx == 999 )
					sel = 'selected';
				else
					sel = ( dmzidx == vEntryIndex[i] ) ? 'selected' : '';
				<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
				if((vEntryName[i].indexOf('_TR069_')<0 && vEntryName[i].indexOf('_INTERNET_')>-1) && (vEntryName[i].indexOf('_R_')>-1))
				<%else%>
				if((vEntryName[i].indexOf('_TR069_')<0) || (vEntryName[i].indexOf('_INTERNET_')>-1))
				<%end if%>
				{
					document.write('<option value=' + vEntryValue[i] + ' id=dmz_' + i + '  ' + sel + '>'
					+ vEntryName[i] + '</option>');
				}
			}
			</SCRIPT>
                        </SELECT> </TD></TR>
                    <TR>
                      <TD width=120>Enable：</TD>
                      <TD><INPUT onclick=dmzClick() type=checkbox 
                        name=DMZEnable></TD></TR>
					<%If tcWebApi_get("Dmz_Common","isAutoDMZSupported","h") = "Yes" Then%>
						<TR>
                            <TD width=120>AUTO DMZ：</TD>
                            <TD><input onClick=AutodmzClick() type=checkbox 
                        name=AutoDMZEnable > 
                            </TD>
                          </TR>
					<%End If%>
                    <TR>
                      <TD width=120>LAN IP Address：</TD>
                      <TD><INPUT maxLength=15 
                    name=DMZHostIPAddress></TD></TR></TBODY></TABLE></FORM><BR>
                  <CENTER><INPUT onclick="btnSubmit(2)" type=button value=Apply name=button> 
                  </CENTER>
                  <P></P></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
         <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %> 	
         </TBODY>        
         <TBODY>
         <% end if %> 		
<% if tcWebApi_get("WebCustom_Entry","isNATLoopbackSupported","h")="Yes" then %>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>NAT Loopback Settings</P></TD>
          <TD width=7 bgColor=#ffffff>　</TD>
          <TD width=474>　</TD>
           <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>          
           <TD vAlign=top width=170  
            rowSpan=13><TABLE id='nat_help' cellSpacing=0 cellPadding=20 width="100%" 
border=0 height='100%'>
              <TBODY>
             
              </TBODY></TABLE></TD>
              <SCRIPT language=JavaScript type=text/javascript>
								if (curUserName == sptUserName)
									getElement("nat_help").style.display = "none";
							</SCRIPT>           
           <% end if%>          
          </TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <FORM id=LoopBackForm name="LoopBackForm" action="/cgi-bin/app-natset.asp" method="post">
                  <DIV id=natloopback>
					<input type="hidden" name="natloopbackEnb" value="0">
					<input type="hidden" name="natloopback_Flag" value="0">
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=120>Enable：</TD>
					  <TD><INPUT id=Enable type=checkbox name="LoopBackEnable" <%if tcWebApi_get("Lan_NATLoopback","Enable","h") = "1" then asp_Write("checked") end if%>></TD>
					  </TR>
						</TBODY></TABLE></DIV></FORM><BR>
						<CENTER>
							<DIV id=applybutton><INPUT onclick="btnSubmit(6)" type=button value=Apply name=button3> 
							</DIV>
						</CENTER></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
               
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
<%end if%>
<% if tcWebApi_get("Info_Ether","isVirServerSupported","h")="Yes" then %>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Virtual Server Settings</P></TD>
          <TD width=7 bgColor=#ffffff>　</TD>
          <TD width=474>　</TD>
           <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>          
           <TD vAlign=top width=170 
            rowSpan=13><TABLE id='nat_help' cellSpacing=0 cellPadding=20 width="100%" 
border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#AdvancedNAT" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
              </TBODY></TABLE></TD>
              <SCRIPT language=JavaScript type=text/javascript>
								if (curUserName == sptUserName)
									getElement("nat_help").style.display = "none";
							</SCRIPT>           
           <% end if%>          
          </TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <FORM id=PortMappingForm name="PortMappingForm" action="/cgi-bin/app-natset.asp" method="post">
                  <DIV id=natpm>
	                <input type="hidden" name="VirServer_Flag" value="0"> 
	                <input type="hidden" name="EnableVirServer_Flag" value="Yes">
	                <input type="hidden" name="VirServEntryCurIndex" value="0">
	                <input type="hidden" name="VirServCurIndex" value="0">
	                <input type="hidden" name="hVirServEntry0" value="99">
	                <input type="hidden" name="hVirServEntry1" value="99">
	                <input type="hidden" name="hVirServEntry2" value="99">
	                <input type="hidden" name="hVirServEntry3" value="99">
	                <input type="hidden" name="hVirServEntry4" value="99">
	                <input type="hidden" name="hVirServEntry5" value="99">
	                <input type="hidden" name="hVirServEntry6" value="99">
	                <input type="hidden" name="hVirServEntry7" value="99">
	                <input type="hidden" name="hVirServEntry8" value="99">
	                <input type="hidden" name="hVirServEntry9" value="99">	                
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                              <TD width=120>Interface：</TD>
                      <TD><SELECT onchange=btnSubmit(5) size=1 
                        name=PortMappingInterface> 
			<SCRIPT language=JavaScript type=text/javascript>
			document.write('<option value="999">' + '' + '</option>');
			for (i = 0; i < nEntryNum; i++)
			{
				<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
				if((vEntryName[i].indexOf('_TR069_')<0 && vEntryName[i].indexOf('_INTERNET_')>-1) && (vEntryName[i].indexOf('_R_')>-1))
				<%else%>				
				if((vEntryName[i].indexOf('_TR069_')<0 || vEntryName[i].indexOf('_INTERNET_')>-1) && (vEntryName[i].indexOf('_R_')>-1))
				<%end if%>
				{
					document.write('<option value=' + vEntryValue[i] + ' id=portmp_' + i + '>' + vEntryName[i] + '</option>');
				}
			}
			</SCRIPT>
                        </SELECT> </TD></TR>
										<TR><TD><INPUT onclick=radioClick() type=radio CHECKED 
                        name=radiosrv>&nbsp;Custom&nbsp; </TD><TD>&nbsp;</TD></TR>
                    <TR><TD><INPUT onclick=radioClick() type=radio 
                        name=radiosrv>&nbsp;Application：&nbsp; </TD><TD>
                        <SELECT disabled onchange=appSelect(this.value) 
                        size=1 name=constsrvName> <OPTION value=FIRST_APP 
                          selected>Choose...</OPTION> <OPTION 
                          value="Domain Name Server">Domain Name Server
                          </OPTION> <OPTION value="FTP Server">FTP 
                          Server</OPTION> <OPTION value=IPSEC>IPSEC</OPTION> 
                          <OPTION value="Mail POP3">Mail POP3</OPTION> 
                          <OPTION value="Mail SMTP">Mail SMTP</OPTION> 
                          <OPTION value=PPTP>PPTP</OPTION> <OPTION 
                          value="Real Player 8 Plus">Real Player 8 Plus</OPTION> 
                          <OPTION value="Secure Shell Server">Secure Shell 
                          Server</OPTION> <OPTION 
                          value="Secure Web Server HTTPS">Secure Web Server 
                          HTTPS</OPTION> <OPTION value=SNMP>SNMP</OPTION> 
                          <OPTION value="SNMP Trap">SNMP Trap</OPTION> <OPTION 
                          value="Telnet Server">Telnet Server</OPTION> <OPTION 
                          value=TFTP>TFTP</OPTION> <OPTION 
                          value="Web Server HTTP">Web Server 
                        HTTP</OPTION></SELECT> 
              			</TD></TR>
                    <TR style="DISPLAY: none">
                      <TD width=120>Enable：</TD>
                      <TD><SELECT size=1 name=PortMappingEnabled> <OPTION 
                          value=1 selected>Enable</OPTION> <OPTION 
                          value=0>Disable</OPTION></SELECT> </TD></TR>
                    <TR>
                      <TD width=120>Protocol：</TD>
                      <TD><SELECT size=1 name=PortMappingProtocol> <OPTION 
                          value=TCP selected>TCP</OPTION> <OPTION 
                          value=UDP>UDP</OPTION> <OPTION 
                          value=TCP/UDP>TCP/UDP</OPTION></SELECT> </TD></TR>
                    <TR>
                      <TD width=120>Source IP：</TD>
                      <TD><INPUT maxLength=15 name=RemoteHost></TD></TR>
                    <TR>
                      <TD width=120>Start Port：</TD>
                      <TD><INPUT maxLength=5 name=ExternalPort></TD></TR>
                    <TR>
                      <TD width=120>End Port：</TD>
                      <TD><INPUT maxLength=5 name=InternalPort></TD></TR>
                    <TR>
                      <TD width=120>Internal Host：</TD>
                      <TD><INPUT maxLength=32 name=InternalClient></TD></TR>
                    <TR>
                      <TD width=120>Mapping Name：</TD>
                      <TD><INPUT maxLength=31 
                    name=PortMappingDescription></TD></TR></TBODY></TABLE></DIV></FORM><BR><LEFT><INPUT onclick=btnSubmit(3) type=button value=Add name=btn1> 
                  </LEFT><BR><BR><BR>
                  <DIV id=portMappingInfo></DIV><BR><LEFT><INPUT onclick=btnSubmit(4) type=button value=Delete> 
                  </LEFT></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
<%end if%>
<% if tcWebApi_get("WebCustom_Entry","isportTriggeringSupported","h")="Yes" then %>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>Port Trigger Settings</P></TD>
          <TD width=7 bgColor=#ffffff>　</TD>
          <TD width=474>　</TD>
           <%if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %>          
           <TD vAlign=top width=170 
            rowSpan=13><TABLE id='nat_help' cellSpacing=0 cellPadding=20 width="100%" 
border=0 height='100%'>
              <TBODY>
             
              </TBODY></TABLE></TD>
              <SCRIPT language=JavaScript type=text/javascript>
								if (curUserName == sptUserName)
									getElement("nat_help").style.display = "none";
							</SCRIPT>           
           <% end if%>          
          </TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <FORM id=PortMappingForm name="PortTriggeringForm" action="/cgi-bin/app-natset.asp" method="post">
                  <DIV id=natpm>
	                <input type="hidden" name="PortTrigger_Flag" value="0"> 
	                <input type="hidden" name="EnablePortTriggering_Flag" value="Yes">
	                <input type="hidden" name="PortTriggerEntryCurIndex" value="0">
	                <input type="hidden" name="PortTriggerCurIndex" value="0">
	                <input type="hidden" name="hPortTriggeringEntry0" value="99">
	                <input type="hidden" name="hPortTriggeringEntry1" value="99">
	                <input type="hidden" name="hPortTriggeringEntry2" value="99">
	                <input type="hidden" name="hPortTriggeringEntry3" value="99">
	                <input type="hidden" name="hPortTriggeringEntry4" value="99">
	                <input type="hidden" name="hPortTriggeringEntry5" value="99">
	                <input type="hidden" name="hPortTriggeringEntry6" value="99">
	                <input type="hidden" name="hPortTriggeringEntry7" value="99">
	                <input type="hidden" name="hPortTriggeringEntry8" value="99">
	                <input type="hidden" name="hPortTriggeringEntry9" value="99">	                
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                              <TD width=120>Interface：</TD>
                      <TD><SELECT onchange=btnSubmit(9) size=1 
                        name=PortTriggeringInterface> 
			<SCRIPT language=JavaScript type=text/javascript>
									var pgSpan = getElById('TRSpan').rowSpan;
										getElById('TRSpan').rowSpan = pgSpan + 4;
			document.write('<option value="999">' + '' + '</option>');
			for (i = 0; i < nEntryNum; i++)
			{
				<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
				if((vEntryName[i].indexOf('_TR069_')<0 && vEntryName[i].indexOf('_INTERNET_')>-1) && (vEntryName[i].indexOf('_R_')>-1))
				<%else%>				
				if((vEntryName[i].indexOf('_TR069_')<0 || vEntryName[i].indexOf('_INTERNET_')>-1) && (vEntryName[i].indexOf('_R_')>-1))
				<%end if%>
				{
					document.write('<option value=' + vEntryValue[i] + ' id=porttg_' + i + '>' + vEntryName[i] + '</option>');
				}
			}
			</SCRIPT>
                        </SELECT> </TD></TR>
                    <TR style="DISPLAY: none">
                      <TD width=120>Enable：</TD>
                      <TD><SELECT size=1 name=PortTriggeringEnabled> <OPTION 
                          value=1 selected>Enable</OPTION> <OPTION 
                          value=0>Disable</OPTION></SELECT> </TD></TR>
                    <TR>
                      <TD width=120>Description：</TD>
                      <TD><INPUT maxLength=31 name=PortTriggeringDescription></TD></TR>
                    <TR>
                      <TD width=120>Trigger Protocol：</TD>
                      <TD><SELECT size=1 name=PortTgTProtocol> <OPTION 
                          value=TCP selected>TCP</OPTION> <OPTION 
                          value=UDP>UDP</OPTION> <OPTION 
                          value=TCP/UDP>TCP/UDP</OPTION></SELECT> </TD></TR>
                    <TR>
                      <TD width=120>Trigger Start Port：</TD>
                      <TD><INPUT maxLength=5 name=PortTgTSPort></TD></TR>
                    <TR>
                      <TD width=120>Trigger End Port：</TD>
                      <TD><INPUT maxLength=5 name=PortTgTEPort></TD></TR>
                    <TR>
                      <TD width=120>Open Protocol：</TD>
                      <TD><SELECT size=1 name=PortTgOProtocol> <OPTION 
                          value=TCP selected>TCP</OPTION> <OPTION 
                          value=UDP>UDP</OPTION> <OPTION 
                          value=TCP/UDP>TCP/UDP</OPTION></SELECT> </TD></TR>
                    <TR>
                      <TD width=120>Open Start Port：</TD>
                      <TD><INPUT maxLength=5 name=PortTgOSPort></TD></TR>
                    <TR>
                      <TD width=120>Open End Port：</TD>
                      <TD><INPUT maxLength=5 name=PortTgOEPort></TD></TR></TBODY></TABLE></DIV></FORM><BR><LEFT><INPUT onclick=btnSubmit(7) type=button value=Add name=btn1> 
                  </LEFT><BR><BR><BR>
                  <DIV id=portTriggeringInfo></DIV><BR><LEFT><INPUT onclick=btnSubmit(8) type=button value=Delete> 
                  </LEFT></TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
<%end if%>
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
      <FORM style="DISPLAY: none" name=ConfigForm action="">
<input type="hidden" name="isVirServerSupported" value="<%if tcWebApi_get("Info_Ether","isVirServerSupported","h") = "Yes" then asp_write("1") else asp_write("0") end if%>">
</FORM></TD></TR>
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
