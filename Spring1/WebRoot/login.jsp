<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>登录界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  </head>
  
<body>

<form action="UserLoginValidate_4.action" method="post">
    
    <p>用户名：<input name="username" type="text"></p>
    <p>密码：<input name="password" type="password"></p>
    <p><input name="submit" type="submit" value="登录">
    <a href="context.jsp"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册新账号</a>
</form>

</body>
</html>
