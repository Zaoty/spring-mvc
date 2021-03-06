<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>SpringMVC+MySQL查询分页技术（1.0版本）</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="CSS/myapplications.css" type="text/css" />

<script type="text/javascript">
//首页功能
function gotoFirstPage(){
    //获取当前项目的根路径
    var base_path = document.getElementById("base_path").value;
    //当前的action请求
    var action_path = 'mysqlQueryPage_1_0.action?current_page=1';
    //需要发送的完整请求
    var path = base_path + action_path;
    //alert(path);
    location.href = path;
}
//到达尾页功能
function get_url_from_a(){
    //获取当前项目的根路径
    var base_path = document.getElementById("base_path").value;
    //当前的action请求
    var action_path = 'mysqlQueryPage_1_0.action';
    //获取用户输入文本框中的页码
    var page_appointed = document.getElementById("page_appointed").value;
    
    //对用户输入的值进行校验
    //1，如果用户输入的是字母或者其他特殊字符，提示用户输入数字
    var regex = /^[0-9]+$/;
    if(!regex.test(page_appointed)){
        alert("您输入的不是有效的页码...");
    }
    else{
        var path = base_path + action_path + '?current_page=' + page_appointed;
        //测试输出
        location.href = path;
    }
}

//获取被选中的a标签的值
function getUrl(e) {
    e = e || event;
    var target = e.target || e.srcElement,
        href;
    if (target.tagName === 'A') {
        href = target.href;
        // 测试代码
        //alert(href);
    }
}

</script>


  </head>
  
<body onclick="getUrl(arguments[0])">

<!-- 隐藏标签传值 -->
<input type="hidden" id="base_path" value="<%=basePath%>"/>

<!-- 分页操作按钮栏 -->
<div id="container">   
	<table class="zebra">
		<thead>
        	<tr>
			<th><a href="javascript:void(0)" onclick="gotoFirstPage();">首</a></th>
<c:forEach items="${total_pages}" var="item">
            <th><a href="<%=basePath%>mysqlQueryPage_1_0.action?current_page=${item}" onclick="getUrl(e);return false;">${item}</a></th>
</c:forEach>
			<th><a href="<%=basePath%>mysqlQueryPage_1_0.action?current_page=8080">尾</a></th>
			<th>到第<input type="text" name="page_appointed" id="page_appointed" />页
			<a href="#" onclick="get_url_from_a();return false;">确定</a>
			</th>
            </tr>
		</thead>
	</table>
</div>

<div id="container">   
	<table class="zebra">
    <caption>SpringMVC+MySQL查询分页技术（1.0版本）</caption>
		<thead>
        	<tr>
				<th>项目名称</th>
				<th>简单描述</th>
				<th>用到的技术</th>
				<th>查看详情</th>
            </tr>
		</thead>
        <tbody>
        	<tr>
            	<td>MySQL查询分页技术</td>
                <td>查询结果在JSP页面分页展示</td>
                <td>SpringMVC3.0+MySQL数据库5.5</td>
                <td></td>
            </tr>
            <c:forEach items="${mytest}" var="item">
        	<tr>
            	<td>${item.myid}</td>
                <td>${item.mydata}</td>
                <td>${item.myname}</td>
                <td>操作</td>
            </tr>
            </c:forEach>
        </tbody>
	</table>
</div>


</body>
</html>
