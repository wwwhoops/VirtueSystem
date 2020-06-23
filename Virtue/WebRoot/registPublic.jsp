<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>  
<title>德行-注册</title>  
<script language="JavaScript">  
    function isValidate(form)  
    {  
          
        stuno = form.stuno.value; 
		stuno2 = form.stuno2.value;  

        if(stuno != stuno2)  
        {  
            alert("两次输入的密码不相同！");
	    form.stuno.focus();
	    return false;  
        }  
        
    }  

    function isNumber(str)  
    {  
        for(i=0;i<str.length;i++)  
        {  
            if(str.charAt(i)>='0' && str.charAt(i)<='9' 
			|| str.charAt(i)=="-" && i==0)  
                continue;  
            else  
                return false;  
        }  
        return true;  
    }  
      
</script>
<style type="text/css">
	body{
		background: url(zhucebeijing.jpg);
		background-size: cover;
	}

	.pop{
		
		float: right;
		text-align: center;
		margin-top: 100px;
		width: 500px;
		height: 300px;
	}
	.but{
	width:100px;
	height:40px;
	
	}
	.input{
	height:40px;
	width:230px;
	}
	#reset{
	background-color:rgb(194,58,44);
	}
	#submit{
	background-color:rgb(21,83,160);
	margin-left: 100px;
	}
	#ta{
	text-align:justify;
    text-align-last:justify;
    font-family:STHeiti;
	}

	span{
		font-size: 19px;
	}

</style>
</head>  
<body>  
<div class="pop" >
<h1 align="center">欢迎注册&nbsp;&nbsp;<span>德行</span></h1>  
<form name="form1" onsubmit="isValidate(this)" action="RegistPublicUser" method="get">  
<table align="center" id="ta">  
<tr><td> 用户名</td><td><input type="text" name="admin" placeholder="请输入用户名" class="input" style="BACKGROUND-COLOR: transparent;"></td></tr>  
<tr><td> 密码</td><td><input type="password" name="stuno" placeholder="请输入密码" class="input" style="BACKGROUND-COLOR: transparent;"></td></tr>
<tr><td> 确认密码</td><td><input type="password" name="stuno2" placeholder="请再次输入密码" class="input" style="BACKGROUND-COLOR: transparent;"></td></tr>
<tr><td> 性别</td><td><input type="text" name="gender" placeholder="设置性别 男/女" class="input" style="BACKGROUND-COLOR: transparent;"/></td></tr>
<tr><td> 年龄</td><td><input type="text" name="age" placeholder="请输入年龄" class="input" style="BACKGROUND-COLOR: transparent;"></td></tr>  

</table>  
<tr><td><input type="reset" value="重置" class="but" id="reset" ></td><td>
<input type="submit" value="提交" class="but" id="submit"></td></tr>  
</form>  
</div>
	<p style="color:red;font-weight:500">${msg }</p>
	</center>
  </body>
</html>
