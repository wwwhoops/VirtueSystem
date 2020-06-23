<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>用户登录</title>
	<link rel="stylesheet" type="text/css" href="loginPublic/css/styles.css">
	  <link rel="stylesheet" href="loginPublic/css/jigsaw.css">
	  <style>
	  	
	  	  #msg {
      width: 100%;
      line-height: 40px;
      font-size: 14px;
      text-align: center;
    }
	  </style>
</head>
<body>
	<div class="jq22-container" style="padding-top:40px">
		<div class="login-wrap">
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">登录</label>
				<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
				
				<div class="login-form">
					<form action="LoginPublicServlet" method="post">
					<div class="sign-in-htm">
						<div class="group">
							<label for="user" class="label">车票号或用户名</label>
							<input id="username" name="administrater" placeholder="请输入车票号后六位或用户名" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label>
							<input id="password" type="password" class="input" data-type="password" name="upwd" placeholder="请输入密码">
						</div>
						<div class="group">
							<div class="container">
							    <div id="captcha" style="position: relative" data-type="password"></div>
								<div id="msg"></div>
							</div>
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> 保持登录</label>
						</div>						
						<div class="group">
							<input type="submit" class="button" value="登录" onClick="sub()">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">忘记密码?</a>
						</div>
					</div>
					</form>
					<!--  
					<form action="RegistPublicUser" method="get">
					<div class="sign-up-htm">
						<div class="group">
							<label for="user" class="label" >用户名</label>
							<input id="users" type="text" class="input" name="admin" >
						</div>
						<div class="group">
							<label for="user" class="label" >车票号</label>
							<input id="users" type="text" class="input" name="ticket_num" placeholder="请输入车票号后六位">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label>
							<input id="passs" type="password" class="input" data-type="password" name="stuno" >
						</div>
						
						<div class="group">
							<label for="pass" class="label">性别</label>
							<input id="passs" type="text" class="input"  name="gender" >
						</div>
						<div class="group">
							<label for="pass" class="label">年龄</label>
							<input id="pass" type="text" class="input" name="age">
						</div>
						<div class="group">
							<a href="register.html"><input type="submit" class="button" value="注册"></a>
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<label for="tab-1">已经注册?</a>
						</div>
					</div>
					</form>
					-->
				</div>
			</div>
		</div>
	</div>	
	<script src="loginPublic/js/jigsaw.js"></script>
<script>
	var flag=false;	
	function sub(){
		var name=document.getElementById('administrater').value;
		var pass=document.getElementById('upwd').value;
		var cname;
		var cpass;
		if(name==cname && pass==cpass && flag==true){
		alert("验证成功!")
			//window.location.href="#";
		}else{
			if(flag==false){
				alert("验证失败!");
				return;
			}else{
			alert("用户名或密码错误!")
			}
		}
			}
	 jigsaw.init(document.getElementById('captcha'), function () {
  	 flag=true;
    document.getElementById('msg').innerHTML = '验证通过！'  
  })
</script>
</body>
</html>