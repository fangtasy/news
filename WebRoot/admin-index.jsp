<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'administrator.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/administrator.css">
	<link rel="stylesheet" type="text/css" href="css/window.css">
	<link rel="stylesheet" type="text/css" href="css/cover.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/administrator.js"></script>
	<script type="text/javascript" src="js/window.js"></script>
	<script type="text/javascript" src="js/cover.js"></script>

  </head>
  
  <body>
 
  
  <!-- 密码弹窗部分-->
  
  <div class="box">
	<div class="box_content">
		<div class="title">
			<h3>修改密码</h3>
			<h2 id="close">×</h2>
		</div>
		<div class="content">
		<form action="adminChangePSW.action" method="post" enctype="multipart/form-data" target="changeStatus">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr height="60px">
					<td colspan="2">
						<p class="prompt" id="username_p">请输入原密码</p>
						<input type="text" class="inputstyle ins" id="username" name="oldpassword"/>
					</td>
				</tr>
				<tr height="60px">
					<td colspan="2">
						<p class="prompt" id="pwd_p">请输入密码</p>
						<input type="password" class="inputstyle ins" id="pwd" name="newpassword"/>
					</td>
				</tr>
				<tr height="60px">
					<td colspan="2">
						<p class="prompt" id="pwd_temp">请确认密码</p>
						<input type="password" class="inputstyle ins" id="pwd" name="temppassword"/>
					</td>
				</tr>
				<tr height="60px">
					<td colspan="2"><input type="submit" value="确定" class="inputstyle login" id="login"/></td>
				</tr>
			</table>
			</form>
			<iframe id="changeStatus"></iframe>
		</div>
	</div>
  </div>
  
  
  
    <div id="header">
			<h1 class="topHeader">中国职业教育网后台管理系统</h1>
		</div>
		<div id="section">
			<div id="nav">
				<a class="active">主页</a>
				<a href="admin_main.action">首页信息上传</a>
				<a href="admin_edit.action">首页信息编辑</a>
				<a href="admin_data.action">导入学生数据</a>
				<a href="admin_school.action">学校信息管理</a>
				<a href="admin_enterprise.action">企业信息管理</a>
				<a href="admin_employ.action">招聘信息管理</a>				
				<a href="admin_resume.action">简历投递统计</a>
				<a href="admin_footer.action">尾部信息管理</a>				
				<a href="admin_querypsw.action">重置密码</a>
				<a href="admin_exit.action">退出系统</a>
			</div>
			<div id="content">
				<div class="tab3">
				欢迎登陆中国职业教育网后台管理系统！
				</div>
				<div class="tab tab3">
					<div class="tabHeader">
						系统信息浏览
					</div>
					<div class="tabContent">
						<div class="row">
							<div class="span80p textleft">系统学生人数</div>
							<div id="stn" class="span20p textright"></div>
						</div>
						<div class="row">
							<div class="span80p textleft">系统简历数量</div>
							<div id="rsn" class="span20p textright"></div>
						</div>
						<div class="row">
							<div class="span80p textleft">系统企业个数</div>
							<div id="epn" class="span20p textright"></div>
						</div>
						<div class="row">
							<div class="span80p textleft">简历投递记录</div>
							<div id="rcn" class="span20p textright"></div>
						</div>
					</div>
				</div>
				<div class="changePSW">
					<div>
						<button id="show">修改管理员密码</button>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">

		</div>
  </body>
</html>