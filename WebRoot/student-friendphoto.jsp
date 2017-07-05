<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'student-photo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/cover.css">
	<link rel="stylesheet" type="text/css" href="css/student-photo.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/cover.js"></script>
	<script type="text/javascript" src="js/friendphotolist.js"></script>
  </head>
  
  <body>
    <div id="header">
			<h1>好友空间</h1>
			<div id="exit">
				<a href="student_person.action">返回</a>
			</div>
		</div>
		<div id="nav">
			<div class="nav-content">
				<a class="active">相册</a>
				<a href="student_friendblog.action">日志</a>
			</div>
		</div>
		<div id="section" class="clearfix">
			<%-- <div id="left">
				<div id="avatar">
					<img src="${session.user.avatar}" /> 
					<span class="username">${session.user.name}</span>
				</div>
				<div id="banner">
					<h1>我的相册</h1>
					<a>我的照片</a>
				</div>
			</div>--%>
			<div id="right">
				<div id="photolist" class="clearfix">
				</div>
				<div id="RJ-pagebar" class="RU-pagebar"></div>
				<a href="#" id="listMore">加载更多</a>
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
