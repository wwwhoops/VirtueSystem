<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script>
 var attime;
  function clock(){
    var time=new Date();
    attime= time.getHours()+":"+time.getMinutes()+":"+time.getSeconds()+" "+time.getFullYear()+"-"+(time.getMonth()+1)+"-"+time.getDate();
    document.getElementById("clock").value = attime;
  }
  setInterval("clock()",100);
</script>
    <base href="<%=basePath%>">
    
    <title>德行-管理</title>
    
	<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.6.7/jquery.min.js"></script>
    <!-- 引入EasyUI -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.6.7/jquery.easyui.min.js"></script>
    <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.6.7/locale/easyui-lang-zh_CN.js"></script>
    <!-- 引入EasyUI的样式文件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jquery-easyui-1.6.7/themes/default/easyui.css" type="text/css"/>
    <!-- 引入EasyUI的图标样式文件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jquery-easyui-1.6.7/themes/icon.css" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	<style type="text/css">
	.content {
		padding: 10px 10px 10px 10px;
	}
	.dexing{
	height:50px;
	}
	#topbar-logon{
position:absolute;
padding-left:950px;
display:inline-block;
}

</style>
  </head>
  
  <body class="easyui-layout">
  <div onLoad="showTime();">
<p align="center">
</p>
<p align="center"></p>
<div align="center">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<form NAME="clock" onSubmit="0">
<div align="center">
<center>
<p>
<input TYPE="text" NAME="face" size="25" style="background-color:rgb(255,100,255)">
</p>
</center>
</div>
</form>
</td>
</tr>
</table>
</div>
</div>




  
    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
    <div class="dexing">
    
    </div>
    	<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
    		
         	<li>
         		<span>用户管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'add.jsp'}">新增用户</li>
	         		<li data-options="attributes:{'url':'Listservlet'}">修改用户信息</li>
	         	</ul>
         	</li>
         	<li>
         		<span>评论管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'viewEvaluation.jsp'}">查看用户评论</li>
	         		
	         	</ul>
         	</li>
         	<!--<li>-->
         		<!--  <span>网页管理</span>-->
         		<!--<ul>-->
	         	<!--	<li data-options="attributes:{'url':'viewEvaluation.jsp'}">站内风采</li>-->
	         	<!--	<li data-options="attributes:{'url':'viewEvaluation.jsp'}">博客管理</li>-->
	         	<!--</ul>-->
         	<!--</li>-->
         </ul>
    </div>
    <div data-options="region:'center',title:'德行评价系统'">
    <div class="dexing">
    <div title="铁路评分管理系统"data-options="region:'north'"style="height: 40px">
		<span id="topbar-logon">
		<div style="width=300px;">
		<input type="text" id="clock" disabled="disabled" size="15" style="float:left;position:relative;left:-130px;top:15px;border:none;background-color:#fff;" />
		<div style="position:relative;top:-9px;">
		<a id="loginOut" icon="icon-remove" class="easyui-linkbutton" plain="true" style="font-family:华文中宋;color:#000;font-size:22px;">注销</a>
		<a icon="icon-help" href="#" class="easyui-menubutton" menu="#topbar-menu" style="font-family:华文中宋;color:#000;font-size:22px;">管理</a>
			</div>
			</div>
			<div id="topbar-menu"font-family:华文行楷;color:rgb(143,124,114);font-size:18px;">
			   <div icon="" id="editpass">修改密码</div>
				   <div class="menu-sep"></div>
		 		   <div data-options="iconCls:'icon-reload'" onclick="reload()">刷新系统缓存</div>
				   <div class="menu-sep"></div>
				   <div data-options="iconCls:'icon-help'" onclick="showAbout()">关于</div>
			</div>
		</span>
    </div>
    	<div id="tabs" class="easyui-tabs">
    	
		    <div title="首页" style="padding:20px;">
		        	<h1>欢迎
		        	<%
		        	out.print(session.getAttribute("nameAdm"));
		        	
		        	 %>
		        	使用德行评价系统</h1>
		    </div>
		</div>
    </div>
    
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
</script>
</body>
</html>