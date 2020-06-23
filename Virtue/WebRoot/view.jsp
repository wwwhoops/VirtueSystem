<%@page import="cn.Evaluation.Bean.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'view.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<style type="text/css">
	table{
	border:1px solid gray;
	border-collapse:collapse;
	width:50%
	}
	td{
	border:1px solid gray;
	}
</style>
</head>

   <body>
    <h2>用户个人基本信息</h2>
   <table>
   <tr>
    <td>编号</td>
    <td>学号</td>
    <td>姓名</td>
    <td>性别</td>
    <td>年龄</td>
    </tr> 
     <tr>
      <%
	Student s=(Student)request.getAttribute("students");
	 %>
     <td><%=s.getId()%></td>
     <td><%=s.getStuno()%></td>
     <td><%=s.getName()%></td>
     <td><%=s.getGender()%></td>
     <td><%=s.getAge() %></td>
     </tr>
   </table>
   <a href="index.jsp"><button>返回</button></a>
  </body>

</html>
