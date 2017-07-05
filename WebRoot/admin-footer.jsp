<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin-data.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/admin-footer.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/tinymce.min.js"></script>
	
	<script type="text/javascript" src="js/themes/modern/theme.min.js"></script>
	<script type="text/javascript" src="js/admin-footer.js"></script>

  </head>
  
  <body>
    	<div id="header">
			<h1 class="topHeader1">中国职业教育网后台管理系统</h1>
		</div>
		<div id="section">
			<div id="nav">
				<a href="admin_index.action">主页</a>
				<a href="admin_main.action">首页信息上传</a>
				<a href="admin_edit.action">首页信息编辑</a>
				<a href="admin_data.action">导入学生数据</a>
				<a href="admin_school.action">学校信息管理</a>
				<a href="admin_enterprise.action">企业信息管理</a>
				<a href="admin_employ.action">招聘信息管理</a>				
				<a href="admin_resume.action">简历投递统计</a>
				<a class="active">尾部信息管理</a>				
				<a href="admin_querypsw.action">重置密码</a>
				<a href="admin_exit.action">退出系统</a>
			</div>
			<div id="content">
				<div class="tab3">
				<h1 class="topHeadr2">尾部信息管理</h1>			
				<form action="infoup_update_footer.action" method="post" enctype="multipart/form-data" target="_top" >
					<div id="selectdiv" class="row2">
						<div class="span1">条目：</div>
						<select name="footerItem" id="selector" onChange="select(this)">
	  						<option value="memberService">会员服务</option>
	  						<option value="adService">广告服务</option>
	  						<option value="projectCoorperation">项目合作</option>
	  						<option value="webNotice">网页公告</option>
						</select>
					</div>				
						<div id="linkdiv" class="row2">
							<div class="span1">链接：</div>
							<div class="span11">
								<input type="text" name="link" id="link" />
								<label style='font-size:15px'>（请添加完整url地址，如：http://www.baidu.com）</label>
							</div>
						</div>
						<div class="row4">			
							<p><input id="newsup" class="newsup" type="submit" value="上传" /></p>
							<p><input id="uplabel" type="submit" value="上传"/></p>
						</div>
				</form>	
				</div>			
			</div>	
				<iframe id="status" class="tab3"></iframe>
		</div>
		<div id="footer">

		</div>
  </body>
</html>
