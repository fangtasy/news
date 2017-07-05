<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的好友</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" href="css/style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/student-photo.css">
	<link type="text/css" href="css/student-friend.css" rel="stylesheet">
	<script type="text/javascript" src="js/friend.js"></script>
	</head>
	<body>
		<div id="header">
			<h1>学生园地</h1><h1>${info.school}</h1>
			<div id="exit">
				<span>${session.user.name}</span>
				<a href="student_exit.action">退出</a>
			</div>
		</div>
		<div id="nav">
			<div class="nav-content">
				<a href="student_person.action">个人中心</a>
				<a class="active">我的好友</a>
				<a href="student_photo.action">相册</a>
				<a href="student_blog.action">日志</a>
				<a href="student_resume.action">我的应聘</a>
				<a href="student_find.action">逛逛企业</a>
			</div>
		</div>
		<div id="section" class="clearfix">
			<div id="left">
				<div id="avatar">
					<img src="${session.user.avatar}" /> 
					<span class="username">${session.user.name}</span>
				</div>
				<div id="banner">
					<h1>我的好友</h1>
					<a href="javascript:select(1)">好友列表</a>
					<a href="javascript:select(2)">添加好友</a>
					<a href="javascript:select(3)">查找好友</a>
				</div>
			</div>
			<div id="right">
				<div id="friend">
					<div class="friend-header">
						<a id="fhi1" href="javascript:select(1)" class="friend-header-item">好友列表</a>
						<a id="fhi2" href="javascript:select(2)" class="friend-header-item">添加好友</a>
						<a id="fhi3" href="javascript:select(3)" class="friend-header-item">查找好友</a>
						<div id="select-scroll"></div>
					</div>
					<script type="text/javascript">
					window.onload = list(1);
					var cur=1;
					function select(id){
						get('fhi'+cur).style.opacity = 0.5;
						get('fd'+cur).style.display = 'none';
						get('fhi'+id).style.opacity = 1;
						get('fd'+id).style.display = 'block';
						get('select-scroll').style.left = (240*(id-1)+85)+'px';
						cur = id;
						if(id==1)
							list(1);
					}
					function get(id){
						return document.getElementById(id);
					}
					</script>
					<div id="fd1" class="friend-body">
					<div id="friendlist" class="clearfix">
				</div>
				<div id="RJ-pagebar" class="RU-pagebar"></div></div>
					<div id="fd2" class="friend-body">
						<div class="searchCondition">
							请输入对方学号查找并添加好友（学号+@+学校编号,例如123456@1001）
						</div>
						<div class="search">
					    	<input id="search1" class="addFriend" type="text"/>
					    	<a href="javascript:list(2)" class="searchButton">搜索</a>
					    </div>
					    <div id="searchResult1" class="searchResult clearfix">
					    </div>
					</div>
					<div id="fd3" class="friend-body">
						<div class="searchCondition">
							请输入对方学号查找您的好友（学号+@+学校编号,例如123456@1001）
						</div>
						<div class="search">
					    	<input id="search2" class="addFriend" type="text"/>
					    	<a href="javascript:list(3)" class="searchButton">搜索</a>
					    </div>
					    <div id="searchResult2" class="searchResult clearfix">
					    </div>
					</div>
				</div>
			</div>
		</div>
<div id="footer">
			<div class="footer-content">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="footbt">
              <tbody>
              <tr>
        		<td height="40" align="center"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          		<tbody><tr>
            	<td id="footerlink" height="20" align="center" style="padding-top:10px;">
            
           		 <a href="http://www.zggz123.com/list.asp?id=330" data-ke-src="http://www.zggz123.com/list.asp?id=330">会员服务</a> | <a href="http://www.zggz123.com/list.asp?id=407" data-ke-src="http://www.zggz123.com/list.asp?id=407">广告服务</a> | <a href="http://www.zggz123.com/list.asp?id=408" data-ke-src="http://www.zggz123.com/list.asp?id=408">项目合作</a> | <a href="http://www.zggz123.com/list.asp?id=409" data-ke-src="http://www.zggz123.com/list.asp?id=409">网站公告</a><br>CopyRight 2014 天津现代职业教育中心版权所有 ICP备14003256号—1<br>【免责声明】本网站所提供的信息资源，如有侵权违规请及时告知&nbsp; 联系电话：022—63301898 &nbsp;邮箱：<a href="mailto:zggzgz123@163.com" data-ke-src="mailto:zggzgz123@163.com">zggzgz123#163.com</a>（请将#换为@）
        
            
            </td>
          </tr>
        </tbody></table></td>
      </tr>
    </tbody></table>
			</div>
		</div>
	</body>
</html>
