var xmlHttp;
var deleteid;
listEPhoto();
function createXmlHttp(){
	if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}else{
	    xmlHttp = new ActiveXObject("Microsoft.XMLHttp");	
	}
}
function listEPhoto(){
	createXmlHttp();
	xmlHttp.open("GET", "ephoto_list.action",true);			
	xmlHttp.onreadystatechange = responseTo1;
	xmlHttp.send(null);
}
function deleteEPhoto(id){
	createXmlHttp();
	deleteid = id;
	xmlHttp.open("GET", "ephoto_delete.action?id="+id,true);			
	xmlHttp.onreadystatechange = responseTo2;
	xmlHttp.send(null);
}
function get(id){
	return document.getElementById(id);
}
function responseTo1(){
	if(xmlHttp.readyState==4){
		var response = xmlHttp.responseText;
		var obj = eval('(' + response + ')');
		var html = "";
		var photos = obj.result;
		for(var i=0;i<photos.length;i++){
			html += '<div id="photo'+photos[i].id+'" class="photo"><img src="'+photos[i].url+'"></img></div>';
		}
		if(html==""){
			html = "您的相册还没有照片哦！点击上传照片，轻松上传！";
		}
		get("enterprise_photo").innerHTML = html;
		//if(photos.length>6)
		//	get("listMore").style.display = 'block';
		setfooter();
	}
	
	//setfooter();
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
function responseTo2(){
	if(xmlHttp.readyState==4){
		var response = xmlHttp.responseText;
		var obj = eval('(' + response + ')');
		var result = obj.result;
		if(result){
			alert("删除成功！");
			var note = get("photo"+deleteid);
			get("enterprise_photo").removeChild(note);
		}
	}
}