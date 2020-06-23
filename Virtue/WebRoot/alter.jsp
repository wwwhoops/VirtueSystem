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
    
    <title>My JSP 'alter.jsp' starting page</title>
    
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
      <h2>修改学生个人信息</h2>  
      <form action="Alterservlet" method="post">
      <table>
           <tr>
           <%
		 Student s=(Student)request.getAttribute("students");
	     %>
           <td>编号</td>
           <td><input type="text" name="id" value="<%=s.getId() %>" ></td></tr>
           <tr><td>密码</td>
           <td><input type="text" name="stuno" value="<%=s.getStuno()%>"></td></tr>
           <tr><td>姓名</td>
           <td><input type="text" name="name" value="<%=s.getName() %>"></td></tr>
           <tr><td>性别</td>
           <td><input type="text" name="gender" value="<%=s.getGender()%>"></td></tr>
           <tr><td>星级</td>
           <td><input type="text" name="age" value="<%=s.getAge()%>"></td></tr>
           <tr><td colspan="2">
           <input type="submit" value="提交"></td></tr>
           </table>
           <a href="index.jsp"><button>返回</button></a>
       </form>       
  </body>

</html>
