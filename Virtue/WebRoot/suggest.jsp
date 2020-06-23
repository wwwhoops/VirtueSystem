<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'suggest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
		function ClearTextArea()
		  {
		     document.getElementById("textarea").value="";
		  }
	</script>
	
	
	


  </head>
  
  <body>
    <center><font font-family=宋体 font-size=8px color="red">
    欢迎您提出建议
</font>
</center>
</br>
<div class="text1"></div>
<textarea id="textarea" rows="8" cols="50" onKeyDown="textdown(event)"
    onKeyUp="textup()" onfocus="if(value=='请输入你的个人描述'){value=''}"
    onblur="if (value ==''){value='请输入你的个人描述'}">请输入你的个人描述</textarea></br>
	<input type="reset" value="重置" onclick="ClearTextArea()">  
    <a href="success.jsp"><input type="submit" value="提交" >  </a>

  </body>
</html>
