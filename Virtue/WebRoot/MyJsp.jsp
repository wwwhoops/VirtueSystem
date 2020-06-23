<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

<meta http-equiv="Content-Type" content="text/html";charset=UTF-8">  
<title>layout---页面布局</title>
<link rel="stylesheet" type="text/css" href="js/easyui-1.6.7/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="js/easyui-1.6.7/themes/icon.css">
<script type="text/javascript" src="js/easyui-1.6.7/jquery.min.js"></script>
<script type="text/javascript" src="js/easyui-1.6.7/jquery.easyui.min.js"></script>
</head>
  
<body class="easyui-layout">
<!-- 使用div指定区域 -->
<div title="XX管理系统" data-options="region:'north'"style="height: 100px">北部区域</div>
<div title="系统菜单"data-options="region:'west'"style="width: 200px">西部区域</div>
<div data-options="region:'center'">中心部区域</div>
<div data-options="region:'east'"style="width: 100px">东部区域</div>
<div data-options="region:'south'"style="height: 50px">南部区域</div>
    
</body>
</html>
