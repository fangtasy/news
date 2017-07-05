<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'student-blog.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style_1.css">
	<link rel="stylesheet" type="text/css" href="css/student-blog.css">
	<script type="text/javascript" src="js/friendbloglist.js"></script>

  </head>
  
  	<body>
		<div id="header">
			<h1>学生空间</h1>
			<div id="exit">
				<a href="student_person.action">返回</a>
			</div>
		</div>
		<div id="nav">
			<div class="nav-content">
				<a href="student_friendphoto.action">相册</a>
				<a class="active">日志</a>
			</div>
		</div>
		<div id="section" class="clearfix">
			<div id="left">
				<div id="fun1">
					<h1 class="sub-title">我的日志</h1>
					<div id="blog">
						<div id="bloglist" class="clearfix">
						</div>
						<div id="RJ-pagebar" class="RU-pagebar"></div>
					</div>
				</div>
			</div>
			<%--<div id="right">
				<div id="avatar">
					<img src="${session.user.avatar}" />
					<span>云淡风轻</span>
				</div>
				<div class="counter">
					您当前共有0分日志
				</div>
				
			</div> --%>
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
