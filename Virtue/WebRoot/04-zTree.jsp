<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript" src="clock.js">

</script>
<script>
	var attime;
	function clock() {
		var time = new Date();
		attime = time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds() + " " + time.getFullYear() + "-" + (time.getMonth() + 1) + "-" + time.getDate();
		document.getElementById("clock").value = attime;
	}
	setInterval("clock()", 100);
</script>

<meta http-equiv="Content-Type" content="text/html" ;charset=UTF-8">
<title>01</title>
<link rel="stylesheet" type="text/css" href="js/easyui-1.6.7/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="js/easyui-1.6.7/themes/icon.css">
<script type="text/javascript" src="js/easyui-1.6.7/jquery.min.js"></script>
<script type="text/javascript" src="js/easyui-1.6.7/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="js\ztree\zTreeStyle.css" type="text/css">
<script type="text/javascript" src="js/ztree/jquery.ztree.all-3.5.js"></script>







<style>
	.line{
		text-decoration:none;
		color:#000;
	}
</style>

<style type="text/css">
#logo {
	position: absolute;
	width: 50;
	height: 40;
	padding-left: 0px;
}

#topbar-logon {
	position: absolute;
	padding-left: 1050px;
	display: inline-block;
}

#welcome{
text-align:center;
}
</style>
</head>

<body class="easyui-layout">
	<div onLoad="showTime();">
		<p align="center"></p>
		<p align="center"></p>
		<div align="center">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100%">
						<form NAME="clock" onSubmit="0">
							<div align="center">
								<center>
									<p>
										<input TYPE="text" NAME="face" size="25"
											style="background-color:rgb(255,100,255)">
									</p>
								</center>
							</div>
						</form>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- 使用div指定区域 -->
	<div title="德行" data-options="region:'north'" style="height: 80px">
		<img src="train1.jpg" id="logo">; <span id="topbar-logon">
			<div style="width=300px;">
				<input type="text" id="clock" disabled="disabled" size="15"
					style="float:left;position:relative;left:-130px;top:15px;border:none;background-color:#fff;" />
				<div style="position:relative;top:-9px;">
					<a id="loginOut" icon="icon-remove" class="easyui-linkbutton"
						plain="true" style="font-family:华文中宋;color:#000;font-size:22px;">注销</a>
					<a icon="icon-help" href="#" class="easyui-menubutton"
						menu="#topbar-menu"
						style="font-family:华文中宋;color:#000;font-size:22px;">管理</a>
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
	<span
		style="padding-left:650px;font-family:华文行楷;color:rgb(143,124,114);font-size:18px;">
		<b>欢迎您：</b> ${sessionScope.userName}

	</span>

	<div title="<center>导航栏</center>" data-options="region:'west'"
		style="width: 200px">
		<!-- 折叠面板效果 -->
		<div class="easyui-accordion" id="show" data-options="fit:true">
			<!-- 每一个子div是其中一个面板 -->
			<div>
				<script type="text/javascript">
        function AddTabs(title, url) {
            if ($('#tt').tabs('exists', title)) {
                $('#tt').tabs('select', title);
            }
            else {
                var content = '<iframe scrolling="auto" frameborder="0" src=" ' + url + '" style="width:100%;height:100%;"></ifrmae>';
                $('#tt').tabs('add', {
                    title: title,
                    content: content,
                    closable: true
                });  
            }
        }
    </script>

			</div>
			

		
			<div title="增加评价" >
				<ul class="easyui-tree" >
					
					<li data-options="closable:true,iconCls:'icon-edit'"><a href="#" class="line" onclick="AddTabs('乘客评价','Evalistservlet')">乘客评价</a></li>
					<li data-options="closable:true,iconCls:'icon-edit'"><a href="#" class="line" onclick="AddTabs('工作人员评价','report.jsp')">工作人员评价</a></li>
					
				</ul>
			</div>
			<div title="查看评价" >
			<ul class="easyui-tree" >
				<li data-options="closable:true,iconCls:'icon-tip'"><a href="#" class="line" onclick="AddTabs('查看评价','viewPublicEvaluation.jsp')">查看评价</a></li>
			</ul>
			</div>
			
			<div title="删除评价" >
			<ul class="easyui-tree" >
				<li data-options="closable:true,iconCls:'icon-no'"><a href="#" class="line" onclick="AddTabs('删除评价','deleteSelf.jsp')">删除评价</a></li>
			</ul>
			</div>
			
			<div title="奖惩信息" >
			<ul class="easyui-tree" >
				<li data-options="closable:true,iconCls:'icon-no'"><a href="#" class="line" onclick="AddTabs('奖惩信息','RAP.jsp')">删除评价</a></li>
			</ul>
			</div>
			

		</div>
	</div>

	<div region="center">
		<!-- 选项卡面板效果 -->
		<div id="tt" class="easyui-tabs" data-options="fit:true">
			<!-- 每一个子div是其中一个面板 -->
			<!-- 选项卡的关闭与图标 -->
			<div data-options="closable:true,iconCls:'icon-ok'" title="首页">
			
			<h1 id = welcome>欢迎使用德行评价系统！</h1>
			
			</div>

		</div>

	</div>
	<div data-options="region:'east'" style="width: 200px">正能量事件描述：</div>
	<div data-options="region:'south'" style="height: 50px">乘客须知：为了您和他人的安全，请不要做违反铁路交通的相关规定</div>

</body>
</html>




