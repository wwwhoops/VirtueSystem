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
<title>My JSP 'testExecuteQuery.jsp' starting page</title>
</head>

<body>
    <%
    //student为数据库的名字 
    String url="jdbc:mysql:///user?useSSL=false&serverTimezone=UTC";
    String useName="root";
    String password="";
    String sql=null;
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
        sql="select * from student";//info为表名
        
        ResultSet rs=stmt.executeQuery(sql);
    %>
    
    <center>
    <table border="1" cellspacing="0" cellpadding="0">
        <tr>
            <td width="80" align="center" valign="middle">编号</td>
            
            
            <td width="500" align="center" >收到评论</td>
        </tr>
        
        <%
            while(rs.next()){
                int id=rs.getInt(1);
                
                String ineva=rs.getString(6);
                
         %>
         
         <tr>
             <td height="40" align="center" valign="middle"><%=id %></td>
             
             <td align="center" valign="middle"><%=ineva %></td>
             
         </tr>
         
         <%
             }
             rs.close();
             stmt.close();
          %>    
    </table>
    </center>
    
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
