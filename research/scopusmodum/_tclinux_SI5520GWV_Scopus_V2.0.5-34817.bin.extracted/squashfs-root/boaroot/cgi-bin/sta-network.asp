<%
if Request_Form("manual_commitflag") = "1" then
	TCWebApi_set("TVCable_Entry","RFSwitch", "rfswitch_val")
	TCWebApi_commit("TVCable_Entry")
  TCWebApi_save();
end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>WAN Informartion</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/JS/menu.js"></SCRIPT>

<SCRIPT language=javascript src="/JS/util.js"></SCRIPT>


<% if tcwebApi_get("WebCustom_Entry","isSVGSupported","h")  = "Yes" then %>
<script  language=javascript src="/JS/xhr.js"></script>
<% end if %>

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
            value="Status->WAN" name=Selected_Menu> </FONT></B><SPAN 
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
      <SCRIPT language=JavaScript src="/JS/printtable.js"></SCRIPT>

      <SCRIPT language=JavaScript type=text/javascript>
	 	var userState = 1;
	 	if (curUserName == sptUserName)
			userState = 0;
	 	var para = 0;
		var pvc_counts=<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
<% if tcwebApi_get("WebCustom_Entry","isCTSFUC9Supported","h") = "Yes" then %>		
		pvc_counts = 1;
<% end if %>
		//get all value
		// num 0
		var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_WanName = vArrayStr.split(',');
		// num 1
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_WanValue = vArrayStr.split(',');
		// num 2
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 3
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		Wan_Actives = vArrayStr.split(',');
		// num 4		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var WANEnNAT = vArrayStr.split(',');
		// num 5		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 6		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_IPVERSION = vArrayStr.split(',');
		// num 7		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_Status4 = vArrayStr.split(',');
		// num 8		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_IP4 = vArrayStr.split(',');
		// num 9		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_ENCAP = vArrayStr.split(',');
		// num 10		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_GateWay4 = vArrayStr.split(',');
		// num 11		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_DNS4 = vArrayStr.split(',');
		// num 12		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_SecDNS4 = vArrayStr.split(',');
		// num 13		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_Status6 = vArrayStr.split(',');
		// num 14		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_IP6 = vArrayStr.split(',');
		// num 15		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_GateWay6 = vArrayStr.split(',');
		// num 16		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_DNS6 = vArrayStr.split(',');
		// num 17		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_SecDNS6 = vArrayStr.split(',');
		// num 18		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_PD6 = vArrayStr.split(',');
		// num 19		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_NetMask4 = vArrayStr.split(',');
		// num 20		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 21		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 22		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_Connection = vArrayStr.split(',');
		// num 23		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_VidPRI = vArrayStr.split(',');
		// num 24		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_MAC = vArrayStr.split(',');
<% if tcwebApi_get("WebCustom_Entry","isShowCPUMemTime","h") = "Yes" then %>
		// num 25
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 26
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 27
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_ConnTime = vArrayStr.split(',');
		//alert(Wan_ConnTime[1]);
<% end if %>
		SortUtil.SetReplaceStrflag(1);
		Wan_WanName = SortUtil.UpdateWanIFName( Wan_WanName, pvc_counts );

		Wan_Actives = SortUtil.SortMyArray( Wan_Actives );
		Wan_IPVERSION = SortUtil.SortMyArray( Wan_IPVERSION );
		Wan_Status4 = SortUtil.SortMyArray( Wan_Status4 );
		Wan_IP4 = SortUtil.SortMyArray( Wan_IP4 );
		Wan_ENCAP = SortUtil.SortMyArray( Wan_ENCAP );
		Wan_GateWay4 = SortUtil.SortMyArray( Wan_GateWay4 );
		Wan_DNS4 = SortUtil.SortMyArray( Wan_DNS4 );
		Wan_SecDNS4 = SortUtil.SortMyArray( Wan_SecDNS4 );
		Wan_Status6 = SortUtil.SortMyArray( Wan_Status6 );
		Wan_IP6 = SortUtil.SortMyArray( Wan_IP6 );
		Wan_GateWay6 = SortUtil.SortMyArray( Wan_GateWay6 );
		Wan_DNS6 = SortUtil.SortMyArray( Wan_DNS6 );
		Wan_SecDNS6 = SortUtil.SortMyArray( Wan_SecDNS6 );
		Wan_PD6 = SortUtil.SortMyArray( Wan_PD6 );
		Wan_NetMask4 = SortUtil.SortMyArray( Wan_NetMask4 );
		Wan_Connection = SortUtil.SortMyArray( Wan_Connection );
		Wan_VidPRI = SortUtil.SortMyArray( Wan_VidPRI );
		Wan_MAC = SortUtil.SortMyArray( Wan_MAC );
<% if tcwebApi_get("WebCustom_Entry","isShowCPUMemTime","h") = "Yes" then %>
		Wan_ConnTime = SortUtil.SortMyArray( Wan_ConnTime );
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isSVGSupported","h")  = "Yes" then %>
		var bwxhr = new XHR();
    	var G;
    	var svg;
    	var TIME = 0;
    	var RXB  = 1;
    	var RXP  = 2;
    	var TXB  = 3;
    	var TXP  = 4;

    	var width  = 700;
    	var height = 300;
    	var step   = 5;

    	var data_wanted = Math.floor(width / step);
    	var data_fill   = 0;
    	var data_stamp  = 0;

    	var data_rx = [ ];
    	var data_tx = [ ];

    	var line_rx;
    	var line_tx;

    	var text_25;
    	var text_50;
    	var text_75;

    	var label_rx_cur;
    	var label_rx_avg;
    	var label_rx_peak;

    	var label_tx_cur;
    	var label_tx_avg;
    	var label_tx_peak;
		
    	var label_scale;
		var objstring=new String();
		var data_max   = 0;
		var text = document.createElementNS('http://www.w3.org/2000/svg', 'text');
		function bandwidth_label(bytes, br)
    	{
			var tmp;
    		var uby = 'KByte';
    		var kby = (bytes / 1024);

    		if (kby >= 1024)
    		{
    			uby = 'MByte';
    			kby = kby / 1024;
    		}

    		var ubi = 'KBit';
    		var kbi = (bytes * 8 / 1024);

    		if (kbi >= 1024)
    		{
    			ubi = 'MBit';
    			kbi = kbi / 1024;
    		}

		tmp=objstring.concat(kbi.toFixed(4), ubi,"/s",(br ? '<br />' : ' '),"(",kby.toFixed(4), uby,"/s)");


    	return tmp;
    	}

    	function update_graph()
    	{
				console.log("...data_max="+data_max);
			data_max=0;
    		bwxhr.get('/cgi-bin/traffic.cgi', null,
    			function(x, data)
    			{
    				
    				var data_scale = 0;

    				var data_rx_avg = 0;
    				var data_tx_avg = 0;

    				var data_rx_peak = 0;
    				var data_tx_peak = 0;
    				for (var i = data_stamp ? 0 : 1; i < data.length; i++)
    				{

    					if (data[i][TIME] <= data_stamp)
    						continue;


    					//。两个时间数据之间的差值
    					var time_delta = data[i][TIME] - data[i-1][TIME];
    					if (time_delta)
    					{
    						data_rx.push((data[i][RXB] - data[i-1][RXB]) / time_delta);
    						data_tx.push((data[i][TXB] - data[i-1][TXB]) / time_delta);
    					}
    				}


    				//从数组中截取data_rx.length 0~data_rx.length - data_wanted
    				data_rx = data_rx.slice(data_rx.length - data_wanted, data_rx.length);
    				data_tx = data_tx.slice(data_tx.length - data_wanted, data_tx.length);




    				//寻找这组数据的最大值
    				for (var i = 0; i < data_rx.length; i++)
    				{
	
    					data_max = Math.max(data_max, data_rx[i]);
    				//	data_max = Math.max(data_max, data_tx[i]);
						
    					data_rx_peak = Math.max(data_rx_peak, data_rx[i]);
    					data_tx_peak = Math.max(data_tx_peak, data_tx[i]);

    					if (i > 0)
    					{
    						data_rx_avg = (data_rx_avg + data_rx[i]) / 2;
    						data_tx_avg = (data_tx_avg + data_tx[i]) / 2;
    					}
    					else
    					{
    						data_rx_avg = data_rx[i];
    						data_tx_avg = data_tx[i];
    					}
    				}


    				//最后一组时间数据
    				data_stamp = data[data.length-1][TIME];
    				data_scale = height / (data_max * 1.1);



    				var pt_rx = '0,' + height;
    				var pt_tx = '0,' + height;

    				var y_rx = 0;
    				var y_tx = 0;
					
    				for (var i = 0; i < data_rx.length; i++)
    				{

    					var x = i * step * 2;

    					y_rx = height - Math.floor(data_rx[i] * data_scale);
    					y_tx = height - Math.floor(data_tx[i] * data_scale);

    					pt_rx += ' ' + x + ',' + y_rx;
    					pt_tx += ' ' + x + ',' + y_tx;
    				}



    				pt_rx += ' ' + width + ',' + y_rx + ' ' + width + ',' + height;
    				pt_tx += ' ' + width + ',' + y_tx + ' ' + width + ',' + height;


    				line_rx.setAttribute('points', pt_rx);
    				line_tx.setAttribute('points', pt_tx);
					
					
					
					/*
					var text= document.createElementNS('http://www.w3.org/2000/svg', 'text');
					text.setAttribute('x',  15);
					text.setAttribute('y', 75);
					text.setAttribute('textLength', 175);
					text.setAttribute('style', 'fill:#999999; font-size:9pt');
					text.appendChild(document.createTextNode( bandwidth_label(1.1 * 0.5 * data_max)));
					text_75.parentNode.appendChild(text);
					*/
					var textNode=document.createTextNode( bandwidth_label(1.1 * 0.75 * data_max));
					var L75Node=getElementById("label_75");
					var childs75 = L75Node.childNodes;
					for(var i=0;i<childs75.length;i++)
					{
						L75Node.removeChild(childs75[i]);
					}
					text_75.appendChild(textNode);
	
					var textNode=document.createTextNode( bandwidth_label(1.1 * 0.5 * data_max));
					var L50Node=getElementById("label_50");
					var childs50 = L50Node.childNodes;
					for(var i=0;i<childs50.length;i++)
					{
						L50Node.removeChild(childs50[i]);
					}
					text_50.appendChild(textNode);
					
					
					var textNode=document.createTextNode( bandwidth_label(1.1 * 0.25 * data_max));
					var L25Node=getElementById("label_25");
					var childs25 = L25Node.childNodes;
					for(var i=0;i<childs25.length;i++)
					{
						L25Node.removeChild(childs25[i]);
					}
					text_25.appendChild(textNode);

					//显示下面数据值
					
    				label_rx_cur.innerHTML = bandwidth_label(data_rx[data_rx.length-1], true);
    				label_tx_cur.innerHTML = bandwidth_label(data_tx[data_tx.length-1], true);

    				label_rx_avg.innerHTML = bandwidth_label(data_rx_avg, true);
    				label_tx_avg.innerHTML = bandwidth_label(data_tx_avg, true);
				
    			    label_rx_peak.innerHTML = bandwidth_label(data_rx_peak, true);
    				label_tx_peak.innerHTML = bandwidth_label(data_tx_peak, true);
				
    				window.setTimeout(update_graph, 1000);

    			}
    		)
    	}

		
<% end if %>
		function LoadFrame()
		{
		<% if tcwebApi_get("WebCustom_Entry","isSVGSupported","h")  = "Yes" then %>
			var svg = document.getElementById('bwsvg');
			var line_25=document.createElementNS("http://www.w3.org/2000/svg","line");
		  //水平线25%
			if(line_25)
    		{
    			line_25.setAttribute('x1',0);
    			line_25.setAttribute('y1',"25%");
    			line_25.setAttribute('x2',"100%");
    			line_25.setAttribute('y2',"25%");
    			line_25.setAttribute("style","stroke:black;stroke-width:0.1");
    			svg.appendChild(line_25);
    		}
			 text_25=document.createElementNS("http://www.w3.org/2000/svg","text");
			if(text_25)
			{
				text_25.setAttribute('x',15);
    			text_25.setAttribute('y',"75%");
				text_25.setAttribute("id","label_25");
				text_25.setAttribute("style","fill:black; font-size:9pt");
				svg.appendChild(text_25);
			
			}
		     //水平线50%
			var line_50=document.createElementNS("http://www.w3.org/2000/svg","line");

			if(line_50)
    		{
    			line_50.setAttribute('x1',0);
    			line_50.setAttribute('y1',"50%");
    			line_50.setAttribute('x2',"100%");
    			line_50.setAttribute('y2',"50%");
    			line_50.setAttribute("style","stroke:black;stroke-width:0.1");
    			svg.appendChild(line_50);
    		}
			text_50=document.createElementNS("http://www.w3.org/2000/svg","text");
			if(text_50)
			{
				text_50.setAttribute('x',15);
    			text_50.setAttribute('y',"50%");
				text_50.setAttribute("id","label_50");
				text_50.setAttribute("style","fill:black; font-size:9pt");
				svg.appendChild(text_50);
			
			}
			    //水平线75%
			var line_75=document.createElementNS("http://www.w3.org/2000/svg","line");

			if(line_75)
    		{
    			line_75.setAttribute('x1',0);
    			line_75.setAttribute('y1',"75%");
    			line_75.setAttribute('x2',"100%");
    			line_75.setAttribute('y2',"75%");
    			line_75.setAttribute("style","stroke:black;stroke-width:0.1");
    			svg.appendChild(line_75);
    		}
			
			
			 text_75=document.createElementNS("http://www.w3.org/2000/svg","text");
			if(text_75)
			{
				text_75.setAttribute('x',15);
    			text_75.setAttribute('y',"25%");
				text_75.setAttribute("id","label_75");
				text_75.setAttribute("style","fill:black; font-size:9pt");
				svg.appendChild(text_75);
			
			}
			 text_v=document.createElementNS("http://www.w3.org/2000/svg","text");
			if(text_v)
			{
			//	text_v.setAttribute("x",50);
			//	text_v.setAttribute("y","74%");
				text_v.setAttribute("id","label_v");
				text_v.setAttribute("style","fill:#FF0000; font-size:9pt");
				svg.appendChild(text_v);
			
			}
			
			//折线
				line_rx=document.createElementNS("http://www.w3.org/2000/svg","polyline");
				if(line_rx)
				{
					line_rx.setAttribute("point","");
					line_rx.setAttribute("id","rx");
					line_rx.setAttribute("style","fill:red;fill-opacity:0.4;stroke:red;stroke-width:1");
					svg.appendChild(line_rx);
				}
				line_tx=document.createElementNS("http://www.w3.org/2000/svg","polyline");
				if(line_tx)
				{
					line_tx.setAttribute("point","");
					line_tx.setAttribute("id","tx");
					line_tx.setAttribute("style","fill:blue;fill-opacity:0.4;stroke:blue;stroke-width:1");
					svg.appendChild(line_tx);
				}
				for (var i = step * 60; i < width; i += step * 60)
               	{

					var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');

					line.setAttribute('x1', i-5);
					line.setAttribute('y1', 0);
					line.setAttribute('x2', i-5);
					line.setAttribute('y2', '100%');
					line.setAttribute('style', 'stroke:black;stroke-width:0.1');

					var text = document.createElementNS('http://www.w3.org/2000/svg', 'text');
					text.setAttribute('x', i + 5);
					text.setAttribute('y', 15);
					text.setAttribute('style', 'fill:#999999; font-size:9pt');
					text.appendChild(document.createTextNode(Math.round(i / step / 60) + 'min'));

					text_v.parentNode.appendChild(line);
					text_v.parentNode.appendChild(text);

               	}
			label_rx_cur  = document.getElementById('rx_bw_cur');
			label_rx_avg  = document.getElementById('rx_bw_avg');
			label_rx_peak = document.getElementById('rx_bw_peak');

			label_tx_cur  = document.getElementById('tx_bw_cur');
			label_tx_avg  = document.getElementById('tx_bw_avg');
			label_tx_peak = document.getElementById('tx_bw_peak');
             window.setTimeout(update_graph, 1000);
		
		
		
		
		
		
		<% end if %>
		
		}

		function transTemperature(temperature)
		{
			var temp = Number(temperature);
			if (temp >= Math.pow(2, 15)){
				<% if tcwebApi_get("WebCustom_Entry","isCTPONGDTemperatureSupported","h") = "Yes" then %>	
					return -((Math.pow(2, 16)-temp)/256).toFixed(1);
				<% else %>
					return -Math.round((Math.pow(2, 16)-temp)/256);
				<% end if %>
			}else{
				<% if tcwebApi_get("WebCustom_Entry","isCTPONGDTemperatureSupported","h") = "Yes" then %>	
					return (temp/256).toFixed(1);
				<% else %>
					return Math.round(temp/256);
				<% end if %>
			}
		}			
			
		function PonInfoClass()
		{
			this.LinkSta					= '<% tcWebApi_get("XPON_LinkCfg","LinkSta","s") %>';
			this.trafficstate			= '<% tcWebApi_get("XPON_Common","trafficStatus","s") %>';
			this.fecState					= '<% tcWebApi_get("Info_PonPhy","FecStatus","s") %>';
			this.ponType					= '<% tcWebApi_get("XPON_Common","xponMode","s") %>';
			this.loidStatus				= 'init';
			this.PonState 				= 'down';
			this.FECEnable 				= '-';
			this.WarnInfo 				= 'disconnect';
			this.PonSendPkt 			= '<% tcWebApi_get("Info_PonWanStats","TxFrameCnt","s") %>';
			this.PonRecvPkt 			= '<% tcWebApi_get("Info_PonWanStats","RxFrameCnt","s") %>';
			this.SendPower 				= '-';
			this.RecvPower 				= '-';
			this.WorkVoltage 			= (Number(<%tcWebApi_get("Info_PonPhy", "SupplyVoltage", "s")%>)/10);
			this.WorkElectric 		= (Number(<%tcWebApi_get("Info_PonPhy", "TxBiasCurrent", "s")%>)*2/1000);
			this.WorkTemperature 	= transTemperature(<%tcWebApi_get("Info_PonPhy", "Temperature", "s")%>);
			this.EncryptEnable 		= '-';
			this.encryptState			= '<% tcWebApi_get("WebCurSet_Entry","EPONEncryption","s") %>';
			this.GemPortInfo			= '<% tcWebApi_get("GPON_GEMPort","EncryptionStateALL","s") %>';
			this.DispGemPortState = DispGemPortState;
			this.phyStatus				=	'<% tcWebApi_get("XPON_Common","phyStatus","s") %>';

			if ( 'GPON' != this.ponType && 'EPON' != this.ponType )
				this.ponType = 'GPON';
			if ( 'GPON' == this.ponType )
			{
				this.loidAuth					= '<% tcWebApi_get("GPON_LOIDAuth","AuthStatus","s") %>';
				this.loidV1						= '<% tcWebApi_get("GPON_LOIDAuth","LOID","s") %>';
			}
			else
			{
				this.loidAuth					= '<% tcWebApi_get("EPON_LOIDAuth","AuthStatus","s") %>';
				this.loidV1						= '<% tcWebApi_get("EPON_LOIDAuth","LOID0","s") %>';
			}

			if ( 'up' == this.trafficstate )
			{
				this.PonState 				= 'up';
				this.WarnInfo 				= 'no info';
				this.loidStatus				= 'up';
			}
			else
			{
				if ( '0' != this.LinkSta && '2' == this.loidAuth && 0 != this.loidV1.length )
					this.loidStatus			= 'error';
			}
			
			if( '0' != this.LinkSta)
			{
				this.SendPower 				= (Math.round(Math.log((Number(<%tcWebApi_get("Info_PonPhy", "TxPower", "s")%>))/10000)/(Math.log(10))*100)/10);
				this.RecvPower 				= (Math.round(Math.log((Number(<%tcWebApi_get("Info_PonPhy", "RxPower", "s")%>))/10000)/(Math.log(10))*100)/10);
				this.FECEnable 				= ( '1' == this.fecState ) ? 'enabled' : 'disabled';

				if ( '2' == this.LinkSta )
					this.EncryptEnable	= ( '1' == this.encryptState ) ? 'enabled' : 'disabled';
			}
			
			function DispGemPortState()
			{
				var gemportList;
				var gemportInfo;
				var gemportState;
				var i = 0;

				if ( this.GemPortInfo.indexOf('#') >=0 )
					this.GemPortInfo = this.GemPortInfo.substring(0, this.GemPortInfo.length - 1);
				else
				{
					document.write('Close');
					return -1;
				}

				gemportList = this.GemPortInfo.split('#');
				for (i = 0; i < gemportList.length; i ++)
				{
					gemportInfo = gemportList[i].split(':');
					if ( 2 != gemportInfo.length )
						continue;

					gemportState = 'GEMPORT' + gemportInfo[0] + ':' + ( ( 1 == gemportInfo[1] ) ? 'Open' : 'Close' )
												+ '; '
					document.write(gemportState);
				}

				return 0;
			}
		}
		
		var PonInfo = new PonInfoClass();

	
<% if tcwebApi_get("WebCustom_Entry","isTVCableUSupported","h") = "Yes" then %>
		function TVCableInfoClass()
		{
        	//数据除以512 然后取对数再乘以10  得出输入光功率 单位dBm  
			this.RxPower =(Number(<%tcWebApi_get("Info_TVCable", "RxPower", "s")%>));
			this.SupplyVoltage = (Number(<%tcWebApi_get("Info_TVCable", "SupplyVoltage", "s")%>));
			if ( this.RxPower == 0xFFFF) {
				this.RxPowerdbm = '';
				this.SupplyVoltagedbv = '';
			}
			else if ( this.RxPower == 0 ){
				this.RxPowerdbm = '< -30';
				this.SupplyVoltagedbv = '< -37';
			}
			else {
					 this.RxPowerdbm = (Math.log((Number(<%tcWebApi_get("Info_TVCable", "RxPower", "s")%>))/512)/Math.log(10))*10;
					 this.RxPowerdbm = this.RxPowerdbm.toFixed(2);
						
					//	如果RF高低字节有数据，以读出的数据为准，需要查表计算读数，比较复杂
					//	如果RF高低字节无数据，通过输入光功率计算，具体计算方法如下：
					//	1、输入光功率范围为：（-12—-2dBm）输出RF 76dBuV不变。
					//	2、输入光功率范围为以上范围以外，输出RF为：
					//	   76+（输入光功率-（-12））*2 （输入光功率小于-12）
					//	   76+（输入光功率-(-2)）*2 （输入光功率大于-2）        

					if ( this.RxPowerdbm < -12 ) {
						this.SupplyVoltagedbv = 76 + ( this.RxPowerdbm - (-12)) * 2;
					}
					if ( this.RxPowerdbm > -2 ) {
						this.SupplyVoltagedbv = 76 + ( this.RxPowerdbm - (-2)) * 2;
					}
					else {
						this.SupplyVoltagedbv = 76;
					}
			}
		}	

		var TVCableInfo = new TVCableInfoClass();
<% end if %>
        function RfSwitch_fun( para)
        {
            document.InfoForm.manual_commitflag.value = "1";
            document.InfoForm.rfswitch_val.value = para;
            document.InfoForm.submit();
        }
		function ListCreate_info1(para)
		{
				var index = 1;
				for(var i=0;i<pvc_counts;i++)
				{
					if(Wan_Actives[i] != "N/A")
					{
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
					if( Wan_WanName[i].indexOf('TR069') >= 0 )
					{
<% end if
end if
end if%>
						if(para == 6)
						{

							if(Wan_IPVERSION[i] == "IPv6" || Wan_IPVERSION[i] == "IPv4/IPv6")
							{

								document.write('<tr align="middle">');
								document.write('<td>' + Wan_WanName[i] + '</td>');
								var isIPGWUp = 0;
								if ( 0 != Wan_IP6[i].length && '-' != Wan_IP6[i]
									&& 0 != Wan_GateWay6[i].length && '-' != Wan_GateWay6[i] )
									isIPGWUp = 1;
								if(Wan_WanName[i].indexOf('_B_') >= 0)
									isIPGWUp = 1;								
								if(PonInfo.PonState == "up"){
									if ('up' == Wan_Status6[i] && (1 == isIPGWUp))
											document.write('<td>Connected&nbsp;</td>');
<% if TCWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
										else if(Wan_Actives[i]=="Yes"
													&& ( Wan_WanName[i].indexOf('_B_') >= 0
															||'PPPoE' != Wan_ENCAP[i]
															|| ('PPPoE' == Wan_ENCAP[i] && ('Connect_Keep_Alive' == Wan_Connection[i] || '-' == Wan_Connection[i]))
															)
														)
<% else %>
										else if(Wan_Actives[i]=="Yes")	
<% end if %>
											document.write('<td>Connecting&nbsp;</td>');
										else
											document.write('<td>Disconnected&nbsp;</td>');
									}
									else
											document.write('<td>Disconnected&nbsp;</td>');
									document.write('<td>' + Wan_IP6[i] + '&nbsp;</td>');
									document.write('<td>' + Wan_GateWay6[i] + '&nbsp;</td>');
								document.write('</tr>');
								index = index + 1;
							}
							else 
							{
								if(Wan_IPVERSION[i] == "IPv4")
								{
									index = index + 1;
								}
							}
						}
						else 
						{
							if(para == 4)
							{
								if(Wan_IPVERSION[i] == "IPv4" || Wan_IPVERSION[i] == "IPv4/IPv6")
								{
									document.write('<tr align="middle">');
									document.write('<td>' + Wan_WanName[i] + '</td>');
									if(PonInfo.PonState == "up"){
										if ('up' == Wan_Status4[i])
												document.write('<td>Connected&nbsp;</td>');
<% if TCWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
										else if(Wan_Actives[i]=="Yes"
													&& ( Wan_WanName[i].indexOf('_B_') >= 0
																	||'PPPoE' != Wan_ENCAP[i]
																	|| ('PPPoE' == Wan_ENCAP[i] && ('Connect_Keep_Alive' == Wan_Connection[i] || '-' == Wan_Connection[i]))
																	)
														)
<% else %>
										else if(Wan_Actives[i]=="Yes")	
<% end if %>
											document.write('<td>Disconnected&nbsp;</td>');
										else
											document.write('<td>connecting&nbsp;</td>');
									}
									else
											document.write('<td>Disconnected&nbsp;</td>');
										document.write('<td>' + Wan_IP4[i] + '&nbsp;</td>');
										document.write('<td>' + Wan_NetMask4[i] + '&nbsp;</td>');
									document.write('</tr>');
									index = index + 1;
								}
								else 
								{
									if(Wan_IPVERSION[i] == "IPv6")
									{
										index = index + 1;
									}
								}
							}
						}
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
						}
<% end if
end if
end if%>
					}
				}
			}
			
		function ListCreate_info2(para)
		{
				var index = 1;
				for(var i=0;i<pvc_counts;i++)
				{
					if(Wan_Actives[i] != "N/A")
					{
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
					if( Wan_WanName[i].indexOf('TR069') >= 0 )
					{
<% end if
end if
end if%>
						if(para == 6)
						{
							if(Wan_IPVERSION[i] == "IPv6" || Wan_IPVERSION[i] == "IPv4/IPv6")
							{
								document.write('<tr align="middle">');
								document.write('<td>' + Wan_WanName[i] + '</td>');
								if ( 'Connect_Manually' == Wan_Connection[i] )
									document.write('<td> Manually </td>');
								else
									document.write('<td> AUTO </td>');
								document.write('<td>' + Wan_ENCAP[i] + '&nbsp;</td>');
								document.write('</tr>');
								index = index + 1;
							}
							else 
							{
								if(Wan_IPVERSION[i] == "IPv4")
								{
									index = index + 1;
								}
							}
						}
						else 
						{
							if(para == 4)
							{
								if(Wan_IPVERSION[i] == "IPv4" || Wan_IPVERSION[i] == "IPv4/IPv6")
								{
									document.write('<tr align="middle">');
									document.write('<td>' + Wan_WanName[i] + '</td>');
									if ( 'Connect_Manually' == Wan_Connection[i] )
										document.write('<td> Manually </td>');
									else
										document.write('<td> AUTO </td>');
<% if tcWebApi_get("WebCustom_Entry", "isShowCPUMemTime", "h") = "Yes"  then %>
									document.write('<td>' + Wan_ENCAP[i] + '</td>');
									
									if ( 'PPPoE' == Wan_ENCAP[i] ) {
										var curTimelist = Wan_ConnTime[i].split(':');
										if (0 < Wan_ConnTime[i].length && '-' != Wan_ConnTime[i]) {
											if ('99:99:99:99' == Wan_ConnTime[i])
												document.write('<td>' + '-' + '&nbsp;</td>');
											else 
												document.write('<td>' + curTimelist[0] +' Day ' + curTimelist[1] +' Hour '+ curTimelist[2] +' Min '+ curTimelist[3] +' Sec ' + '&nbsp;</td>');
										} else {
											document.write('<td>' + '-' + '&nbsp;</td>');
										}
									}else {
										document.write('<td>' + '-' + '&nbsp;</td>');
									}
<% else %>
									document.write('<td>' + Wan_ENCAP[i] + '&nbsp;</td>');
<% end if %>
									document.write('</tr>');
									index = index + 1;
								}
								else 
								{
									if(Wan_IPVERSION[i] == "IPv6")
									{
										index = index + 1;
									}
								}
							}
						}
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
						}
<% end if
end if
end if%>
					}
				}
			}
			
		function ListCreate_info2p(para)
		{
			for( var i=0; i<pvc_counts; i++ )
			{
				if( Wan_Actives[i] != 'N/A' )
				{
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
				if( Wan_WanName[i].indexOf('TR069') >= 0 )
				{
<% end if
end if
end if%>
					if( para == 6 )
					{
						if( Wan_IPVERSION[i] == 'IPv4')
							continue;
					}
					else if ( para == 4 )
					{
						if( Wan_IPVERSION[i] == 'IPv6')
							continue;	
					}
					else
							return;

					document.write('<tr align="middle">');
					document.write('<td>' + Wan_WanName[i] + '</td>');
					document.write('<td>' + Wan_VidPRI[i] + '</td>');
					document.write('<td>' + Wan_MAC[i] + '&nbsp;</td>');
					document.write('</tr>');
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
				}
<% end if
end if
end if%>
				}
			}
		}
						
		function ListCreate_info3(para)
		{
				var index = 1;
				for(var i=0;i<pvc_counts;i++)
				{
					if(Wan_Actives[i] != "N/A")
					{
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
					if( Wan_WanName[i].indexOf('TR069') >= 0 )
					{
<% end if
end if
end if%>
						if(para == 6)
						{
							if(Wan_IPVERSION[i] == "IPv6" || Wan_IPVERSION[i] == "IPv4/IPv6")
							{
								document.write('<tr align="middle">');
								document.write('<td>' + Wan_WanName[i] + '</td>');
								document.write('<td>' + Wan_DNS6[i] + '&nbsp;</td>');
								document.write('<td>' + Wan_SecDNS6[i] + '&nbsp;</td>');
								document.write('<td>' + Wan_PD6[i] + '&nbsp;</td>');

								document.write('</tr>');
								index = index + 1;
							}
							else 
							{
								if(Wan_IPVERSION[i] == "IPv4")
								{
									index = index + 1;
								}
							}
						}
						else 
						{
							if(para == 4)
							{
								if(Wan_IPVERSION[i] == "IPv4" || Wan_IPVERSION[i] == "IPv4/IPv6")
								{
									document.write('<tr align="middle">');
									document.write('<td>' + Wan_WanName[i] + '</td>');
									document.write('<td>' + Wan_GateWay4[i] + '&nbsp;</td>');
									document.write('<td>' + Wan_DNS4[i] + '&nbsp;</td>');
									document.write('<td>' + Wan_SecDNS4[i] + '&nbsp;</td>');
									document.write('</tr>');
									index = index + 1;
								}
								else 
								{
									if(Wan_IPVERSION[i] == "IPv6")
									{
										index = index + 1;
									}
								}
							}
						}
<% if tcWebApi_get("WebCustom_Entry", "isCTSIMCARDSEPARATIONSupported", "h") = "Yes"  then
   if tcWebApi_get("SimCard_Entry", "cardExist", "h") = "1"  then
   if tcWebApi_get("SimCard_Entry", "simAuthRet", "h") = "0"  then %>
						}
<% end if
end if
end if%>
					}
				}
			}
</SCRIPT>


<form style="DISPLAY: none" id="ConfigForm" ></form>
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>IPv4 Wan Interface111</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD>
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") ="Yes" then %>
          <TD vAlign=top width=170 rowSpan=14>
<% else %>
          <TD vAlign=top width=170  
          rowSpan=24>
<%end if %>
            <TABLE cellSpacing=0 cellPadding=20 width="100%" border=0 height='100%'>
              <TBODY>
              <TR>
                <TD valign='top'><A 
                  href="/cgi-bin/help_content.asp#WANStatus" 
                  target=_blank><INPUT type=button value=Help height=34
                  width=40 border=0></A></TD></TR>
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
            <P class=Item_L2>&nbsp;</P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=3 width=660 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR align=middle>
                      <TD class=table_title align=middle>Wan Name111</TD>
                      <TD class=table_title align=middle>Status</TD>
                      <TD class=table_title align=middle>IP Address</TD>
                      <TD class=table_title align=middle>Subnet Mask</TD></TR>
                    <SCRIPT language=JavaScript type=text/javascript>
						ListCreate_info1(4);
					</SCRIPT>
                    </TBODY></TABLE><BR>
<% if tcwebApi_get("WebCustom_Entry","isShowCPUMemTime","h") ="Yes" then %> 
                  <TABLE id=tabOptionv4 cellSpacing=0 cellPadding=3  
<% else %>
                  <TABLE id=tabOptionv4 cellSpacing=0 cellPadding=3 width=660 
<% end if %>
                  border=1 name="tabOptionv4" bordercolor=#e3e3e3>
                    <TBODY>
                    <TR align=middle>
<% if tcwebApi_get("WebCustom_Entry","isShowCPUMemTime","h") ="Yes" then %> 
                      <TD class=table_title align=middle width=180>Wan Name</TD>
                      <TD class=table_title id=secPVC align=middle width=208>Connection Status</TD>
                      <TD class=table_title id=secEncap align=middle width=208>IP Mode</TD>
                      <TD class=table_title id=secEncap2 align=middle width=208>Connection Time</TD></TR>
<% else %>
                      <TD class=table_title align=middle>Wan Name</TD>
                      <TD class=table_title id=secPVC align=middle>Connection Status</TD>
                      <TD class=table_title id=secEncap 
align=middle>IP Mode</TD></TR>
<% end if %>
                    <SCRIPT language=JavaScript type=text/javascript>
						ListCreate_info2(4);
					</SCRIPT>
                    </TBODY></TABLE><BR>
                  <TABLE cellSpacing=0 cellPadding=3 width=660 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR align=middle>
                    	<TD class=table_title align=middle>Wan Name</TD>
                      <TD class=table_title align=middle>VLAN/Priority</TD>
                      <TD class=table_title align=middle>MAC Address</TD>
                      </TR>
							        <SCRIPT language=JavaScript type=text/javascript>
											ListCreate_info2p(4);
											</SCRIPT>
                  </TBODY></TABLE><BR>
                  <TABLE cellSpacing=0 cellPadding=3 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR>
                      <TD class=table_title align=middle width=180>Wan Name</TD>
                      <TD class=table_title align=middle width=208>Default Gateway</TD>
                      <TD class=table_title align=middle width=208>Primary DNS</TD>
                      <TD class=table_title align=middle width=208>Secondary DNS</TD></TR>
                    <SCRIPT language=javascript>
						ListCreate_info3(4);
					</SCRIPT>
                    </TBODY></TABLE></TD>
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
<% if tcwebApi_get("WebCustom_Entry","isCYE8SFUSupported","h") <>"Yes" then %> 
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>IPv6 Wan Interface</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>         
          <TD width=674>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2>&nbsp;</P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=3 width=660 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR align=middle>
                      <TD class=table_title align=middle>Wan Name</TD>
                      <TD class=table_title align=middle>IPv6 Status</TD>
                      <TD class=table_title align=middle>IPv6 Address</TD>
                      <TD class=table_title align=middle>IPv6 Default gateway</TD></TR>
                    <SCRIPT language=JavaScript type=text/javascript>
						ListCreate_info1(6);
					</SCRIPT>
                    </TBODY></TABLE><BR>
                  <TABLE id=tabOptionv6 cellSpacing=0 cellPadding=3 width=660 
                  border=1 name="tabOptionv6" bordercolor=#e3e3e3>
                    <TBODY>
                    <TR align=middle>
                      <TD class=table_title align=middle>Wan Name</TD>
                      <TD class=table_title id=secPVC align=middle>Connection Status</TD>
                      <TD class=table_title id=secEncap 
align=middle>IP Mode</TD></TR>
                    <SCRIPT language=JavaScript type=text/javascript>
						ListCreate_info2(6);
					</SCRIPT>
                    </TBODY></TABLE><BR>
                    
                  <TABLE cellSpacing=0 cellPadding=3 width=660 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR align=middle>
                    	<TD class=table_title align=middle>Wan Name</TD>
                      <TD class=table_title align=middle>VLAN/Priority</TD>
                      <TD class=table_title align=middle>MAC Address</TD>
                      </TR>
							        <SCRIPT language=JavaScript type=text/javascript>
											ListCreate_info2p(6);
											</SCRIPT>
                  </TBODY></TABLE><BR>
                  <TABLE cellSpacing=0 cellPadding=3 border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR>
                      <TD class=table_title align=middle width=180>Wan Name</TD>
                      <TD class=table_title align=middle 
width=208>IPv6 Primary DNS</TD>
                      <TD class=table_title align=middle 
width=208>IPv6 Secondary DNS</TD>
                      <TD class=table_title align=middle width=208>Prefix</TD></TR>
                    <SCRIPT language=javascript>
						ListCreate_info3(6);
					</SCRIPT>
                    </TBODY></TABLE></TD>
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
<% end if %>
<!----------------------------------------------->
<% if tcwebApi_get("WebCustom_Entry","isSVGSupported","h")  = "Yes" then %>
	
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>SVG DISPLAY </P></TD>
          <TD width=7 bgColor=#ffffff>　</TD>
          <TD width=674>　</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2>&nbsp;</P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
         ,   <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
              <TD>

              <!----->
 			<div class="cbi-section">
            <div class="cbi-section-bg">
            	<div class="cbi-table">

            	<!--embed-
					<embed  id="bwsvg" src="/JS/bandwidth.svg" style="width:100%; height:300px; border:1px solid #000000; background-color:#FFFFFF" type="image/svg+xml"   pluginspage="http://www.adobe.com/svg/viewer/install/"/>
					-->
						<svg id="bwsvg" style="width:700px; height:320px; border:1px solid #000000; background-color:#FFFFFF"
          	 type="image/svg+xml" xmlns="http://www.w3.org/2000/svg" />
					<div style="text-align:right"><small id="scale">2 min draw，1 sec reflash</small></div>
					<br />
				</div>
				<table style="width:100%; table-layout:fixed" cellspacing="5">
                   	<tr>
                     <td style="text-align:right; vertical-align:top"><strong style="border-bottom:2px solid blue">Rx:</strong></td>
                      <td id="rx_bw_cur">0 kbit/s<br />(0 KB/s)</td>
                        <td style="text-align:right; vertical-align:top"><strong>Average:</strong></td>
                         <td id="rx_bw_avg">0 kbit/s<br />(0 KB/s)</td>

                          <td style="text-align:right; vertical-align:top"><strong>Peak:</strong></td>
                          <td id="rx_bw_peak">0 kbit/s<br />(0 KB/s)</td>
                           </tr>
                           <tr>
                            <td style="text-align:right; vertical-align:top"><strong style="border-bottom:2px solid green">Tx:</strong></td>
                            <td id="tx_bw_cur">0 kbit/s<br />(0 KB/s)</td>

                             <td style="text-align:right; vertical-align:top"><strong>Average:</strong></td>
                              <td id="tx_bw_avg">0 kbit/s<br />(0 KB/s)</td>

                               <td style="text-align:right; vertical-align:top"><strong>Peak:</strong></td>
                                <td id="tx_bw_peak">0 kbit/s<br />(0 KB/s)</td>
                                </tr>
                            </table>


				<div class="cbi-table">
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
				</div>
            </div>
        </div>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  
                </TD>
                <TD width=10>&nbsp;</TD></TR></TBODY>
                </TABLE>
                </TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>

<% end if %>

<!-------------------------->




        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>PON Interface</P></TD>
          <TD width=7 bgColor=#ffffff>&nbsp;</TD>
          <TD width=674>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2>&nbsp;</P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV id=secPonInfo1>
                  <TABLE cellSpacing=0 cellPadding=3 width="100%" border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR>
                    	<TD class='table_title' colspan='2'>Link Information</TD>
                    </TR>
                    <TR>
                      <TD class=table_title width=160>PON Connection Status:</TD>
                       <TD > 
                        <script language=JavaScript type=text/javascript>
												if( PonInfo.PonState == "up")
													document.write("Connected");
												else if ( PonInfo.PonState == "connecting")
													document.write("Connecting");
												else
													document.write("Disconnected");
												</script>
                    		&nbsp;</TD>
                    </TR>
<% if tcwebApi_get("WebCustom_Entry","isCTPONJSSupported","h") = "Yes" then %>
                    <TR>
                      <TD class=table_title width=160>EPON Link Status:</TD>
                       <TD > 
                        <script language=JavaScript type=text/javascript>
												if( PonInfo.phyStatus.indexOf("up") > -1 && PonInfo.trafficstate == "up")
													document.write("Registered and Certified");
												else if ( PonInfo.phyStatus.indexOf("up") > -1 && PonInfo.trafficstate == "down")
													document.write("Registered and Uncertified");
												else
													document.write("Unregistered and Uncertified");
												</script>
                    		&nbsp;</TD>
                    </TR>
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isCTPONNMGSupported","h") = "Yes" then %>
                    <TR>
                      <TD class=table_title width=160>
                      	<script language=JavaScript type=text/javascript>
                      	document.write(PonInfo.ponType + 'Status:');
                      	</script>
                      </TD>
                       <TD > 
                        <script language=JavaScript type=text/javascript>
												if( PonInfo.loidStatus == 'up')
													document.write("Certification Success");
												else if ( PonInfo.loidStatus == 'error')
													document.write("LOID error or inexistent");
												else
													document.write("Initial state");
												</script>
                    		&nbsp;</TD>
                    </TR>
<% end if %>
<% if tcWebApi_get("WebCustom_Entry", "isCTPONCZGDSupported", "h") = "Yes"  then %> 
										</TBODY>
										<TBODY id="StaNetPonAdvInfo"> 			
         							<SCRIPT language=JavaScript type=text/javascript>
											if (curUserName != sptUserName)
											{
												getElement("StaNetPonAdvInfo").style.display = "none";									
											}
											</SCRIPT>	
<% end if %>
<% if tcWebApi_get("WebCurSet_Entry","CurrentAccess","h") = "0" then %>
                    <TR>
                      <TD class=table_title>FEC Enable:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
                        if ( '-' == PonInfo.FECEnable )
                        	document.write(PonInfo.FECEnable);
                        else
                        {
													if(PonInfo.FECEnable == "disabled")
														document.write("Disabled");
													else
														document.write("Enable");
												}
											</SCRIPT>
                        &nbsp;</TD>
                      </TR>
                    <TR>
                      <TD class=table_title>Encryption Mode:</TD>
                      <TD>
                      	<SCRIPT language=JavaScript type=text/javascript>
                      	if ( '1' == PonInfo.LinkSta )
                      	{
                      		PonInfo.DispGemPortState();
                      	}
                      	else
                      	{
	                        if ( '-' == PonInfo.EncryptEnable )
	                        	document.write(PonInfo.EncryptEnable);
	                        else
	                        {
														if(PonInfo.EncryptEnable == "disabled")
															document.write("Disabled");
														else
															document.write("Enable");
													}
												}
                        </SCRIPT>
                        &nbsp;</TD>
                    </TR>
                    <TR>
                      <TD class=table_title>Alarm Info:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
                        if(PonInfo.WarnInfo == "disconnect")
                                document.write("Disconnect");
			else
				document.write("No alarm");
			</SCRIPT>
                        &nbsp;</TD>
                      </TR>
                    <TR>
                    	<TD class='table_title' colspan='2'>Link Performance Statistics</TD>
                    </TR>
                    <TR>
                      <TD class=table_title>PON Transmit:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(PonInfo.PonSendPkt);
												</SCRIPT>
                        &nbsp;</TD>
                     </TR>
                    <TR>
                      <TD class=table_title>PON Receive:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(PonInfo.PonRecvPkt);
												</SCRIPT>
                        &nbsp;</TD>
                     </TR>
	                    <TR>
	                    	<TD class='table_title' colspan='2'>Optical Module Info</TD>
	                    </TR>
                     <TR>
                      <TD class=table_title>Transmitting Optical Power:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(PonInfo.SendPower);
												</SCRIPT>dBm
                        &nbsp;</TD>
                     </TR>
                     <TR>
                      <TD class=table_title>Receiving Optical Power:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(PonInfo.RecvPower);
												</SCRIPT>dBm
                        &nbsp;</TD>
                     </TR>
                     <TR>
                      <TD class=table_title>Voltage:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(PonInfo.WorkVoltage);
												</SCRIPT>mV
                        &nbsp;</TD>
                     </TR>
                     <TR>
                      <TD class=table_title>Current:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(PonInfo.WorkElectric);
												</SCRIPT>mA
                        &nbsp;</TD>
                     </TR>
                     <TR>
                      <TD class=table_title>Temperature:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(PonInfo.WorkTemperature);
												</SCRIPT>℃
                        &nbsp;</TD>
                     </TR>
<% end if %>
                      </TBODY>
                     </TABLE>
                  </DIV>
                  </TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
		<% if tcwebApi_get("WebCustom_Entry","isTVCableUSupported","h") = "Yes" then %>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>TV Optical Information</P></TD>
          <TD width=7 bgColor=#ffffff>　</TD>
          <TD width=474>　</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2>&nbsp;</P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 bordercolor=#e3e3e3>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV id=secPonInfo1>
                  <TABLE cellSpacing=0 cellPadding=3 width="100%" border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR>
                    	<TD class='table_title' colspan='2'>Optical Information</TD>
                    </TR>
                     <TR>
                      <TD class=table_title>RxPower:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(TVCableInfo.RxPowerdbm);
												</SCRIPT>dBm
                        &nbsp;</TD>
                     </TR>
                     <TR>
                      <TD class=table_title>RF output level:</TD>
                      <TD>
                        <SCRIPT language=JavaScript type=text/javascript>
												document.write(TVCableInfo.SupplyVoltagedbv);
												</SCRIPT>dBuv
                        &nbsp;</TD>
                     </TR>
                      </TBODY>
                     </TABLE>
                  </DIV>
                  </TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
		<% end if %>
		<% if tcwebApi_get("GPON_ONU","catv","h") = "Yes" then %>
        <TR>
          <TD width=157 bgColor=#dff5ff height=30>
            <P class=Item_L1>CATV info</P></TD>
          <TD width=7 bgColor=#ffffff>　</TD>
          <TD width=474>　</TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD></TD></TR>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=30>
            <P class=Item_L2>&nbsp;</P></TD>
          <TD width=7 bgColor=#ffffff border=0></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 bordercolor=#e3e3e3>
              <TBODY>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>
                  <DIV id=secPonInfo1>
                  <TABLE cellSpacing=0 cellPadding=3 width="100%" border=1 bordercolor=#e3e3e3>
                    <TBODY>
                    <TR>
                    	<TD class='table_title' colspan='2'>CATV Info</TD>
                    </TR>
                     <TR>
                      <TD class=table_title>Rx Power :</TD>
                      <TD>
						<%TCWebApi_get("Info_TVCable","RxPower","s")%> dBm
                        &nbsp;</TD>
                     </TR>
                     <TR>
                      <TD class=table_title>SupplyVoltage:</TD>
                      <TD>
					    <%TCWebApi_get("Info_TVCable","SupplyVoltage","s")%> dBuv
                        &nbsp;</TD>
                     </TR>
                     <TR>
                      <TD class=table_title>Temperature:</TD>
                      <TD>
					    <SCRIPT language=JavaScript type=text/javascript>
                        var iTemperature = <% tcWebApi_get("Info_TVCable","Temperature","s") %>;
                        if(iTemperature > 100)
                            iTemperature = 25;
						document.write(iTemperature);
						</SCRIPT> ℃
                        &nbsp;</TD>
                     </TR>
                     <TR>
                      <TD class=table_title>Gain Mode:</TD>
                      <TD>
					    <%TCWebApi_get("Info_TVCable","WorkMode","s")%>
                        &nbsp;</TD>
                     </TR>
					 <TR>
                      <TD class=table_title>RF switch:</TD>
                      <TD>
						<FORM id="InfoForm" name="InfoForm" action="/cgi-bin/sta-network.asp" method="post">
							<input type="hidden" name="rfswitch_val" value="<%TCWebApi_get("TVCable_Entry","RFSwitch","s")%>">
							<input type="hidden" name="manual_commitflag" value="0">
							<%if TCWebApi_get("Info_TVCable","RFState","h") = "1" then %>
								<INPUT onclick="RfSwitch_fun(0)" type="button" value="OFF" name="rfswitch">
							<% else %>
								<INPUT onclick="RfSwitch_fun(1)" type="button" value="ON" name="rfswitch">
							<% end if %> 							
						</FORM>
                      </TD>
                     </TR>
					  </TBODY>
                     </TABLE>
                  </DIV>
                  </TD>
                <TD width=10>&nbsp;</TD></TR>
              <TR>
                <TD width=10>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD width=10>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
		<% end if %>
        <TR>
          <TD vAlign=top width=157 bgColor=#dff5ff height=10></TD>
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
          <TD width=393 bgColor=#ffffff>
            <P align=center></P></TD>
          <TD width=169 
>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
