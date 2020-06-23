<%@page import="cn.Evaluation.Bean.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>选择评价</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/reset.min.css">
	<link rel="stylesheet" href="css/style01.css">
      
    <link rel="stylesheet" href="css4/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css4/style.css"> <!-- Resource style -->
	
	
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600,600i" rel="stylesheet">
    <!-- Styles -->
    <link rel="stylesheet" type="text/css" href="css/social-icons.css">
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
	
	
	
	
	
	
	<script src="js4/modernizr.js"></script> <!-- Modernizr -->
      
	<style type="text/css">

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
	#haha{
	
    background:#50aca2;
		color: #fff;
		border-bottom-width: 0; 
		 text-align: center;
		  height: 2.2rem;
		 

	}
	#eva{
	position:absolute;
	margin-left:500px;
	}
	#xixi{
	background:#669999;
	}
	#anniu{   
	
    line-height:18px;  
    height:18px;  
    width:50px;  
    color:#3a8a9e;  
    background-color:#ededed;  
    font-size:16px;  
    font-weight:normal;  
    font-family:Arial;  
    background:-webkit-gradient(linear, left top, left bottom, color-start(0.05, #ededed), color-stop(1, #bab1ba));  
    background:-moz-linear-gradient(top, #ededed 5%, #bab1ba 100%);  
    background:-o-linear-gradient(top, #ededed 5%, #bab1ba 100%);  
    background:-ms-linear-gradient(top, #ededed 5%, #bab1ba 100%);  
    background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);  
    background:-webkit-linear-gradient(top, #ededed 5%, #bab1ba 100%);  
    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#bab1ba',GradientType=0);  
    border:1px solid #d6bcd6;  
    -webkit-border-top-left-radius:15px;  
    -moz-border-radius-topleft:15px;  
    border-top-left-radius:15px;  
    -webkit-border-top-right-radius:15px;  
    -moz-border-radius-topright:15px;  
    border-top-right-radius:15px;  
    -webkit-border-bottom-left-radius:15px;  
    -moz-border-radius-bottomleft:15px;  
    border-bottom-left-radius:15px;  
    -webkit-border-bottom-right-radius:15px;  
    -moz-border-radius-bottomright:15px;  
    border-bottom-right-radius:15px;  
    -moz-box-shadow:3px 4px 0px 0px #899599;  
    -webkit-box-shadow:3px 4px 0px 0px #899599;  
    box-shadow:3px 4px 0px 0px #899599;  
    text-align:center;  
    display:inline-block;  
    text-decoration:none;  
}  
#anniu:hover {  
    background-color:#f5f5f5;  
    background:-webkit-gradient(linear, left top, left bottom, color-start(0.05, #bab1ba), color-stop(1, #ededed));  
    background:-moz-linear-gradient(top, #bab1ba 5%, #ededed 100%);  
    background:-o-linear-gradient(top, #bab1ba 5%, #ededed 100%);  
    background:-ms-linear-gradient(top, #bab1ba 5%, #ededed 100%);  
    background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);  
    background:-webkit-linear-gradient(top, #bab1ba 5%, #ededed 100%);  
    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#bab1ba', endColorstr='#ededed',GradientType=0);  
} 
#123{

} 
#beijing{
background-image:url('背景5.jpg');
-moz-background-size:100% ; background-size:100% ;
width:1920px;
height:450px;
}
#abc{
width:100px;
height；30px;
background: #25b7c3;
  color: #fff;
  font-size: 20px;
  text-align: center;
  border: none;
  border-radius: 100px;
  box-shadow: 0 4px 10px #25c289;
  font-weight: bold;

}
#seat{
height:450px;
width:850px;

 
}

	</style>
	<%
	List<Student> list=(List<Student>)request.getAttribute("students");
	 %>
 
  </head>
  
  <body>
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

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="main-navbar">
			  <ul class="nav navbar-nav">
		       
		       
		      	<li id="brand-desktop">
					<a class="navbar-brand smoothScroll" href="client.jsp">
						<img alt="Molly" src="img/svg/logo.svg">
					</a>
		      	</li>
		      
		      	
		       
		        
		      </ul>
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
		      
		      
		      
		      
		      
		      
		      
		      
    			<!--  <a href="myself.jsp"><img src="img/head.png " id="head_por"></a>-->
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
    		
    		
    		
    		
    		
    		
    		
    		
    		<!--  <div id="logout"><a href="LogoutServlet">注销</a></div>-->
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container -->
		</nav>

	</header>
  
  
 
        	
    <a class="cd-nav-trigger cd-text-replace" href="#primary-nav" style="position:absolute;margin-top:100px;margin-right:0px;">Menu<span aria-hidden="true" class="cd-icon"></span></a>
	
<div class="cd-projects-container">
		<ul class="cd-projects-previews">
			<li>
				<a href="#0">
					<div class="cd-project-title">
						<h2>成都</h2>
						<p>一座来了就不想走的城市，一个让时间慢下来的“休闲之都”</p>
					</div>
				</a>
			</li>

			<li>
				<a href="#0">
					<div class="cd-project-title">
						<h2>九寨沟</h2>
						<p>九寨沟，因沟内有九个藏族寨子而得名。中国最美的水景，美丽的童话世界</p>
					</div>
				</a>
			</li>
			
			<li>
				<a href="#0">
					<div class="cd-project-title">
						<h2>都江堰</h2>
						<p>景区环境好，到成都没有不去都江堰的，真的是古人的奇迹</p>
					</div>
				</a>
			</li>
			
			<li>
				<a href="#0">
					<div class="cd-project-title">
						<h2>峨眉山</h2>
						<p>峨眉山是中国“四大佛教名山”之一，素有“峨眉天下秀”之称</p>
					</div>
				</a>
			</li>
		</ul> <!-- .cd-projects-previews -->

		<ul class="cd-projects">
			<li>
				<div class="preview-image">
					<div class="cd-project-title">
						<h2>成都</h2>
						<p>一座来了就不想走的城市，一个让时间慢下来的“休闲之都”</p>
					</div> 
				</div>

				<div class="cd-project-info">
					<p>
						大家印象:<br>
成都是很悠闲的城市，文化底蕴深厚，生活节奏慢，周边有很多好玩的景点。成都的美食实在是让人流连忘返，最最最推荐的就是吃，宽窄巷子很多好吃的，走饿了可以吃吃小吃和正宗的川菜。

走进成都
“蓉城”成都，自古便有“天府之国”的美誉。“九天开出一成都，万户千门入画图”，在中国偌大的历史版图上，成都是惟一建城以来城址以及名称从未更改的城市。这座西南重镇，巴蜀之都，历代都是西南的政治、经济、文化中心和长江流域的重要城市。 成都是一座来了就不想离开的城市，她的生活节奏保持在一个极为人性化的速度上。成都人常挂在嘴边的“巴适”是舒服合适的意思，满城的茶馆正是这座城市悠闲的气质的最好体现。闲适的生活节奏是这座城市的名片，而满街的川菜馆、火锅店、小吃店更是让人流连忘返的罪魁祸首。成都，仿佛一张柔软的沙发，仓促的步履行到此处便不禁放缓，不禁自拔的陷进温柔乡的怀抱。 成都可能是你前往九寨沟、泸沽湖、稻城亚丁等地的中转站，但是他绝对不只是一个交通枢纽。雪山、大河、藏区离得如此之近，在这里，只要你愿意，就可以穿越贡嘎雪山，就可以领略三星堆的神秘，就可以在康巴的转经筒前许下今生的诺言。来到这座城市，与其忙于参观城内外的景点，不如在其中悠闲的享受着生活，不如将自己抛向遍布风霜的征途。

<br>最佳季节：春秋季节。成都地处盆地，夏季炎热，冬季寒冷，春秋两季最佳适宜。
<br>建议游玩：2-4天
					</p>
				</div> <!-- .cd-project-info -->
			</li>

			<li>
				<div class="preview-image">
					<div class="cd-project-title">
						<h2>九寨沟</h2>
						<p>九寨沟，因沟内有九个藏族寨子而得名。中国最美的水景，美丽的童话世界</p>
					</div> 
				</div>

				<div class="cd-project-info">
					<p>
						大家印象:<br>
九寨沟，因沟内有九个藏族寨子而得名。中国最美的水景，美丽的童话世界。在九寨沟内的藏族古寨里体验藏族风情也为一大特色。

走进九寨沟
九寨沟，因沟内有九个藏族寨子而得名。位于四川省阿坝藏族羌族自治州九寨沟县漳扎镇，距离成都540公里，车程8-10小时。1992年，九寨沟正式列入《世界自然遗产名录》。 “九寨归来不看水”，是对九寨沟景色真实的诠释。泉、瀑、河、滩108个海子，构成一个个五彩斑斓的瑶池玉盆，飞动与静谧结合，刚烈与温柔相济，能见度高达20米。长海、剑岩、诺日朗、树正、扎如、黑海六大景观，呈“Y”字形分布。 翠海、叠瀑、彩林、雪峰、藏情、蓝冰，被誉为九寨沟“六绝”。 在九寨沟内的藏族古寨里体验藏族风情也为一大特色。 九寨沟主景长10余公里，面积6万多公顷，主要由岷山山脉中呈“丫”字形分布的日则沟、则查洼沟、树正沟三条沟谷构成；九寨沟主要景点分布在树正、日则、则查洼三条沟内。 沟内可分五大景区：树正景区、日则景区、长海景区、宝镜岩景区、原始森林生态景区。 九寨沟所有景点之间都可以通过观光车穿梭，也可以通过贯穿的栈道步行欣赏。在不同的地方，可以发现九寨沟不同的迷人魅力，成为中外游客向往的神奇的“梦幻世界”。 日则沟区段是从诺日朗瀑布至九寨沟原始森林这一段，全长18公里。该区段有珍珠滩瀑布、五花海、诺日朗、高瀑布、熊猫海、箭竹海、孔雀河、孔雀海、原始森林等，其中以珍珠滩瀑布、孔雀河、孔雀海、高瀑布和五花海最为有名。 树正沟区段为主沟，主要景点有盆景滩、芦苇海、火花海、树正瀑布、犀牛海等，被誉为“树正群海”，树正群海由二、三十个大小海子呈梯田状群集而成，前后连绵数里，上下高差近百米。柏、松、杉等翠绿树木密布于湖泊周围。 宝镜岩景区位于沟口处，从沟口至荷叶寨一路有迎客松可观赏。这里的主要景观是宝镜岩，它距离沟口1千米处，位于公路的左边。 位于宝镜岩东侧的扎如沟内，里面林木森森、神秘朦胧、溪流藏寨、秀色可餐。在这里除了观赏美丽的风景外，还可以溜马，在扎如寺外野餐。

<br>到达与离开：去往九寨沟有多种途径可以选择，飞机、火车、长途大巴均可到达。但从整体成本来看，乘坐飞机至成都或重庆，再搭乘长途大巴去往景区，是最快捷、便利的途径。 选择乘坐火车的话，也需要先到成都，再转乘长途客车才能到达九寨沟。 在九寨沟景区内，有绿色环保观光车或者选择在景区内的栈道步行。连接九寨沟和其它各景区还可以包车、乘出租车或者坐景点间的直达车。
<br>景区类型：自然保护区
<br>最佳季节：9月-10月最佳。 深秋11月是九寨沟最为灿烂的时期，清空湛碧，红叶、彩林倒映在明丽的湖水中绚丽多彩。但这一时期是旺季，恰遇国庆假日，游人很多，建议避开放假。 春日九寨沟冰雪消融、春水泛涨，山花植物散发勃勃生机。 夏季的九寨处于丰水期，景色苍翠欲滴，也是极为美丽。 九寨在冬季虽然水流微枯，但是人少，景区别有宁静，充满诗情画意。此时门票住宿便宜，是最适合悠闲游览的时期。注意：冬季空气含氧量低，有可能产生高原反应。 九寨沟适合晴天游玩，水色只有在阳光下才能充分呈现出色彩，阳光越好，效果越好。
<br>建议游玩：1-3天
<br>门票：旺季（04月01日~11月15日）：220.00元 淡季（11月16日~03月31日）：80.00元
<br>开放时间：旺季（04月01日~11月15日）：06:30~18:00 淡季（11月16日~03月31日）：06:30~17:00
<br>地址：四川省阿坝藏族羌族自治州九寨沟县
<br>电话：0837-7739753
					</p>
				</div> <!-- .cd-project-info -->
			</li>

			<li>
				<div class="preview-image">
					<div class="cd-project-title">
						<h2>都江堰 </h2>
						<p>景区环境好，到成都没有不去都江堰的，真的是古人的奇迹</p>
					</div> 
				</div>

				<div class="cd-project-info">
					<p>
						大家印象:<br>
景区环境好，到成都没有不去都江堰的，真的是古人的奇迹，几千年都没有任何的损坏或者其他的问题。

走进都江堰
都江堰市地处四川省成都市城西，距成都市48km。以著名的都江堰水利工程而得名，在成都平原西部的岷江之上 ，距今2200多年的历史，被誉为“世界水利文化的鼻祖”，是全国著名的旅游胜地。通常认为，都江堰水利工程是由秦国蜀郡太守李冰及其子率众于公元前256年左右修建的，是全世界迄今为止，年代最久、唯一留存、以无坝引水为特征的宏大水利工程，也是全国重点文物保护单位。 都江堰由鱼嘴分水堤，飞沙堰，宝瓶口三大主体和百丈堤，人字堤等附属工程构成，解决了江水自动分流，自动排沙，控制进水流量等问题，消除岷江水患，使成都平原变为“天府之国”。

到达与离开：都江堰市区和成都市区经成灌高速公路连接，从成都可以很方便地去往都江堰。 都江堰没有机场，市区距成都双流国际机场60公里，从机场坐公交或打车到双流客运站、新南门，都有直达都江堰的汽车。 成都北站至都江堰现在还有了国内第一条市域快铁。 成都的茶店子汽车站，有大巴车直达都江堰市客运中心。 都江堰市区内有便捷的公共交通，乘公交车游客可以很方便地到达各个旅游景点。
<br>景区类型：历史遗址
<br>最佳季节：4月-10月是都江堰市最佳旅游时间。夏季七、八月最热的时候，都江堰附近的青城山，是最理想的避暑胜地。
<br>建议游玩：1天
<br>门票：90元 /人
<br>开放时间：冬季（12月1日——3月1日）： 8:00-17:30 其它季节（3月2日——11月30日）： 8:00-18:00
<br>地址：都江堰市公园路
<br>电话：028-87283890
					</p>
				</div> <!-- .cd-project-info -->
			</li>

			<li>
				<div class="preview-image">
					<div class="cd-project-title">
						<h2>峨眉山</h2>
						<p>峨眉山是中国“四大佛教名山”之一，素有“峨眉天下秀”之称</p>
					</div> 
				</div>

				<div class="cd-project-info">
					<p>
						大家印象:<br>
呼吸着清新的空气，云海和金顶日出非常壮观，就是门票有点贵。东西贵死了，人特别多，可依然是很不错的地方，上面的风景真的非常漂亮。万年寺是值得一去的景点，取票大厅有wifi。

走进峨眉山
峨眉山位于四川盆地西南部，西距峨眉山市7公里，东距乐山市37公里，是我国的四大佛教名山之一。峨眉山-乐山大佛作为一项文化与自然双重遗产于1996年被联合国教科文组织列入世界遗产名录。 最高峰万佛顶海拔3099米，佛教圣地华藏寺所在地金顶（3079.3米）为峨眉山旅游的最高点。 峨眉山以其“雄、秀、神、奇、灵”和深厚的佛教文化蜚声中外，明朝时曾经是中原九大名门正派之一峨眉派的地盘。 主峰金顶绝壁凌空，有世界最高的金佛——四面十方普贤；世界最大的金属建筑群，金殿、银殿、铜殿气势雄伟；世界最壮丽的自然观景台，可观云海、日出、佛光、圣灯、金殿、金佛六大奇观。 峨眉山是人类文化的宝库，文化遗产极其深厚，是中国佛教圣地，被誉为“佛国天堂”，是普贤菩萨的道场。《杂花经•佛授记》中说到：“震旦国中，峨眉者，山之领袖”。 唐代大诗人李白则有“蜀国多仙山，峨眉邈难匹”的千古绝唱。 峨眉山包括大峨，二峨、三峨、四峨四座大山。大峨山为峨眉的主峰。大峨、二峨两山相对，远望峨眉山，有陡峭险峻、横空出世的雄伟气势。 峨眉山以多雾著称，常年云雾缭绕。弥漫山间的云雾，变化万千，把峨眉山装点得婀娜多姿。峨眉山山势雄伟，气象万千，素有“一山有四季，十里不同天”之妙喻。 景区由高、中、低三大主题游览区组成。全山共有寺庙28座，景点分为传统十景和新辟十景。 传统十景：“金顶祥光”、“象池月夜”、“九老仙府”、“洪椿晓雨”、“白水秋风”、“双桥清音”、“大坪霁雪”、“灵岩叠翠”、“罗峰晴云”、“圣积晚钟”。 峨眉新十景为：金顶金佛、万佛朝宗、小平情缘、清音平湖、幽谷灵猴、第一山亭、摩崖石刻、秀甲瀑布、迎宾滩、名山起点。 在高景区登临金顶极目远望，视野宽阔无比，景色十分壮丽。观日出、云海、佛光，令人心旷神怡；西眺皑皑雪峰、贡嘎山、瓦屋山，山连天际；南望万佛顶，云涛滚滚；北瞰百里平川，如铺锦绣，大渡河、青衣江尽收眼底。 中山区的清音平湖则是峨眉山自然景观的代表。低山区的第一山亭和美食廊集中展示了峨眉山博大精深的人文文化和时尚休闲潮流。 另外，灵猴是峨眉山的一大特色。憨态可掬又极通人性，见人不惊、与人同乐，成为峨眉山的一道活景观。

<br>到达与离开：峨眉山位于四川省乐山市峨眉山市境内。 如果是飞机出行的话，最好飞到成都机场，峨眉山风景区离成都机场约120公里，约90分钟的车程就可到。 最推荐乘火车来峨眉山哦。峨眉火车站距离峨眉山风景区仅10公里，乘车约15分钟就可到达。 成都的新南门车站，以及乐山中心站，平均每30分钟便有班车发往峨眉山，在这两个城市的旅客可以首选坐大巴前往。
<br>景区类型：山峰
<br>最佳季节：7-8月、11-12月为最佳旅游时间，此间山顶天气经常晴朗。晴朗天气利于观看云海、日出、日落、佛光。冬季还可以滑雪、泡温泉。峨眉山雪景也是一绝。 但是山顶海拔太高，无论什么季节气温都很低，冬天更要注意保暖，雪后山路湿滑要小心。 春季到峨眉，正是满山杜鹃花开的时节。还能参加峨眉山朝山会，欣赏到万盏明灯朝菩贤的盛况。另外，还可以品到口感特别清新的峨眉新茶。5、6月山下晴朗，山顶多雨，登山者应准备相应雨具，以轻便的塑料薄膜雨衣为佳。 满山绚烂夺目的红叶正是峨眉山秋景的标志。峨眉山的秋季是短暂的，从每年的9月中旬到10月底。
<br>建议游玩：1-2天
<br>门票：旺季（1月16日~12月14日）：185.00元 淡季（12月15日~1月15日）：110.00元 万年寺：10.00元 报国寺：8.00元 伏虎寺：6.00元
<br>开放时间：全天开放
<br>地址：四川省乐山市峨眉山
<br>电话：400-8196-333
					</p>
				</div> <!-- .cd-project-info -->
			</li>
		</ul> <!-- .cd-projects -->

		<button class="scroll cd-text-replace">Scroll</button>
	</div> <!-- .cd-project-container -->

 
 
 <!-- 评论页面 -->
	<nav class="cd-primary-nav" id="primary-nav">
	
	<div style="position:absolute; width:1100px;margin-left:145px;padding-bottom:0px;margin-bottom:0px;">
	<div class="tbl-header" >
	<div style="padding-top: 180px;font-size: 45px;font-weight:bold;color:#666666;">选择评价</div>
	<img src="photo/点点.png" style="margin-top:20px;">
    <div style="padding-top:50px;padding-bottom: 80px;font-weight:bold;color:#666666;">请选择乘客座位号，对其进行评论</div>
    <table cellpadding="0" cellspacing="0" border="0">
    <thead>
   
   <tr id="haha">
    <td style="text-align:center;font-size: 20px;font-weight: bold;">座位号</td>
    <td style="text-align:center;font-size: 20px;font-weight: bold;">登录名</td>
    <td style="text-align:center;font-size: 20px;font-weight: bold;">评价</td>
  
    </tr> 
    </thead>
    </table>
  </div>
  
   <div class="tbl-content" >
    <table cellpadding="0" cellspacing="0" border="0" >
      <tbody >
    <%
    if(list != null){
	    for(Student s:list){
	     %>
	     <tr id="xixi">
	     	 <td style="text-align:center;font-size: 20px;font-weight: bold;"><%=s.getCsn() %></td>
	     	 
		     <td style="text-align:center;font-size: 20px;font-weight: bold;"><%=s.getTicket_num() %></td>
		     
		     <td style="text-align:center;"><a href="addeva.jsp?ticket_num=<%=s.getTicket_num()%>"><button id="abc">评价</button></a></td>
		     
		  
		
	     </tr>
  <%
  }
  } %>
    </tbody>
    </table>
  </div>

   <script src='js1/jquery.min.js'></script>

    <script  src="js1/index.js"></script>
    </div>
	</nav> <!-- .cd-primary-nav -->
	
	
<script src="js4/jquery-2.1.1.js"></script>
<script src="js4/main.js"></script> <!-- Resource jQuery -->

   
   
   
  </body>

</html>
