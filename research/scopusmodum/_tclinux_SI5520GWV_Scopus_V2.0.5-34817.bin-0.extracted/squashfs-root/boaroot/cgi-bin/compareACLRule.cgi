#!/bin/sh

echo "Content-Type: text/html"
echo ""

echo "<html><head><meta http-equiv=Content-Script-Type content=text/javascript><meta http-equiv=Content-Style-Type
content=text/css><meta http-equiv=Content-Type content=\"text/html; charset=UTF-8\"><link rel=\"stylesheet\"
href=\"/JS/stylemain.css\" type=\"text/css\"><SCRIPT language=javascript src=\"/JS/util.js\"></SCRIPT></head>
<script language=\"JavaScript\">
function formatstr(sourcestr, searchstr)
{
	var restr;
	var offset = sourcestr.indexOf(searchstr);
	if(offset == -1)
		return null;
	var lenstr = searchstr.toString();	
	restr = sourcestr.substring(0, offset) + sourcestr.substring((offset+parseInt(lenstr.length)+1), sourcestr.length);
	return restr;
}


function setParCtrlID(index)
{
	var xmlhttp;
	//var cmd = '/cgi-bin/tcApi.cgi?cmd=acl&subcmd=get&index=' + index;
	var cmd = '/cgi-bin/setACLEntryId.cgi?index=' + index;

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
				var retStr=String(xmlhttp.responseText);	
				/*if (2 == retStr.length)
					alert('11 hehe' + retStr);
				else
					alert('22 hehe' + retStr);*/
				var url = 'sec-editacl.asp?id=';
				var newid = url + index;
				parent.location.replace(newid);
			 
			}
	}

	xmlhttp.open('GET',cmd,true);
	xmlhttp.send();
}
 
function doDel()
{
	var f = parent.document.ConfigForm;
	var tempstr;
	var rml = document.getElementsByName('rml');
	if (rml == null)
		return;

	RemoveItem(f,'rml');
}

function pctrlGetElById(sId)
{
	if (parent.document.getElementsByName)
	{
		var element = parent.document.getElementsByName(sId);
		
		if (element.length == 0)
		{
			return null;
		}
		else if (element.length == 1)
		{
			return 	element[0];
		}
		
		return element;		
	}
}

function setParentalContrlText (sId, sValue)
{
	var item;
	if (null == (item = pctrlGetElById(sId)))
	{
		alert(sId + \" is not existed\" );
		return false;
	}
    
	item.value = sValue;
	return true;
}

function btnEdit(EntryIndex)
{
	setParentalContrlText(\"ACLCurIndex\",EntryIndex);
	//parent.document.ConfigForm.parentalContrl_Flag.value = "3";
	var url = 'sec-editacl.asp?id=';
	var newid = url + EntryIndex;
	setParCtrlID(EntryIndex);
	//alert('111');
	//setTimeout(function(){}, 3000000000);
	//parent.location.replace(newid);
}

function RemoveItem(Form, CheckTag)
{
	var rml = getElement(CheckTag);
	var i;

	if (rml.length > 0)
	{
		for (i = 0; i < rml.length; i++)
		{
			if (rml[i].checked == true)
			{
				var ctlName = \"ACLEntry\"+rml[i].value;
				setParentalContrlText(ctlName,rml[i].value);
			}
		}
	}
	else if (rml.checked == true)
	{
		var ctlName = \"ACLEntry\"+rml.value;
		setParentalContrlText(ctlName,rml.value);		
	}
}

function getBit(val,bit){
    /*1 return true; 0 return false*/
    return ((val & (0x1 << bit)) >> bit)==1;
}

function stAclRule(enb,interface,srcIP,endIP,action,app,ifName)
{
	this.enb = enb;
	this.interface = interface;
	this.srcIP = srcIP;
	this.endIP = endIP;
	this.action = action;
	this.app = app;
	this.ifName = ifName;
}

</script>
<body topmargin=\"10\" leftmargin=\"0\"><table width=\"320\" align=center cellpadding=\"0\" cellspacing=\"0\">"

echo "<tr></tr>"

		
count=`/userfs/bin/tcapi get ACL_Common totalNum`
i=0
ruleNum=0

if [ "$count" -gt 0 ]
		then
			while [ "$count" -gt "$ruleNum" ]
			do
				node_name="ACL_Entry$i"
				enb=`/userfs/bin/tcapi get $node_name Activate`
				srcIP=`/userfs/bin/tcapi get $node_name ScrIPAddrBegin`
				endIP=`/userfs/bin/tcapi get $node_name ScrIPAddrEnd`
				app=`/userfs/bin/tcapi get $node_name Application`
				interface=`/userfs/bin/tcapi get $node_name Interface`
				action=`/userfs/bin/tcapi get $node_name Action`
				ifName=`/userfs/bin/tcapi get $node_name IFName`
				#action="permit"
				#action="permit"
				if [ "$interface" = "no node information" -o "$interface" = "no attribute information" -o "$interface" = "" -o "$interface" = "N/A" ]
				then
					eval 'echo $i > /tmp/panxd_$i'
					i=`expr $i + 1`
					continue
				fi
				echo "<script language=\"javascript\">
			if(parent.aclIndex != null)
			{
				var tmpVar="\" \"";
				parent.aclRule[parent.aclIndex] = new stAclRule(\"$enb\", \"$interface\", \"$srcIP\", \"$endIP\", \"$action\", \"$app\", \"$ifName\");
				parent.aclIndex++;
				for (i = 0; i < 5; i++) {
					switch(i) {
					case 0:
						if(getBit(parseInt(\"$app\"), i)) {
							tmpVar+='HTTP ';
							}
						break;
					case 1:
						if(getBit(parseInt(\"$app\"), i))
							tmpVar+='FTP ';
						break;
					case 2:
						if(getBit(parseInt(\"$app\"), i))
							tmpVar+='SSH ';
						break;
					case 3:
						if(getBit(parseInt(\"$app\"), i))
							tmpVar+='TELNET ';
						break;
					case 4:
						if(getBit(parseInt(\"$app\"), i))
							tmpVar+='HTTPS ';
						break;
					default:
						break;
					}
				}
			}
			</script>
			<tr></tr>"
				i=`expr $i + 1`
				ruleNum=`expr $ruleNum + 1`
			done
fi
echo "</table></td></tr></table></body></html>"

