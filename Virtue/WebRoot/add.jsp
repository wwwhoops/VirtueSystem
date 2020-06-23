<%@page import="cn.Evaluation.Bean.Student"%>
<%@ page import="cn.Evaluation.Dao.StudentDao"%>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

	
  </head>
  
  <body>
    <h2>新增用户信息</h2>
      <form action="Addservlet" method="post" role="from" id = "newUser">

            姓名：<input type="text" name="name" placeholder="姓名"><br>
            密码：<input type="text" name="stuno" placeholder="密码"><br>
	  性别：<input type="text" name="gender" placeholder="性别"><br>
            年龄：<input type="text" name="age" placeholder="年龄"><br>
            <button type="submit" >提交</button>
            
      </form>
      <a href="index.jsp"><button>返回</button></a>
  </body>

</html>
