<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>德行-登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
<style type="text/css">
body {
margin: 0;
padding: 0;
color: #666;
background: #c1d2fe;
font-family: Verdana, sans-serif
}


.form_login {
max-width: 640px;
margin: auto;
text-align: center;
padding-top: 100px;
}

.form-group {
width: 355px;
margin: 0 auto;
height: 50px;
margin-bottom: 20px;
}

.form-group .fa {
display: block;
width: 50px;
height: 50px;
float: left;
}

.form-group .form-control {
display: block;
width: 300px;
height: 48px;
float: left;
border: 1px solid #ccc;
padding: 0;
margin-left: 0px;
text-indent: 1em;
themeColor: #00a988;
}

.form-group .form-control:hover {
border: 1px solid #0160A0;
}

.form-group .checkfont {
color: #666;
}

.form-group .btn {
width: 350px;
height: 50px;
background-color: #0160A0;
border: 0px;
color: #fff;
font-size: 14px;
}

.fa-user {
background: url(http://hovertree.com/texiao/mobile/10/images/user.png) no-repeat center;
}

.fa-key {
background: url(http://hovertree.com/texiao/mobile/10/images/pw.png) no-repeat center;
}

.hovertree_form_footer {
margin-top: 100px;
font-size: 14px;
color: #5B809A;
}
.form_logo{font-size:26px;}a{color:gray}

</style>
<body>
<div class="form_login">
<div class="form_logo"><img src="" />
<br />
德行评价系统</div>
<form method="post" role="form" id="form_login" action="LoginServlet">

<div class="form-group">
<i class="fa fa-user"></i>
<input type="text" class="form-control" name="administer" id="username" placeholder="Username" autocomplete="off">
</div>

<div class="form-group">
<i class="fa fa-key"></i>
<input type="password" class="form-control" name="upwd" id="password" placeholder="Password" autocomplete="off">
</div>
<div class="form-group" style="height:25px; line-height:25px; text-align:left;">
<input type="checkbox" class="" name="checkbox" id="checkbox" placeholder="checkbox" autocomplete="off">
<label class="checkfont" for="checkbox" >记住我的帐号</label>
</div>
<div class="form-group">
<button type="submit" class="btn btn-primary btn-block btn-login">登录</button>

</div>

</form>
<div class="hovertree_form_footer">&copy; 德行.com</div>
</div>
</body>
</html>