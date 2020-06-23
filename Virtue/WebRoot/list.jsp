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
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	table{
	border:1px solid gray;
	border-collapse:collapse;
	width:100%
	}
	td{
	border:1px solid gray;
	}
	</style>
	<%
	List<Student> list=(List<Student>)request.getAttribute("students");
	 %>
 
  </head>
  
  <body>
   <table>
   <tr>
    <td>编号</td>
    <td>密码</td>
    <td>姓名</td>
    <td>性别</td>
    <td>年龄</td>
    <td>登录名</td>
    <td>选择</td>
    </tr> 
    <%
    if(list != null){
	    for(Student s:list){
	     %>
	     <tr>
	     	 <td><%=s.getId() %></td>
		     <td><%=s.getStuno() %></td>
		     <td><%=s.getName() %></td>
		     <td><%=s.getGender() %></td>
		     <td><%=s.getAge() %></td>
		     <td><%=s.getTicket_num() %></td>
		     <td>
		     	 <a href="Delservlet?id=<%=s.getId() %>"><button>删除</button></a>
		         <a href="updataservlet?id=<%=s.getId() %>"><button>修改</button></a>
		         <a href="viewservlet?id=<%=s.getId() %>"><button>查看</button></a>
		     </td>
	     </tr>
  <%
  }
  } %>
   </table>
   <br>
   <a href="add.jsp"><button>添加学生信息</button></a>
   <a href="index.jsp"><button>返回</button></a>
  </body>

</html>
