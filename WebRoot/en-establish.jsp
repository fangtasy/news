<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布招聘信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" href="css/en-style.css" rel="stylesheet">
	<link type="text/css" href="css/en-establish.css" rel="stylesheet">
	<link href="css/jquery-ui.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/en-establish.js"></script>
	</head>
	<body>
	<div id="datepicker" style='display:none;position:absolute'></div>
		<div id="header">
			<div class="header-content">
				<h1>企业中心</h1><h1>${session.user.name}</h1>
				<a href="enterprise_exit.action" id="exit">退出</a>
			</div>
		</div>
		<div id="nav">
			<a href="enterprise_person.action">企业中心</a>
			<a href="enterprise_photo.action">企业相册</a>
			<a href="enterprise_resume.action">收到的简历</a>
			<a class="active">发布招聘信息</a>
			<a href="enterprise_published_resume.action">已发布的招聘信息</a>
		</div>
		<div id="section">
			<form id="establishform" action="establish.action" method="post">
			<div class="row-header">
				<span>请手动填写以下信息</span>
			</div>
			<div class="row-content">
				<table>
					<tr>
						<td>发布公司：</td>
						<td colspan="9">
						<input type="text"  name="ename" value="${session.user.name}" readOnly/></td>
					</tr>
					<tr>
						<td>标题：</td>
						<td colspan="9"><input id="emtitle" type="text" name="title"/>
						</td>
					</tr>
					<tr>
						<td>详细内容：</td>
						<td colspan="9">
						<textarea id="emcontent" name="content" placeholder='字数不超过140字'></textarea>
						</td>
					</tr>
					<tr>
						<td>截止日期：</td>
						<td colspan="9">
							<input id="dateup" type="text" readonly="readonly" name="deadline"/>
							<input id="dateshow" type="button" onclick="show_datepicker()" value="选择时间"/>
							
						</td>
					</tr>
					<tr>
						<td colspan="10">
							<input type="button" value="提交" class="submit" onclick="establish()" />
						</td>
					</tr>
				</table>
			</div>
			</form>
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