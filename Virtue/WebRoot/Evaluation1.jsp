<%@page import="cn.Evaluation.Dao.StudentDao"%>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">








<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
<style type="text/css" src="css/jquery.dataTables.min.css"></style>


<style type="text/css">
td {text-align:center}
#head_por{

	width: 50px;
	border: 1px solid #a9f;
	padding: 10px;
	border-radius: 50%;
	
	position: absolute;
	margin-top: -76px;
	margin-left: 500px;
}
#logout{
position:absolute;
margin-left:1160px;
margin-top:-56px;
}
#whatEva{
position:absolute;
margin-right:1160px;
margin-top:-56px;
font-size:20px;
width:100px;
}

</style>


<base href="<%=basePath%>">
<title>我的信息</title>

      	<header id="header">
		
		<!-- Section title -->
		<h1 class="sr-only">Molly | Home page</h1>
		
		<nav id="main-navigation" class="navbar navbar-default navbar-fixed-top">
		  <!-- Section title -->
		  <h1 class="sr-only">Main navigation</h1>
		  <div class="container">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar" aria-expanded="false">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="sr-only">Toggle navigation</span>
		      </button>
		      <a id="brand-mobile" class="navbar-brand navbar-brand-center smoothScroll" href="#home">
		        <img alt="Molly" src="img/svg/logo.svg">
		      </a>
		    </div>		   
		    <div class="collapse navbar-collapse" id="main-navbar">
			  <ul class="nav navbar-nav">	       
		      	<li id="brand-desktop">
					<a class="navbar-brand smoothScroll" href="client.jsp">
						<img alt="Molly" src="img/svg/logo.svg">
					</a>
		      	</li>
	      </ul>
	      
	      <div id="whatEva">
	      <p>做出的评价</p>
	      
	      </div>
	      
		      <div id="right_top">		      		      
		      				<%
						if(session.getAttribute("name")==null){
						%>
							<a href="loginPublic.jsp"><img src="img/head.png " id="head_por">							
							<%						 
						%>
						</a>						
							<% 
						}else{
						%>
						<a href="myself.jsp"><img src="img/head.png " id="head_por">
							<% 
		        		}
		        		%>
		        	 </a>		      
    		</div>   		
    		<%
						if(session.getAttribute("name")==null){
						%>
							<div id="logout"><a href="loginPublic.jsp">登录
							<%						
						%>
						</a></div>						
							<% 
						}else{
						%>
						<div id="logout"><a href="LogoutServlet">注销
							<% 		        			        
		        		}
		        		%>
		        		</a></div>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container -->
		</nav>

	</header>


</head>

<body>
    <%
    //student为数据库的名字 
    String url="jdbc:mysql:///user?useSSL=false&serverTimezone=UTC";
    String useName="root";
    String password="";
    String sql1 = null;
    String sql=null;
    String sql2=null;
    Connection conn=null;
    Statement stmt=null;
    
    //加载驱动类
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        out.print("用户评论已更新");
    }
    catch(ClassNotFoundException e){
        out.print("加载驱动类时出现异常");
    }
    
    try{
        conn=DriverManager.getConnection(url,useName,password);
		stmt=conn.createStatement();
        String login_name = (String)session.getAttribute("name"); 
        sql1="select ticket_num from student where ticket_num='"+login_name+"'";
        ResultSet rs1=stmt.executeQuery(sql1);
        String ticket_num=null;
        while(rs1.next()){
                ticket_num=rs1.getString(1);
        }
        sql="select * from evaluate where evaluator='"+ticket_num+"'";
        sql2="select * from evaluate where evaluator='"+ticket_num+"'";
      	
      	
    %>
    <!--  收到的评论--> 
    
    <table id="example" class="display" style="width:100%">
        <thead>
        <tr>
            <td>编号</td>
            <td>评价内容</td>
            <td>相关图片</td>
            <td>时间</td>
        </tr>
        </thead>
        <tbody>
        <%
        	ResultSet rs=stmt.executeQuery(sql);

            while(rs.next()){
                int id=rs.getInt(1);

                String evaluations=rs.getString(4); 

                String photo=rs.getString(5);
                
				String time=rs.getString(7);
                
         %>
         
         <tr>
             <td><%=id %></td>
             <td  width="500"><%=evaluations %></td>
             
         <%
						if(photo!=null){
						%>
							<td><img src="<%=photo %>" height="80" width="100" name="tu1" style="CURSOR: hand" onclick='window.open("<%=photo %>")'
							<%
						
						%>
						></td>
						
							<% 
						}else{
						%>
						<td>无</td>
							<% 
		        			        
		        		}

		        		
		        		%>
             
             <td><%=time %></td>
         </tr>
         </tfoot>
         
         
         <%
             }
		        		rs1.close();
		        		rs.close();
             
             			//rs2.close();
            
             			stmt.close();             
             
          %>    
    </table>
    
    

    
    
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
