<%@page import="cn.Evaluation.Bean.Student"%>
<%@ page import="cn.Evaluation.Dao.StudentDao"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>



<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>提交成功</title>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Fonts -->



<link rel="stylesheet" type="text/css" href="css/style.css">



<style type="text/css">
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

body {
	color: #666;
	font: 12px/1.5 Arial;
}


#head_por {
	width: 50px;
	border: 1px solid #a9f;
	padding: 10px;
	border-radius: 50%;
	position: absolute;
	margin-top: -76px;
	margin-left: 500px;
}

#logout {
	position: absolute;
	margin-left: 1160px;
	margin-top: -56px;
}

#upPicture {
	position: absolute;
	margin-left: 626px;
	margin-top: 16px;
	width: 80px;
	height: 60px;
}
</style>


</head>
<%
	String bevaluator = request.getParameter("ticket_num");
%>
<body>
	<header id="header"> <!-- Section title -->
	<h1 class="sr-only">Molly | Home page</h1>

	<nav id="main-navigation"
		class="navbar navbar-default navbar-fixed-top"> <!-- Section title -->
	<h1 class="sr-only">Main navigation</h1>

	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#main-navbar"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="sr-only">Toggle
					navigation</span>
			</button>
			<a id="brand-mobile"
				class="navbar-brand navbar-brand-center smoothScroll" href="#home">
				<img alt="Molly" src="img/svg/logo.svg">
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="main-navbar">
			<ul class="nav navbar-nav">


				<li id="brand-desktop"><a class="navbar-brand smoothScroll"
					href="client.jsp"> <img alt="Molly" src="img/svg/logo.svg">
				</a></li>


			</ul>
			<div id="right_top">


				<%
					if (session.getAttribute("name") == null) {
				%>
				<a href="loginPublic.jsp"><img src="img/head.png " id="head_por">

					<%
						
					%> </a>

				<%
					} else {
				%>
				<a href="myself.jsp"><img src="img/head.png " id="head_por">
					<%
						}
					%> </a>


				<!--  <a href="myself.jsp"><img src="img/head.png " id="head_por"></a>-->
			</div>

			<%
				if (session.getAttribute("name") == null) {
			%>
			<div id="logout">
				<a href="loginPublic.jsp">登录 <%
					
				%>
				</a>
			</div>

			<%
				} else {
			%>
			<div id="logout">
				<a href="LogoutServlet">注销 <%
					}
				%>
				</a>
			</div>








			<!--  <div id="logout"><a href="LogoutServlet">注销</a></div>-->
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav> </header>
	<div style="text-align: center;">
		<h2 style="font-size: 45px;margin-top:50px;">提交评价成功！</h2>
		<img src="photo/diandian.png">
		
		
  <p>还有照片要上传？点击下方按钮以选择照片</p>
    <form action="Addevaservlet1" method="post" role="from" enctype="multipart/form-data">
			
			<div>
			
			<!--  style="opacity: 0 -->
			<input type="file" name="uploadFile" id=upPicture style="opacity: 0"><img
				src="photo/xiangji.png">
			
			
			   
			<button type="submit"  style="width:100px;
height；30px;
background: #25b7c3;
  color: #fff;
  font-size: 20px;
  text-align: center;
  position:absolute;
  margin-left:-83px;
  margin-top: 100px;
  border: none;
  border-radius: 100px;
  box-shadow: 0 4px 10px #25c289;
  font-weight: bold;">上传</button> 
  

			</div>
		</form>
		
		
	</div>

</body>

</html>

