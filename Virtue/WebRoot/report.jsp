<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<script type="text/javascript">
		function ClearTextArea()
		  {
		     document.getElementById("textarea").value="";
		  }
	</script>
  </head>
 
  
  <body>
  选择对象：
 <select>  
		<option value="乘客">乘客</option> 
		<option value="工作人员">工作人员</option>  
		
    </select></br></br>
     
   举报内容： </br>
    <input type="radio" name="content" value="破坏公物" checked="checked">破坏公物 
    <input type="radio" name="content" value="态度方面">态度方面  
    <input type="radio" name="content" value="社会爱心">社会爱心
    <input type="radio" name="content" value="社会公德">社会公德 
    <input type="radio" name="content" value="其他">其他 </br></br>
    
    描述详情：<br/><textarea id="textarea" rows="8" cols="50" onKeyDown="textdown(event)"
    onKeyUp="textup()" onfocus="if(value=='请输入你的个人描述'){value=''}"
    onblur="if (value ==''){value='请输入你的个人描述'}">请输入你的个人描述</textarea></br>
	<input type="reset" value="重置" onclick="ClearTextArea()">  
    <a href="success01.jsp"><input type="submit" value="提交" >  </a>
    
  </body>
</html>
