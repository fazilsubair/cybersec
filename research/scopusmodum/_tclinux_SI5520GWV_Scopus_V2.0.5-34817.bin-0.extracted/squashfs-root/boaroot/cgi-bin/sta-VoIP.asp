<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
    
    <HEAD>
        <TITLE>
            VoIP Information
        </TITLE>
        <META http-equiv=Content-Language content=zh-cn>
        <META content="MSHTML 6.00.6000.16809" name=GENERATOR>
        <META http-equiv=Content-Type content="text/html; charset=UTF-8">
        <LINK href="/JS/stylemain.css" type=text/css rel=stylesheet>
        <SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>
        <SCRIPT language=javascript src="/JS/util.js"></SCRIPT>
        <SCRIPT language=JavaScript src="/JS/printtable.js"></SCRIPT>
        <SCRIPT language=JavaScript type=text/javascript>
	<% if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "H.248"  then %>
		location.replace("/cgi-bin/sta-VoIP248.asp");
	<% end if %>
          function VoipInfoClass()
          {
              this.Reg1Status = '<%if tcWebAPI_get("InfoVoIP_Entry0", "Status", "h") <> "N/A" then tcWebAPI_get("InfoVoIP_Entry0", "Status", "s") else asp_Write("") end if %>';
              this.Line1Status = '<%if tcWebApi_get("VoIPSysParam_Entry0", "SC_LINE_INFO_STATUS", "h") <> "N/A" then tcWebAPI_get("VoIPSysParam_Entry0", "SC_LINE_INFO_STATUS", "s") else asp_Write("") end if %>';
              <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
              this.Reg2Status = '<%if tcWebAPI_get("InfoVoIP_Entry1", "Status", "h") <> "N/A" then tcWebAPI_get("InfoVoIP_Entry1", "Status", "s") else asp_Write("") end if %>';
              this.Line2Status = '<%if tcWebApi_get("VoIPSysParam_Entry1", "SC_LINE_INFO_STATUS", "h") <> "N/A" then tcWebAPI_get("VoIPSysParam_Entry1", "SC_LINE_INFO_STATUS", "s") else asp_Write("") end if %>';
              <% end if %>
              var line1number='<%if tcWebApi_get("VoIPBasic_Common","SIPProtocol", "h") = "SIP" then asp_Write("") elseif tcWebAPI_get("VoIPBasic_Entry0", "SIPDisplayName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "SIPDisplayName", "s") else asp_Write("") end if %>';
              if(line1number == ''){
              	var tmp='<%if tcWebAPI_get("VoIPBasic_Entry0", "SIPAuthenticationName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "SIPAuthenticationName", "s") else asp_Write("") end if %>';
               	if(tmp.indexOf('@') >= 0)
               	line1number=tmp.substr(0,tmp.indexOf('@'));
               	else
               		line1number=tmp;
              }
              this.Line1Number = line1number;

              <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
              var line2number = '<%if tcWebApi_get("VoIPBasic_Common","SIPProtocol", "h") = "SIP" then asp_Write("") elseif tcWebAPI_get("VoIPBasic_Entry1", "SIPDisplayName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "SIPDisplayName", "s") else asp_Write("") end if %>';
              if(line2number == ''){
              	var tmp2='<%if tcWebAPI_get("VoIPBasic_Entry1", "SIPAuthenticationName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "SIPAuthenticationName", "s") else asp_Write("") end if %>';
              	if(tmp2.indexOf('@') >= 0)
              	line2number=tmp2.substr(0,tmp2.indexOf('@'));
              	else
              		line2number=tmp2;
              }
              this.Line2Number = line2number;
              <% end if %> 
              this.showRegisterState = showRegisterState;
              this.showVoipNumber = showVoipNumber;
              this.showLineState = showLineState;
          }

          function showRegisterState(port)
          {
          	var Status = '';
          	var LineEnable='';

          	if ( 1 == port ){
          		Status = this.Reg1Status;
          		LineEnable = '<%if tcWebAPI_get("VoIPBasic_Entry0", "Enable", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "Enable", "s") else asp_Write("") end if %>';
          		RegFailReason = "<% tcWebAPI_get("InfoVoIP_Entry0", "RegFailReason", "s") %>";

          	}
          	<% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
          	else if ( 2 == port ){
          		Status = this.Reg2Status;
          		LineEnable = '<%if tcWebAPI_get("VoIPBasic_Entry1", "Enable", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "Enable", "s") else asp_Write("") end if %>';
          		RegFailReason = "<% tcWebAPI_get("InfoVoIP_Entry1", "RegFailReason", "s") %>";
          	}
          	<% end if %>
          	else
          		return;
						if(LineEnable == 'No'){
							document.write('Disable');
							return;
						}
						if ( Status == 'Up' )
							document.write('Registered');
						else if ( Status == 'Initializing' )
							document.write('Initializing');
						else if ( Status == 'Registering' )
							document.write('Registering');
						else if ( Status == 'Unregistering' )
							document.write('Unregistered');
						else if ( Status == 'Quiescent' )
							document.write('Stopped');
						else if ( Status == 'Disabled' )
							document.write('Disabled');
						else if ( Status == 'Error' ){
							switch ( parseInt(RegFailReason) ){
								case 2:
								case 3:
									voiptatus = 'Network(SBC) unreachable';
									break;
								case 4:
									voiptatus = 'Authentication failed';
									break;
								case 6:
									voiptatus = 'Business channel exception';
									break;  
								default:
									voiptatus = 'error';
									break;
							}
							document.write(voiptatus);	
							}							
						else if ( Status == 'Testing' )
							document.write('Testing');
						else
							document.write('--');
          }
          
          function showVoipNumber(port)
          {
          	var Number = '';
          	var DigNum = '';
          	var k;

          	if ( 1 == port )
          		Number = this.Line1Number
          	<% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
          	else if ( 2 == port )
          		Number = this.Line2Number
          	<% end if %>
          	else
          		return;

          	k = Number.split('@');
          	DigNum = k[0];

          	document.write(DigNum);
          }
          
          function showLineState(port)
          {
          	var lineStatus = '';

          	if ( 1 == port ){
          		lineStatus = this.Line1Status;
          	}
          	<% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
          	else if ( 2 == port ){
          		lineStatus = this.Line2Status;	
          	}
          	<% end if %>
          	else
          		return;
          	if ( lineStatus == 'Idle' )
	          	document.write('Idle');
          	else if ( lineStatus == 'Ringing' )
	          	document.write('Ringing');
          	else if ( lineStatus == 'Dialing' )
	          	document.write('Dialing');
          	else if ( lineStatus == 'Ringback' )
	          	document.write('Ringback');
          	else if ( lineStatus == 'Connect' )
	          	document.write('Connected');
          	else if ( lineStatus == 'Disconnect' )
	          	document.write('Disconnected');	
          	else
	          	document.write('--');
          }
          
          var VoipInfo = new VoipInfoClass();
        </SCRIPT>
    </HEAD>
    
    <BODY style="TEXT-ALIGN: center" vLink=#000000 aLink=#000000 link=#000000
    leftMargin=0 topMargin=0 onload="DisplayLocation(getElement('Selected_Menu').value);FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()"
    onunload=DoUnload() marginheight="0" marginwidth="0">
        <TABLE height="100%" cellSpacing=0 cellPadding=0 width=1008 align=center
        border=0>
            <TBODY>
                <TR>
                    <TD height=1>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") = "Yes" then %>
                        <TABLE height=80 cellSpacing=0 cellPadding=0 width=1008 background=/img/framelogo.jpg style="background-repeat:no-repeat;"
                        border=0>
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
                                    <TD>
                                        &nbsp;
                                    </TD>
                                    <TD vAlign=bottom align=right width=358>
                                        <TABLE id=table8 cellSpacing=0 cellPadding=0 border=0>
                                            <TBODY>
                                                <TR>
                                                    <TD vAlign=bottom align=right>
                                                        <SPAN class=curUserName>
                                                            &nbsp;
                                                        </SPAN>
                                                    </TD>
                                                    <TD class=welcom vAlign=bottom align=middle width=120>
                                                        Welcome!
                                                    </TD>
                                                    <TD vAlign=bottom width=50>
                                                        <A onclick=DoLogout() href="/cgi-bin/logout.cgi" target=_top>
                                                            <SPAN class=logout>
                                                                Logout
                                                            </SPAN>
                                                        </A>
                                                    </TD>
                                                </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                            </TBODY>
                        </TABLE>
                        <TABLE id=table2 height=100 cellSpacing=0 cellPadding=0 width=1008 border=0>
                            <TBODY>
                                <TR>
                                    <TD class=LocationDisplay id=LocationDisplay align=middle width=157 bgColor=#6acafc
                                    rowSpan=3>
                                    </TD>
                                    <TD width=673 bgColor=#6acafc height=33>
                                        <P align=right>
                                            <FONT face="Arial" color=#ffffff>
                                                <B>
                                                    <FONT face="Arial" color=#ffffff size=6>
                                                        <INPUT id=Selected_Menu type=hidden value="Status->VoIP" name=Selected_Menu>
                                                    </FONT>
                                                </B>
                                                <SPAN class=GatewayName>
                                                    Gateway Name:
                                                    <SCRIPT language=javascript>
                                                        document.write(top.gateWayName);
                                                    </SCRIPT>
                                                </SPAN>
                                            </FONT>
                                        </P>
                                    </TD>
                                    <TD width=170 bgColor=#6acafc height=33>
                                        <P class=GatewayType align=center>
                                            Model:
                                            <SCRIPT language=javascript>
                                                document.write(top.ModelName);
                                            </SCRIPT>
                                        </P>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD id=MenuArea_L1 vAlign=bottom bgColor=#6acafc colSpan=2 height=43>
                                        &nbsp;
                                    </TD>
                                </TR>
                                <TR>
                                    <TD id=MenuArea_L2 bgColor=#dff5ff colSpan=2 height=24>
                                    </TD>
                                </TR>
                            </TBODY>
                        </TABLE>
                        <SCRIPT language=javascript>
                            MakeMenu(getElById('Selected_Menu').value);
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
                                    <TD class=Item_L1 width=157 bgColor=#dff5ff height=30>
                                        <P>
                                            VoIP Information
                                        </P>
                                    </TD>
                                    <TD width=7 bgColor=#ffffff>
                                        &nbsp;
                                    </TD>
                                    <TD width=674>
                                        &nbsp;
                                    </TD>
                                    <TD vAlign=top width=170 rowSpan=4>
                                        <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
                                            <TBODY>
                                                <TR>
                                                    <TD valign='top'>
                                                        <A href="/cgi-bin/help_content.asp#VoIPStatus" target=_blank>
                                                            <INPUT type=button value=Help height=34 width=40 border=0>
                                                        </A>
                                                    </TD>
                                                </TR>
<% if tcwebApi_get("WebCustom_Entry","isWebTYLOGOSupported","h") = "Yes" then %>
                                                <TR>
                                                    <TD valign='bottom'>
                                                        <IMG src='/img/tybottom.jpg' height=76 width=112>
                                                    </TD>
                                                </TR>
<% end if %>
                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD vAlign=top width=157 bgColor=#dff5ff height=10>
                                    </TD>
                                     <TD width=7 bgColor=#ffffff border=0></TD>
                                    <TD>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD class=Item_L2 vAlign=top width=157 bgColor=#dff5ff height=30>
                                        <P>
                                        </P>
                                    </TD>
                                     <TD width=7 bgColor=#ffffff border=0></TD>
                                    <TD>
                                        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                                            <TBODY>
                                                <TR>
                                                    <TD width=10>
                                                        &nbsp;
                                                    </TD>
                                                    <TD>
                                                        <TABLE cellSpacing=0 cellPadding=3 width="100%" border=1 bordercolor=#e3e3e3>
                                                              <TBODY>
                                                                  <TR>
                                                                      <TD class=table_title width="30%">
                                                                          Name
                                                                      </TD>
                                                                      <TD class=table_title width="35%">
                                                                          Line1
                                                                      </TD>
                                                                      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
                                                                      <TD class=table_title width="35%">
                                                                          Line2
                                                                      </TD>
                                                                      <% end if %>
                                                                  </TR>
                                                                  <TR>
                                                                      <TD class=table_title>
                                                                          Register server
                                                                      </TD>
                                                                      <TD>
                                                                          <%if tcWebApi_get("VoIPBasic_Common", "RegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServer", "s") else asp_Write("--") end if %>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
                                                                      <TD>
                                                                          <%if tcWebApi_get("VoIPBasic_Common", "RegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServer", "s") else asp_Write("--") end if %>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% end if %>
                                                                  </TR>
                                                                  <TR>
                                                                      <TD class=table_title>
                                                                          Register server port
                                                                      </TD>
                                                                      <TD>
                                                                          <%if tcWebApi_get("VoIPBasic_Common", "RegistrarServerPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServerPort", "s") else asp_Write("--") end if %>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
                                                                      <TD>
                                                                          <%if tcWebApi_get("VoIPBasic_Common", "RegistrarServerPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServerPort", "s") else asp_Write("--") end if %>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% end if %>
                                                                  </TR>          
                                                                  <TR>
                                                                      <TD class=table_title>
                                                                          SB Register Server
                                                                      </TD>
                                                                      <TD>
                                                                          <%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServer", "s") else asp_Write("--") end if %>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
                                                                      <TD>
                                                                          <%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServer", "s") else asp_Write("--") end if %>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% end if %>
                                                                  </TR>
                                                                  <TR>
                                                                      <TD class=table_title>
                                                                          SB Register Server Port
                                                                      </TD>
                                                                      <TD>
                                                                          <%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServerPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServerPort", "s") else asp_Write("--") end if %>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
                                                                      <TD>
                                                                          <%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServerPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServerPort", "s") else asp_Write("--") end if %>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% end if %>
                                                                  </TR>       
                                                                  <TR>
                                                                      <TD class=table_title>
                                                                          Phone Number
                                                                      </TD>
                                                                      <TD>
                                                                          <script language=JavaScript type=text/javascript>
                                                                          VoipInfo.showVoipNumber(1);
                                                                          </script>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
                                                                      <TD>
                                                                          <script language=JavaScript type=text/javascript>
                                                                          VoipInfo.showVoipNumber(2);
                                                                          </script>
                                                                          &nbsp;
                                                                     	</TD>
                                                                     	<% end if %>
                                                                  </TR>    
                                                                  <TR>
                                                                      <TD class=table_title>
                                                                          Register Status
                                                                      </TD>
                                                                      <TD>
                                                                          <script language=JavaScript type=text/javascript>
                                                                          VoipInfo.showRegisterState(1);
                                                                          </script>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
                                                                      <TD>
                                                                          <script language=JavaScript type=text/javascript>
                                                                          VoipInfo.showRegisterState(2);
                                                                          </script>
                                                                          &nbsp;
                                                                     	</TD>
                                                                     	<% end if %>
                                                                  </TR>
                                                                  <TR>
                                                                      <TD class=table_title>
                                                                          Line Status
                                                                      </TD>
                                                                      <TD>
                                                                          <script language=JavaScript type=text/javascript>
                                                                          VoipInfo.showLineState(1);
                                                                          </script>
                                                                          &nbsp;
                                                                      </TD>
                                                                      <% if tcwebApi_get("VoIPBasic_Common","VoIPLine2Enable","h") = "Yes" then %>
                                                                      <TD>
                                                                          <script language=JavaScript type=text/javascript>
                                                                          VoipInfo.showLineState(2);
                                                                          </script>
                                                                          &nbsp;
                                                                     	</TD>
                                                                      <% end if %>
                                                                  </TR> 
                                                              </TBODY>
                                                          </TABLE>
                                                    </TD>
                                                    <TD width=10>
                                                        &nbsp;
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD width=10>
                                                        &nbsp;
                                                    </TD>
                                                    <TD>
                                                    </TD>
                                                    <TD width=10>
                                                        &nbsp;
                                                    </TD>
                                                </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD vAlign=top width=157 bgColor=#dff5ff>
                                     <TD width=7 bgColor=#ffffff border=0></TD>
                                    </TD>
                                    <TD>
                                    </TD>
                                </TR>                                
                            </TBODY>
                        </TABLE>
                    </TD>
                </TR>
                <TR>
                    <TD height=1>
                        <TABLE id=table7 height=35 cellSpacing=0 cellPadding=0 width=1008 border=0>
                            <TBODY>
                                <TR>
                                    <TD width=157 bgColor=#dff5ff>
                                        &nbsp;
                                    </TD>
									<TD width=7 bgColor=#ffffff border=0></TD>
                                    <TD width=280 bgColor=#ffffff>
                                        &nbsp;
                                    </TD>
                                    <TD width=393 bgColor=#ffffff>
                                        <P align=center>
                                        </P>
                                    </TD>
                                    <TD width=169>
                                        &nbsp;
                                    </TD>
                                </TR>
                            </TBODY>
                        </TABLE>
                    </TD>
                </TR>
            </TBODY>
        </TABLE>
    </BODY>

</HTML>
