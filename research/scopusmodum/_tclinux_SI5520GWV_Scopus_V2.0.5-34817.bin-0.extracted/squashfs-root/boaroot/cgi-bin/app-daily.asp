<%
if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then
if Request_Form("Down_Flag") = "1" then
	TCWebApi_set("appFTP_Downloading","username","getUserName") 
	TCWebApi_set("appFTP_Downloading","password","getPassWord") 
	TCWebApi_set("appFTP_Downloading","url","DownLoadUrl") 
	TCWebApi_set("appFTP_Downloading","port","Port") 
	TCWebApi_set("appFTP_Downloading","deviceid","getClDevType") 
	TCWebApi_set("appFTP_Downloading","savepath","getLocalPath") 
	TCWebApi_commit("appFTP_Downloading")
end if
end if
if Request_Form("ApplyFlag") = "1" then

	TCWebApi_set("WanInfo_Common","CurIFIndex","curSetIndex")
	TCWebApi_commit("WanInfo_Common")		

	tcWebApi_get("WanInfo_WanIF","MulticastVID","h")

	TCWebApi_set("WanInfo_WanPVC","Action","OperatorStyle")
	
	TCWebApi_set("WanInfo_WanIF","MulticastVID","McVlanID")
	TCWebApi_commit("WanInfo_WanPVC")
	TCWebApi_save()
end if

if tcwebApi_get("WebCustom_Entry","isHttpPortSettingSupported","h") = "Yes" then
if Request_Form("httpApplyFlag") = "1" then
	TCWebApi_set("httpsetting_Entry","port","httpPort")
	TCWebApi_commit("httpsetting_Entry")
	TCWebApi_save()
end if
end if

if tcwebApi_get("WebCustom_Entry","isSSHSupported","h") = "Yes" then
if Request_Form("sshApplyFlag") = "1" then
	TCWebApi_set("ssh_Entry","enable","sshEnableValue")
	TCWebApi_commit("ssh_Entry")
	TCWebApi_save()
end if
end if

if tcwebApi_get("WebCustom_Entry","isTelnetSettingSupported","h") = "Yes" then
if Request_Form("telnetApplyFlag") = "1" then
	TCWebApi_set("Account_TelnetEntry","Active","telnetEnableValue")
	TCWebApi_commit("Account_TelnetEntry")
	TCWebApi_save()
end if

if Request_Form("PasswordApplyFlag") = "1" then
	TCWebApi_set("Account_TelnetEntry","telnet_passwd","cfmTelPassword")
	TCWebApi_commit("Account_TelnetEntry")
	TCWebApi_save()
end if

end if
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Daily application</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>

<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>
<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then %>
<SCRIPT language=javascript type=text/javascript src="/cgi-bin/showhis.cgi"></SCRIPT>
<SCRIPT language=JavaScript type=text/javascript src="/cgi-bin/showusb.cgi"></SCRIPT>
<% end if %>
<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
<SCRIPT language=JavaScript src="/JS/printtable.js"></SCRIPT>
<SCRIPT language=javascript>
function LoadFrame()
{
//getusb();
//	with(document.forms[0])
//	{
//		if (ClDevType.value == "N/A")
//			btnDown.disabled = true;
//		var maxjobvalue = "<%TCWebApi_get("appFTP_Downloading","maxjob","s")%>";
//		if(DownloadingCount>=parseInt(maxjobvalue) || ClDevType.value=="N/A")
//			btnDown.disabled=true;
//	}
	
//	document.IPTVForm.McVlanID.value = "";
	
	/*if (curUserName != sptUserName)
	{
		document.getElementById("iptvTR1").style.display = "none";
		document.getElementById("iptvTR2").style.display = "none";
		document.getElementById("iptvTR3").style.display = "none";
	}*/

		
	if (curUserName != sptUserName)
	{
<% if tcwebApi_get("WebCustom_Entry","isSSHSupported","h") = "Yes" then %>
		document.getElementById("sshsetting1").style.display = "none";
		document.getElementById("sshsetting2").style.display = "none";
		document.getElementById("sshsetting2").style.display = "none";	
<% end if%>		

<% if tcwebApi_get("WebCustom_Entry","isTelnetSettingSupported","h") = "Yes" then %>
		document.getElementById("telnetsetting1").style.display = "none";
		document.getElementById("telnetsetting2").style.display = "none";
		document.getElementById("telnetsetting3").style.display = "none";	
<% end if %>		
	
	}
	//autoRefreshMainTable("mainTableSet");
}
//////////////////
 function SetCwinHeight() {   

   var iframeid = document.getElementById("showhis"); //iframe id   
   iframeid.height = "0px";//先给一个够小的初值,然后再长高.   
  if (document.getElementById) {   
  if (iframeid && !window.opera) {   
        if (iframeid.contentDocument && iframeid.contentDocument.body.offsetHeight) {   
          iframeid.height = iframeid.contentDocument.body.offsetHeight;   
          } else if (iframeid.Document && iframeid.Document.body.scrollHeight) {   
          iframeid.height = iframeid.Document.body.scrollHeight;   
       }   
 }   
 }   
 }
 //////////////////////////////////////////
function SubmitFresh()
{
location.replace("/cgi-bin/app-daily.asp");
//center.window.location.reload();
}
///////////////////////////////
function	btnSubmit()
{
    if (CheckForm() == true)
	{
	   	var Form = document.ConfigForm;
//		getusb();
		Form.Down_Flag.value = "1";
		Form.LocalPath.value = Form.LocalPath.value.replace(/\\/g, '/'); 
		Form.LocalPath.value = Form.LocalPath.value.replace(/(^\s*)|(\s*$)/g, "");
//		Form.LocalPath.value = Form.LocalPath.value.replace(/'/g, "'\\''");
/*		var subdoc;		
        if (document.all){//IE
                subdoc = document.frames["usbdev"].document;
        }else{//Firefox    
                subdoc = document.getElementById("usbdev").contentDocument;
        }
		document.forms[0].ClDevType.value=subdoc.getElementById("ClDevType").value;*/
		if (Form.UserName.value == '') 
		{
			Form.getUserName.value="anonymous";
		}
		else
		{
			Form.getUserName.value=Form.UserName.value;
		}
		if (Form.PassWord.value == '') 
		{
			Form.getPassWord.value="anonymous";
		}
		else
		{
			Form.getPassWord.value=Form.PassWord.value;
		}
//		Form.getUserName.value = Form.getUserName.value.replace(/'/g, "'\\''");
//		Form.getPassWord.value = Form.getPassWord.value.replace(/'/g, "'\\''");
		Form.getClDevType.value=Form.ClDevType.value;
		Form.getLocalPath.value=Form.LocalPath.value;
		Form.ClDevType.disabled=true;
		Form.LocalPath.disabled=true;
		
		Form.submit();
	}

}
///////////////////////////////////
/*function getusb(){
        var doc;		
        if (document.all){//IE
                doc = document.frames["usbdev"].document;
        }else{//Firefox    
                doc = document.getElementById("usbdev").contentDocument;
        }
        document.forms[0].ClDevType.value=doc.getElementById("ClDevType").value;
		if(document.forms[0].ClDevType.value=="" || document.forms[0].ClDevType.value=="N/A")
		{
		document.forms[0].btnDown.disabled=true;
		doc.getElementById("ClDevType").disabled=true;
		}
//		alert(document.forms[0].ClDevType.value);
}*/
/////////////////////////////////////
function checkFtpClient() {
with( document.forms[0] )
{
if ( (Port.value !='') &&(isNaN(parseInt(Port.value )) == true))
{
alert('invalid port');
return false;
}
var info = parseFloat(Port.value );
if (info < 1 || info > 65535){
alert('invalid port,should be <1-65535>');
return false;
}

//can not input the mark:"'"
var testQuote=new RegExp("[']");
if (UserName.value.length > 20) {
alert('username is too long,should be less than 20 bytes ');
return false;
}
if (testQuote.test(UserName.value)==true) {
alert('username includes invalid string');
return false;
}
/*if (UserName.value == '') {
UserName.value="anonymous";
return false;
}*/
if (isValidString(UserName.value) == false ) {
msg = 'Please enter a valid user name: does not contain any special characters';
alert(msg);
return false;
}
if (PassWord.value.length > 20) {
alert('password is too long,should be less than 20 bytes ');
return false;
}
if (testQuote.test(PassWord.value)==true) {
alert('password includes invalid string');
return false;
}

if ( isValidString(PassWord.value) == false ) {
msg = 'password includes invalid string';
alert(msg);
return false;
}
var tmp = LocalPath.value;
var testpath=new RegExp("[:*?\"<>\|']");
if (tmp.length > 40)
{
alert("Local file path is too long");
return false;
}
if (tmp.indexOf("..") >= 0 || tmp == '\\' || tmp.charAt(0) == '/'
|| tmp.charAt(tmp.length-1) == '/' || testpath.test(tmp)==true)
{
msg = 'Invalid file path';
alert(msg);
return false;
}
if (DownLoadUrl.value.length > 128) {
alert('Download url is too long, should be less than 128 characters');
return false;
}
if (testQuote.test(DownLoadUrl.value)==true) {
alert('Invalid ftp url');
return false;
}
if (DownLoadUrl.value == '' || DownLoadUrl.value.substr(0,6) != "ftp://" || DownLoadUrl.value.length <= 6 ||DownLoadUrl.value.length > 512)
{
msg = 'Invalid ftp url';
alert(msg);
return false;
}
var patt1=new RegExp("^ftp://[^@ ]+/.*[^/]$");
if(patt1.test(DownLoadUrl.value)==false)
{
msg = 'Invalid ftp url';
alert(msg);
return false;
}
}
//var Form = document.ConfigForm;
//Form.Down_Flag.value = "1";
return true;
}
/////////////////////////////////////
function CheckForm()
{
return checkFtpClient();
}
///////////////////////////////////
function showPathText(val)
{
var lineLength = 8;
var content = '';
var index = 0;
var len = val.length;
while (len > lineLength)
{
content += val.substr(index,lineLength) + '<br>';
len -= lineLength;
index += lineLength;
}
content += val.substr(index);
return content;
}
////////////////////////////////////////////
//function AddSubmitParam(Form,type)
//{
//setDisable('ClDevType',1);
//setDisable('LocalPath',1);
//Form.addDiv('ftpClient','x');
//}
		var pvc_counts=<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
	
		//get all value
		// num 0
		var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_WanName = vArrayStr.split(',');
		// num 1
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 2
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_IFIndex = vArrayStr.split(',');
		// num 3
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		Wan_Actives = vArrayStr.split(',');
		// num 4		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 5		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 6		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 7		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 8		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 9		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_ENCAP = vArrayStr.split(',');
		// num 10
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 11		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 12		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 13		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 14		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 15		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 16		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 17		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 18		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 19		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 20		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 21		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 22		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 23		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_VidPRI = vArrayStr.split(',');
		// num 24		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 25	
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_McVid = vArrayStr.split(',');
		
		<% tcWebApi_constSet("WanInfo_Common", "CycleJump", "3") %>
		//num 29
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var vEntryBKName = vArrayStr.split(',');
		vEntryBKName = SortUtil.UpdateWanIFName( vEntryBKName, pvc_counts );

		Wan_WanName = SortUtil.UpdateWanIFName( Wan_WanName, pvc_counts );

		Wan_Actives = SortUtil.SortMyArray( Wan_Actives );
		Wan_IFIndex = SortUtil.SortMyArray( Wan_IFIndex );
		Wan_VidPRI = SortUtil.SortMyArray( Wan_VidPRI );
		Wan_ENCAP = SortUtil.SortMyArray( Wan_ENCAP );
		Wan_McVid = SortUtil.SortMyArray( Wan_McVid );
				
function ListCreate_iptv()
{
	for( var i=0; i<pvc_counts; i++ )
			{
				if( Wan_Actives[i] != 'N/A' )
				{
					if(vEntryBKName[i].indexOf('_INTERNET_') > -1 || vEntryBKName[i].indexOf('_OTHER_') > -1)
					{
						document.write('<tr>');
						document.write("<td><div align=center><input TYPE='checkbox' NAME='chk_" + i + "' ID='chk_" + i + "_" + Wan_IFIndex[i] + "' onclick='selectChkBox(this.id)'></div></td>");
						document.write('<td align=middle colspan=2>' + Wan_WanName[i] + '</td>');
						document.write('<td align=middle>' + Wan_VidPRI[i] + '</td>');
						if(vEntryBKName[i].indexOf('_R_') > -1)
							document.write('<td align=middle>' + Wan_ENCAP[i] + '&nbsp;</td>');
						else
							document.write('<td align=middle>-&nbsp;</td>');
						document.write('</tr>');
					}
				}
			}
}

function selectChkBox(chkId)
{
	var allElements = document.getElementsByTagName("input");
	document.getElementById(chkId).checked = true;

	for(var i = 0;i < allElements.length; i++)
	{
		if(allElements[i].type == "checkbox" && allElements[i].id != chkId)
			allElements[i].checked = false;
	}
	
	var WanIndex = chkId.split('_');
	document.IPTVForm.curSetIndex.value = WanIndex[2];

	if(Wan_McVid[WanIndex[1]] != "-")
		document.IPTVForm.McVlanID.value = Wan_McVid[WanIndex[1]];
	else
		document.IPTVForm.McVlanID.value = "";
}
</SCRIPT>

<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000 
leftMargin=0 topMargin=0 
onload="LoadFrame();DisplayLocation(getElement('Selected_Menu').value);FinishLoad()" 
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
      <TABLE height=117 cellSpacing=0 cellPadding=0 width=1008 
      background=/img/framelogo.jpg border=0 style="background-repeat:no-repeat;">
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
            value="Application->Daily Application" name=Selected_Menu> </FONT></B><SPAN 
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
          <TD id=MenuArea_L2 bgColor=#DFF5FF colSpan=2 
      height=24></TD></TR></TBODY></TABLE>
      <SCRIPT 
      language=javascript>
MakeMenu(getElById ('Selected_Menu').value);
</SCRIPT>
     </TD></TR>
  <TR>
    <TD vAlign=top>
      

      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 id="mainTableSet"  width="1008">
        <TBODY>
<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) = "Yes" then %>
        <TR>
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>Family storage</P></TD>
          <TD width=7 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
          <TD vAlign=top width=170 rowSpan=16 id='TRSpan'>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#DailyApplication" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>
              </TBODY></TABLE>　 　 　</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
         <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L2></P></TD>
         <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                      <TD> <FORM name=ConfigForm action="/cgi-bin/app-daily.asp" method="post">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD><SPAN class=Item_L2>ftp client setting</SPAN><BR><BR>
                  <DIV id=ftpClient>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD width=150>username</TD>
                      <TD><INPUT name=UserName style="WIDTH: 150px"></TD></TR>
                    <TR>
                      <TD width=150>password</TD>
                      <TD><INPUT style="WIDTH: 150px" type=password 
                        name=PassWord></TD></TR>
                    <TR>
                      <TD width=150>download url</TD>
                      <TD><INPUT style="WIDTH: 150px" value=ftp:// 
                        name=DownLoadUrl></TD></TR>
                    <TR>
                      <TD width=150>port</TD>
                      <TD><INPUT style="WIDTH: 150px" value=21 
name=Port></TD></TR>
                    <TR>
                      <TD>device</TD>
                      <TD>
  <SELECT id=ClDevType style="WIDTH: 150px" name=ClDevType>
   <SCRIPT language=JavaScript type=text/javascript>
var i;
for(i=0;i<usbvalue.length;i++)
{
var t1 =usbvalue[i].split("usb");  
var t2 =t1[1].split("_");
document.write("<option value=\""+usbvalue[i]+"\">USB"+t2[0]+"-"+t2[1]+"&nbsp;分区</option>");
}
if(usbvalue.length==0)
	document.write("<option value=\"N/A\">No USB device</option>");

</SCRIPT>  
</SELECT> </TD></TR>
                    <TR>
                      <TD width=150>Save Path</TD>
                      <TD><INPUT style="WIDTH: 150px" name=LocalPath id=LocalPath>
					  </TD></TR></TBODY></TABLE></DIV>
					<DIV id=ftpnotice><BR>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD>Note: After the download task is completed, please wait for five to ten seconds to pull out plug USB devices</TD></TR></TBODY></TABLE></DIV><BR><BR><B>In recent 10 times downloading records</B> 
<INPUT id=btnDown2 onclick=SubmitFresh() type=button value=refresh name=btnDown2> 
                  <input type="hidden" name="getUserName" value="0">
				  <input type="hidden" name="getPassWord" value="0">
				  <input type="hidden" name="getClDevType" value="0">
				  <input type="hidden" name="getLocalPath" value="0">
				  <input type="hidden" name="Down_Flag" value="0"><BR><BR>
<SCRIPT language=JavaScript type=text/javascript>
		var DownloadInfo = new Array();
		DownloadInfo[0]=new Array("", "", "", "20%", "15%", "15%", "20%", "20%", "10%","","");
		DownloadInfo[1]=new Array("","", "", "username", "password", "port", "Download URL","save path","status");
		DownloadInfo[2]=new Array("", "", "", "", "", "", "","","","");
		var i=0;
		var DownloadingCount=0;
		for(;i<DownEntry.length;i++)
		{
			DownloadInfo[i+3]=DownEntry[i];
			if(DownEntry[i][8]=="Downloading")
				DownloadingCount++;
		}
		DownloadInfo[i+3]=new Array();
		printVTable('DownloadInfo',400);

</SCRIPT>                 
<BR>
<BR>
				   
                  <CENTER><INPUT id=btnDown onclick="btnSubmit()" type=button value="download" name=btnDown> 
                  </CENTER>
                  </TD>
                <TD width=10>&nbsp;</TD></TR>
              </TBODY></TABLE>
				</FORM>
</TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
<% end if %>
<TR id="iptvTR1">
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>IPTV Settings</P></TD>
          <TD width=8 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
<% if TCWebApi_get("WebCustom_Entry","isCTUsbSupported","h" ) <> "Yes" then %>
          <TD vAlign=top width=170 rowSpan=16 id='TRSpan'>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0>
              <TBODY>
              <TR>
                <TD><A 
                  href="/cgi-bin/help_content.asp#DailyApplication" 
                  target=_blank><INPUT type=button value=Help height=34 width=40 border=0></A></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
              <TR>
                <TD valign='bottom'><IMG src='/img/tybottom.jpg' height=76 width=112></TD></TR>
<% end if %>            
                  </TBODY></TABLE></TD>
<% end if %></TR>
        <TR id="iptvTR2" vAlign=top>
          <TD vAlign=top width=157 bgColor=#DFF5FF></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
              <FORM name="IPTVForm" action="/cgi-bin/app-daily.asp" method="post">
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=20>&nbsp;</TD>
                <TD>
                  <P>You can configure WAN interface, IGMP vlan id , please choose the corresponding WAN interface for configuration.</P>
                      </TD>
              </TR>
              <TR>
              	<TD>&nbsp;</TD>
              	<TD>
              		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=1 bordercolor=#e3e3e3>
              		<TBODY>
              		<TR>
                      <TD class=table_title align=middle width=10%>&nbsp;</TD>
                      <TD class=table_title align=middle width=40% colspan=2>Interface</TD>
                      <TD class=table_title align=middle width=25%>VLAN/Priority</TD>
                      <TD class=table_title align=middle width=25%>The way to get IP</TD>
                  </TR>
                      <SCRIPT language=JavaScript type=text/javascript>
											ListCreate_iptv();
											</SCRIPT>
									<TR>
											<TD class=table_title colspan=2>IGMP VLAN ID:</TD>
											<TD colspan=3><INPUT id=McVlanID name=McVlanID style="WIDTH: 150px" value="<%if tcWebApi_get("WanInfo_WanIF","MulticastVID","h") <> "N/A" then tcWebApi_get("WanInfo_WanIF","MulticastVID","s") end if%>">(1-4094)</TD>
									</TR>
                	</TBODY>
                	</TABLE>
                </TD>
              </TR>
							<TR>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD></TR>
							<TR>
                <TD align=center colspan=2>
									<BUTTON onclick="doApply()" type="button" name=btnApply value="Apply">Apply</BUTTON>&nbsp;&nbsp;
									<BUTTON onclick="RefreshPage()" type="button" name=btnCancel value="Cancel">Cancel</BUTTON>
									<input type="hidden" name="ApplyFlag">
									<input type="hidden" name="curSetIndex" value="<% tcWebApi_get("WanInfo_Common","CurIFIndex","s") %>">
									<input type="hidden" name="OperatorStyle" value="Modify">
								</TD></TR>
								<SCRIPT language=JavaScript type=text/javascript>
									function checkVlanID()
									{
										
										VlanID = document.IPTVForm.McVlanID.value;
										if((VlanID != "") && (isNaN(VlanID) || parseInt(VlanID) > 4094 || parseInt(VlanID) < 1))
										{
											alert("Invalid Igmp VLAN ID.");
											return false;
										}
										
										var allElements = document.getElementsByTagName("input");
									
										for(var i = 0;i < allElements.length; i++)
										{
											if(allElements[i].type == "checkbox" && allElements[i].checked == true)
												return true;
										}
										
										return false;
									}
									function doApply()
									{
										if(checkVlanID() == false)
											return;
											
										document.IPTVForm.ApplyFlag.value = "1";
										document.IPTVForm.submit();
									}
									
								</SCRIPT>
              </TBODY>
        </TABLE>
        		</FORM>
					</TD></TR>
        <TR id="iptvTR3">
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
<% if tcwebApi_get("WebCustom_Entry","isHttpPortSettingSupported","h") = "Yes" then %>		
		<TR id="httpsetting1">
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>HTTP Settings</P></TD>
          <TD width=8 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
		</TR>
		  
        <TR id="httpsetting2" vAlign=top>
          <TD vAlign=top width=157 bgColor=#DFF5FF></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
              <FORM name="httpSettingForm" action="/cgi-bin/app-daily.asp" method="post">
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
			  
				<TR>
				<TD align=center colspan=2 >
				Http Port: <input type="text" name="httpPort" id="httpPort", VALUE="<%if tcWebApi_get("httpsetting_Entry", "port", "h") <> "N/A" then tcWebAPI_get("httpsetting_Entry", "port", "s") else asp_Write("") end if %>">
				</TD>
				</TR>
				
				<TR>
                <TD align=center colspan=2 height="40px">
									<BUTTON onclick="httpApply()" type="button" name=btnHttpApply value="Apply">Apply</BUTTON>&nbsp;&nbsp;
									<BUTTON onclick="RefreshPage()" type="button" name=btnHttpCancel value="Cancel">Cancel</BUTTON>
									<input type="hidden" name="httpApplyFlag">
								</TD></TR>
								<SCRIPT language=JavaScript type=text/javascript>
									function httpApply()
									{
										var new_port = getValue('httpPort');
										
										if(!isInteger(getValue('httpPort')))
										{
											alert('The number of http port should be integer.');
											return;
										}
										if(parseInt(new_port) < 1024 && parseInt(new_port) != 80)
										{
											alert('The number of http port should not less than 1024.');
											return;										
										}
										
										if(false == confirm("Are you sure to change to the http port " + new_port +" ?"))
											return;

										document.httpSettingForm.httpApplyFlag.value = "1";
										document.httpSettingForm.submit();
									}
									
								</SCRIPT>
              </TBODY>
        </TABLE>
        		</FORM>
					</TD></TR>
					
        <TR id="httpsetting3">
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
         <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
<% end if %>
		  
<% if tcwebApi_get("WebCustom_Entry","isSSHSupported","h") = "Yes" then %>
		<TR id="sshsetting1">
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>SSH Settings</P></TD>
          <TD width=8 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
		</TR>
		  
        <TR id="sshsetting2" vAlign=top>
          <TD vAlign=top width=157 bgColor=#DFF5FF></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
              <FORM name="sshSettingForm" action="/cgi-bin/app-daily.asp" method="post">
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
			  
				<TR>
				<TD align=center colspan=2> 
				Ssh Enable: <input type="checkbox" name="sshEnable" id="sshEnable"  <%if tcWebApi_get("ssh_Entry","enable","h") = "Yes" then asp_Write("checked") end if%>>
				</TD>
				</TR>
				<BR>
				
			
				<TR>
                <TD align=center colspan=2 height="40px">
									<BUTTON onclick="sshApply()" type="button" name=btnSshApply value="Apply">Apply</BUTTON>&nbsp;&nbsp;
									<BUTTON onclick="RefreshPage()" type="button" name=btnSshCancel value="Cancel">Cancel</BUTTON>
									<input type="hidden" name="sshApplyFlag">
									<input type="hidden", name="sshEnableValue", id="sshenableVale">
								</TD></TR>
								<SCRIPT language=JavaScript type=text/javascript>
									function sshApply()
									{

										document.sshSettingForm.sshApplyFlag.value = "1";
										
										if(document.sshSettingForm.sshEnable.checked)
											document.sshSettingForm.sshEnableValue.value = "Yes";
										else
											document.sshSettingForm.sshEnableValue.value = "No";
											
										document.sshSettingForm.submit();
									}
									
								</SCRIPT>
              </TBODY>
        </TABLE>
        		</FORM>
					</TD></TR>
					
        <TR id="sshsetting3">
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
         <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>		  
<%end if %>

<% if tcwebApi_get("WebCustom_Entry","isTelnetSettingSupported","h") = "Yes" then %>
		<TR id="telnetsetting1">
          <TD width=157 bgColor=#DFF5FF height=30>
            <P class=Item_L1>Telnet Settings</P></TD>
          <TD width=8 bgColor=#FFFFFF>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
		</TR>
		  
        <TR id="telnetsetting2" vAlign=top>
          <TD vAlign=top width=157 bgColor=#DFF5FF></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
              <FORM name="telnetSettingForm" action="/cgi-bin/app-daily.asp" method="post">
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
				<TR>
			  

				<TR>
				<TD align=center colspan=2 >
				Telnet Enable: <input type="checkbox" name="telnetEnable" id="telnetEnable" <%if tcWebApi_get("Account_TelnetEntry","Active","h") = "Yes" then asp_Write("checked") end if%>>
				</TD>
				</TR>
				<BR>
				
			
				<TR>
                <TD align=center colspan=2 height="40px" >
									<BUTTON onclick="telnetApply()" type="button" name=btnTelnetApply value="Apply">Apply</BUTTON>&nbsp;&nbsp;
									<BUTTON onclick="RefreshPage()" type="button" name=btnTelnetCancel value="Cancel">Cancel</BUTTON>
									<input type="hidden" name="telnetApplyFlag">
									<input type="hidden", name="telnetEnableValue", id="telnetEnableValue">
								</TD></TR>
								<SCRIPT language=JavaScript type=text/javascript>
									function telnetApply()
									{

										document.telnetSettingForm.telnetApplyFlag.value = "1";
										
										if(document.telnetSettingForm.telnetEnable.checked)
											document.telnetSettingForm.telnetEnableValue.value = "Yes";
										else
											document.telnetSettingForm.telnetEnableValue.value = "No";
											
										document.telnetSettingForm.submit();
									}
									
								</SCRIPT>
              </TBODY>
        </TABLE>
        		</FORM>
					</TD></TR>
					
        <TR id="telnetsetting3" vAlign=top>
          <TD vAlign=top width=157 bgColor=#DFF5FF></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
              <FORM name="telnetPasswordForm" action="/cgi-bin/app-daily.asp" method="post">
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
		  
			<TR>
				<TD align=right height="30px" width="50%" >
				New Password:&nbsp;
				</TD>
				<TD>
				<INPUT id="newTelPassword" style="WIDTH: 140px; FONT-FAMILY: Arial" type="password" name="newTelPassword" size="20">
				</TD></TR>
				
			  <TR>
				<TD align=right height="30px" >
					Confirm Password:&nbsp;
				</TD>
				<TD>
				<INPUT id="cfmTelPassword" style="WIDTH: 140px; FONT-FAMILY: Arial" type="password" name="cfmTelPassword" size="20"></TD>
			  </TR>
				<BR>
				<BR>
					
				<TR>
                <TD align=center colspan=2 height="40px">
									<BUTTON onclick="PasswordApply()" type="button" name=btnTelnetPasswdApply value="Apply">change passwd</BUTTON>&nbsp;&nbsp;
									<BUTTON onclick="RefreshPage()" type="button" name=btnTelnetPasswdCancel value="Cancel">Cancel</BUTTON>
									<input type="hidden" name="PasswordApplyFlag" id="PasswordApplyFlag">
								</TD></TR>
								<SCRIPT language=JavaScript type=text/javascript>
									function CheckForm()
									{
										if(document.telnetPasswordForm.newTelPassword.value.length > 16)
										{
											alert("New password can not be longer than 16 characters ！");
											return false;
										}
										if (document.telnetPasswordForm.newTelPassword.value == "")
										{
											alert("New password can not be empty!");
											return false;
										}
										if (document.telnetPasswordForm.cfmTelPassword.value != document.telnetPasswordForm.newTelPassword.value)
										{
											alert("Confirm password do not match!");
											return false;
										}else
										{
											  var arr = new Array();
											  arr = document.telnetPasswordForm.newTelPassword.value.split(" ");

											  if(arr.length != 1)
											  {
													alert("passwd has space!\n");
													return false;
											  }
										}
										return true;
									}
									function PasswordApply()
									{
										if (CheckForm())
										{
											document.telnetPasswordForm.PasswordApplyFlag.value = "1";
											document.telnetPasswordForm.submit();
										}
									}
									
								</SCRIPT>
              </TBODY>
        </TABLE>
        		</FORM>
					</TD></TR>
					
        <TR id="telnetsetting4">
          <TD vAlign=top width=157 bgColor=#DFF5FF height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>

<% end if %>		  
		  
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
		  <!-- InstanceEndEditable --></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
