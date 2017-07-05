setfooter();
function createXmlHttp(){
	if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}else{
	    xmlHttp = new ActiveXObject("Microsoft.XMLHttp");	
	}
}
function setfooter(){//--------footer-----------
	createXmlHttp();
	xmlHttp.open("GET", "setfooter.action",true);			
	xmlHttp.onreadystatechange = responseToFooter;
	xmlHttp.send(null);
}
function responseToFooter(){//--------footer-----------
	if(xmlHttp.readyState==4){
		var response = xmlHttp.responseText;  
		var obj = eval('(' + response + ')');
		var html = "";
		console.log("footer  start.....");
		console.log(obj);
		console.log("footer  end.....");
		
		var html = "";
		
		html += '<a href=' + obj.memberService +'>会员服务</a>|';

		html += '<a href=' + obj.adService +'>广告服务</a>|';
		
		html += '<a href=' + obj.projectCoorperation +'>项目合作</a>|';
		
		html += '<a href=' + obj.webNotice +'>网站公告</a>';
		
		html += '<br style="font-color:#FFF">CopyRight 2014 天津现代职业教育中心版权所有 ICP备14003256号—1<br>【免责声明】本网站所提供的信息资源，如有侵权违规请及时告知&nbsp; 联系电话：022—63301898 &nbsp;邮箱：<a href="mailto:zggzgz123@163.com" data-ke-src="mailto:zggzgz123@163.com">zggzgz123#163.com</a>（请将#换为@）';
	
		get("footerlink").innerHTML = html;
	}
}
function get(id){
	return document.getElementById(id);
}

function show_datepicker(){
	document.getElementById("datepicker").style.display = 'block';
	document.getElementById("datepicker").style.top = "330px";
}
function establish(){
	if(document.getElementById("emtitle").value=="")
		alert("标题不能为空！");
	else if(document.getElementById("emcontent").value=="")
		alert("内容不能为空！");
	else if(document.getElementById("dateup").value=="")
		alert("请选择截止时间！");
	else if(!date_cmp(document.getElementById("dateup").value))
		alert("请选择有效日期！");	
	else
		document.getElementById("establishform").submit();
}

function date_cmp(sdate){
	var dates = sdate.split("-");
	var now = new Date();
	if(dates[0]<now.getFullYear())
		return false;
	else if(dates[0]>=now.getFullYear()&&dates[1]<(now.getMonth()+1))
		return false;
	else if(dates[0]>=now.getFullYear()&&dates[1]>=(now.getMonth()+1)&&dates[2]<now.getDate())
		return false;
	else return true;
}

$(document).ready(function(){
	$( "#datepicker" ).datepicker({
		inline: true,
		numberOfMonths:1,//显示几个月  
	    showButtonPanel:true,//是否显示按钮面板  
	    dateFormat: 'yy-mm-dd',//日期格式  
	    clearText:"清除",//清除日期的按钮名称  
	    closeText:"关闭",//关闭选择框的按钮名称  
	    yearSuffix: '年', //年的后缀  
	    showMonthAfterYear:true,//是否把月放在年的后面  
	    monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
	    dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
	    dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
	    dayNamesMin: ['日','一','二','三','四','五','六'],  
	    onSelect: function(selectedDate) {//选择日期后执行的操作  
	                //document.getElementById("datepicker").style.top = "1280px";
					document.getElementById("datepicker").style.display = 'none';
	                document.getElementById("dateup").setAttribute("value",selectedDate);
	            }        
	});	
});