<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>我的信息</title>

	<style type="text/css">
		#selfInfo{
			margin-left: 300px;

		}
		#modify{
			width: 150px;
			height: 30px;
			
			color: black;
			position: absolute;
			margin-left: 500px;
			margin-top: -470px;
			border-radius: 7px;
			background: rgb(171,223,208);
			border: none;
			font-size: 17px;
		}
		#modify:hover{
			background-color:white;
			

		}
		#info{
			margin-left: 200px;
			margin-top: -120px;


		}
		#head_por { 
			width: 100px; 
			height: 100px; 
			-moz-border-radius: 50px; 
			-webkit-border-radius: 50px; 
			border-radius: 50px;
			margin-left: 30px; 
		 } 
	/*	#head_por{
			width: 100px;
			border: 2px solid #a9f;
			padding: 10px;

			border-bottom: 4px solid #33f;

			border-radius: 50%;
			box-shadow: 2px 2px 1px 1px;
			margin-left: 300px;
		}*/
		#sum{

			
			<!-- background:url("https://images.pexels.com/photos/958169/pexels-photo-958169.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");-->

			width: 700px;
			height:600px;
			margin-left: 270px;
			margin-top:-650px;
			position:absolute;
			background: -webkit-linear-gradient(230deg, rgba(3, 0, 7, 0) 0%, rgb(100, 100, 100) 100%);
		}
		#jianjie{
			background: none;
			color: white;
		}
		#ding{
		width:600px;
		}
		


	</style>

<link type="text/css" rel="stylesheet" href="self/css/default.css" />
<!--必要样式-->
<!--  <link type="text/css" rel="stylesheet" href="self/css/styles.css" />-->
<link type="text/css" rel="stylesheet" href="self/css/demo.css" />	
<!--  <link type="text/css" rel="stylesheet" href="self/css/loaders.css" />-->
</head>

</head>

<body>
<!--  <link type="text/css" rel="stylesheet" href="self/layui/css/layui.css" />-->
<script type="text/javascript" src="self/js/jquery.min.js"></script>
<!--<script type="text/javascript" src="self/js/jquery-ui.min.js"></script>-->
<!--<script type="text/javascript" src='self/js/stopExecutionOnTimeout.js?t=1'></script>-->
<!--<script type="text/javascript" src="self/layui/layui.js"></script>-->
<script type="text/javascript" src="self/js/particleground.js"></script>
<!--<script type="text/javascript" src="self/js/treatment.js"></script>-->
<!--<script type="text/javascript" src="self/js/jquery.mockjax.js"></script>-->
<script type="text/javascript">


//粒子背景特效
$('body').particleground({
    dotColor: '#E8DFE8',
    lineColor: '#133b88'
});
$('input[name="pwd"]').focus(function () {
    $(this).attr('type', 'password');
});
$('input[type="text"]').focus(function () {
    $(this).prev().animate({ 'opacity': '1' }, 200);
});
$('input[type="text"],input[type="password"]').blur(function () {
    $(this).prev().animate({ 'opacity': '.5' }, 200);
});
$('input[name="login"],input[name="pwd"]').keyup(function () {
    var Len = $(this).val().length;
    if (!$(this).val() == '' && Len >= 5) {
        $(this).next().animate({
            'opacity': '1',
            'right': '30'
        }, 200);
    } else {
        $(this).next().animate({
            'opacity': '0',
            'right': '20'
        }, 200);
    }
});


        
 



</script>
    <%
    //user为数据库的名字 
    String url="jdbc:mysql:///user?useSSL=false&serverTimezone=UTC";
    String username="root";
    String password="";
    String sql=null;
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs = null;
    
    //加载驱动类
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
    }
    catch(ClassNotFoundException e){
        out.print("加载驱动类时出现异常");
    }
    
    try{
        conn=DriverManager.getConnection(url,username,password);
        
        stmt=conn.createStatement();
        
        String login_name = (String)session.getAttribute("name"); 
        //int login_pwd = (Integer)session.getAttribute("pwd");
        
        
        sql="select * from student where ticket_num='"+login_name+"'";
        //sql="select * where stuno="+session.getAttribute("pwd")+"";
        
        rs=stmt.executeQuery(sql);
    %>
    
    <%
            while(rs.next()){
                int id=rs.getInt(1);
                String name=rs.getString(3);
                String gender=rs.getString(4);
                int age=rs.getInt(5);
                String ineva=rs.getString(6);
                String csn=rs.getString(7);
                String ticket_num=rs.getString(8);
                
         %>
    
<div id="sum">
<div id="selfInfo">
	<h1>个人资料</h1>
</div>
<div>
	<img src="https://images.pexels.com/photos/302692/pexels-photo-302692.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" id="head_por">
</div>
<div id="info">
	<p>用户名：<%=name %></p>
	<p>性&nbsp;&nbsp;别：<%=gender %></p>	
	<p>年&nbsp;&nbsp;龄：<%=age %></p>
	<p>地&nbsp;&nbsp;区：</p>
	<p>星&nbsp;&nbsp;级：⭐⭐⭐⭐</p>
	<p>收到的评价：<a href="Evaluation.jsp">点击查看</a></p>
	<p>做出的评价：<a href="Evaluation1.jsp">点击查看</a></p>
	<p>当前座位号：<%=csn %></p>
	<p>登录名：<%=ticket_num %></p>
	
	<p>简介：</p>

	<textarea rows="8" cols="50"  id="jianjie">这个家伙很懒，什么简介也没写……</textarea>
	<div id = ding></div>
</div>
<div>
	<a href="modifyInfo.jsp"><button id="modify">修改资料</button></a>
</div>
</div>
    
    
    
    
   
        
        
         
         
         
         <%
             }
             rs.close();
             stmt.close();
          %>    

    
    <%
    }
    catch(SQLException e){
        out.print("出现SQLException异常");
    }
    finally{
        try{
            if(conn!=null){
                conn.close();
            }
            }
            catch(SQLException e){
                out.print("关闭数据库连接时出现异常");
            }
        }
    %>
</body>
</html>
