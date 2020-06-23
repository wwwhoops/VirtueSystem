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

<title>评价</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600,600i"
	rel="stylesheet">
<!-- Styles -->
<link rel="stylesheet" type="text/css" href="css/social-icons.css">
<link rel="stylesheet" type="text/css" href="css/slick.css">
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
/* star */
#star {
	position: relative;
	width: 600px;
	margin: 20px auto;
	height: 24px;
}

#star ul, #star span {
	float: left;
	display: inline;
	height: 19px;
	line-height: 19px;
}

#star ul {
	margin: 0 10px;
}

#star li {
	float: left;
	width: 30px;
	cursor: pointer;
	text-indent: -9999px;
	background: url(star.png) no-repeat;
}

#star strong {
	color: #f60;
	padding-left: 10px;
}

#star li.on {
	background-position: 0 -28px;
}

#star p {
	position: absolute;
	top: 20px;
	width: 159px;
	height: 60px;
	display: none;
	background: url(icon.gif) no-repeat;
	padding: 7px 10px 0;
}

#star p em {
	color: #f60;
	display: block;
	font-style: normal;
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
	margin-left: 650px;
	margin-top: 8px;
	width: 65px;
	height: 50px;
}
</style>

<script type="text/javascript">
	window.onload = function() {

		var oStar = document.getElementById("star");
		var aLi = oStar.getElementsByTagName("li");
		var oUl = oStar.getElementsByTagName("ul")[0];
		var oSpan = oStar.getElementsByTagName("span")[1];
		var oP = oStar.getElementsByTagName("p")[0];
		var i = iScore = iStar = 0;
		var aMsg = [
			"素质极差|不听劝阻，严重影响同行乘客",
			"不满意|有不文明行为，但无过分行为",
			"一般|有少许不文明行为，但及时认错",
			"满意|行为不错，无不文明现象",
			"非常满意|见义勇为,受到一致好评"
		]

		for (i = 1; i <= aLi.length; i++) {
			aLi[i - 1].index = i;

			//鼠标移过显示分数
			aLi[i - 1].onmouseover = function() {
				fnPoint(this.index);
				//浮动层显示
				oP.style.display = "block";
				//计算浮动层位置
				oP.style.left = oUl.offsetLeft + this.index * this.offsetWidth - 104 + "px";
				//匹配浮动层文字内容
				oP.innerHTML = '<em><b>' + this.index + "</b> 分 " + aMsg[this.index - 1].match(/(.+)\|/)[1] + "</em>" + aMsg[this.index - 1].match(/\|(.+)/)[1]
			};

			//鼠标离开后恢复上次评分
			aLi[i - 1].onmouseout = function() {
				fnPoint();
				//关闭浮动层
				oP.style.display = "none"
			};

			//点击后进行评分处理
			aLi[i - 1].onclick = function() {
				iStar = this.index;
				oP.style.display = "none";
				oSpan.innerHTML = "<strong>" + (this.index) + " 分</strong> (" + aMsg[this.index - 1].match(/\|(.+)/)[1] + ")"
			}
		}

		//评分处理
		function fnPoint(iArg) {
			//分数赋值
			iScore = iArg || iStar;
			for (i = 0; i < aLi.length; i++) aLi[i].className = i < iScore ? "on" : "";
		}

	};
</script>
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
		<h2 style="font-size: 45px;margin-top:50px;">请对已选择用户进行评价</h2>
		<img src="photo/diandian.png">
		
		<form action="Addevaservlet" method="post" role="from"
			>

			<!-- 与文件同时提交！-->
			<!--  enctype="multipart/form-data"-->

			<input type="hidden" name="ticket_num" value="<%=bevaluator%>">
			<textarea type="text" name="evaluations" placeholder="请输入评价内容"
				style="width: 550px;height: 150px;"></textarea>
			<%
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
				String CurrentTime = (String) df.format(new Date());// new Date()为获取当前系统时间
			%>
			<input type="hidden" name="time" value="<%=CurrentTime%>">

			<div id="star">
				<span style="font-size: 20px;padding-left: 25px;">乘客个人素质星级打分</span>
				<ul>
					<li><a href="javascript:;">1</a></li>
					<li><a href="javascript:;">2</a></li>
					<li><a href="javascript:;">3</a></li>
					<li><a href="javascript:;">4</a></li>
					<li><a href="javascript:;">5</a></li>
				</ul>
				<span></span>
				<p></p>
			</div>
			<!--star end-->
			
			
			
			<!--  style="opacity: 0 -->
			
			
			
			<br>
			<button type="submit"
				style="width:100px;
height；30px;
background: #25b7c3;
  color: #fff;
  font-size: 20px;
  text-align: center;
  border: none;
  border-radius: 100px;
  box-shadow: 0 4px 10px #25c289;
  font-weight: bold;">提交</button>
		</form>
		
		
	</div>

</body>

</html>

