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
   行： <select>  
		<option value="01">01</option> 
		<option value="02">02</option>  
		<option value="03">03</option>  
		<option value="04">04</option>  
		<option value="05">05</option>  
		<option value="06">06</option>  
		<option value="07">07</option>  
		<option value="08">08</option>
		<option value="09">09</option> 
		<option value="10">10</option>  
		<option value="11">11</option>  
		<option value="12">12</option>  
		<option value="13">13</option>  
		<option value="14">14</option>  
		<option value="15">15</option>  
		<option value="16">16</option> 
		<option value="17">17</option> 
		<option value="18">18</option>  
		<option value="19">19</option>  
		<option value="20">20</option>  
		   
    </select>
     列： <select>  
		<option value="A">A</option> 
		<option value="B">B</option>  
		<option value="C">C</option>  
		<option value="D">D</option>  
		<option value="E">E</option>  
		<option value="F">F</option>   
    </select>
    </br></br>
    评价内容： </br>
    <input type="radio" name="content" value="尊老爱幼" checked="checked">尊老爱幼  
    <input type="radio" name="content" value="待人亲和">待人亲和  
    <input type="radio" name="content" value="尖酸刻薄">尖酸刻薄  
    <input type="radio" name="content" value="素质低劣">素质低劣 
    <input type="radio" name="content" value="其他">其他 </br></br>
    描述详情：<br/><textarea id="textarea" rows="8" cols="50" onKeyDown="textdown(event)"
    onKeyUp="textup()" onfocus="if(value=='请输入你的个人描述'){value=''}"
    onblur="if (value ==''){value='请输入你的个人描述'}">请输入你的个人描述</textarea></br>
	<input type="reset" value="重置" onclick="ClearTextArea()">  
    <a href="success.jsp"><input type="submit" value="提交" >  </a>
    
  </body>
</html>
