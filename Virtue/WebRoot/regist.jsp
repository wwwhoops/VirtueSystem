<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Registered.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<center>
			管理员注册页面
			<form action="RegistUser" method="get">
				<table border=1px>
					<Tr>
						<td>用户名:</td>
						<td><input type="text" name="admin"></td>
					</Tr>
					<Tr>
  						<td>密    码:</td>
  						<td><input type="password" name="pwd"></td>
  					</Tr>
  					<tr>
  						<td colspan="2" align="center"><input type="submit" value="注册"></td>
  					</tr>
				</table>
			</form>
			<p style="color:red;font-weight:500">${msg }</p>
	</center>
  </body>
<html>