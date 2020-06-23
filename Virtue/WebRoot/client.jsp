<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <title>德行评价</title>
    <meta charset="utf-8">
    
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600,600i" rel="stylesheet">
    <!-- Styles -->
    <link rel="stylesheet" type="text/css" href="css/social-icons.css">
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
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
.blog_2{
height:300px;
}

</style>
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
		        <li class="active"><a class="smoothScroll" href="#home">主页 <span class="sr-only">(current)</span></a></li>
		        
		        <li><a class="smoothScroll" href="#portfolio">站内风采</a></li>
		      	<li id="brand-desktop">
					<a class="navbar-brand smoothScroll" href="#home">
						<img alt="Molly" src="img/svg/logo.svg">
					</a>
		      	</li>
		      
		      	
		        <li><a class="smoothScroll" href="#new">实时热闻</a></li>
		        <li><a class="smoothScroll" href="#blog">博客</a></li>
		        
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

	<main>

		<section id="home">

			<!-- Section title -->
			<h1 class="sr-only">主页</h1>

			<div id="carousel-hero" class="carousel slide" data-ride="carousel">

				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-hero" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-hero" data-slide-to="1"></li>
					<li data-target="#carousel-hero" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
			
					<div class="item active">
					<div class="first">
					<div class="overlay"></div>

						<div class="carousel-caption">
										
							<span class="h4">Hello
						
						
							<%
						if(session.getAttribute("name")==null){
						%>
							<a href="loginPublic.jsp">	
							<%
						out.print("请先登录"); 
						%>
						</a>
						
							<% 
						}else{
						%>
						<a href="myself.jsp">
							<% 
		        		out.print(session.getAttribute("name"));		        
		        		}
		        		%>
		        	 </a>
		        	 
	<!--<c:if empty session.getAttribute("name") ==null">
		<a href="${pageContext.request.contextPath }/loginPublic.jsp">去登录</a><br/>
		
	</c:if>-->		
		        	 
		        	 
		        	 
		        	 
							
		        	 , welcome to <span class="text-yellow"></span></span>

							<span class="h1" style="color:#ffe500">德行</span>

							<p>我们致力于营造一个和谐的乘车环境，如果您发现与您同列车的<span class="text-yellow">乘客</span>对您或是其他乘客造成了不好的乘车体验，请立即反馈，我们将及时处理。</p>
							
							
							
							<%
						if(session.getAttribute("name")==null){
						%>
							<a href="loginPublic.jsp" class="btn btn-default white-yellow">NOW!</a>
							<% 
						}else{
						%>
						<a href="Evalistservlet" class="btn btn-default white-yellow">NOW!
							<% 
		        		}
		        		%>
		        	 </a>
							
							
							
							
							
							<!--  <a href="Evalistservlet" class="btn btn-default white-yellow">NOW!</a>-->

						</div>
						</div>

					</div> <!-- /.item -->

					<div class="item">
					<div class="second">

						<div class="overlay"></div>

						<div class="carousel-caption">
										
							<span class="h4">Hello
							
							<%
						if(session.getAttribute("name")==null){
						%>
							<a href="loginPublic.jsp">	
							<%
						out.print("请先登录"); 
						%>
						</a>
						
							<% 
						}else{
						%>
						<a href="myself.jsp">
							<% 
		        		out.print(session.getAttribute("name"));		        
		        		}
		        		%>
		        	 </a>
							
							, welcome to <span class="text-yellow"></span></span>

							<span class="h1" style="color:#ffe500">德行</span>

							<p>我们致力于营造一个和谐的乘车环境，如果您发现与您同列车的<span class="text-yellow">工作人员</span>对您或是其他乘客造成了不好的乘车体验，请立即反馈，我们将及时处理。</p>
							<%
						if(session.getAttribute("name")==null){
						%>
							<a href="loginPublic.jsp" class="btn btn-default white-yellow">NOW!</a>
							<% 
						}else{
						%>
						<a href="Evalistservlet" class="btn btn-default white-yellow">NOW!
							<% 
		        		}
		        		%>
		        	 </a>

						</div>
						</div>

					</div> <!-- /.item -->

					<div class="item">
					<div class="third">

						<div class="overlay"></div>

						<div class="carousel-caption">
										
							<span class="h4">Hello
							<%
						if(session.getAttribute("name")==null){
						%>
							<a href="loginPublic.jsp">	
							<%
						out.print("请先登录"); 
						%>
						</a>
						
							<% 
						}else{
						%>
						<a href="myself.jsp">
							<% 
		        		out.print(session.getAttribute("name"));		        
		        		}
		        		%>
		        	 </a>
							, welcome to <span class="text-yellow"></span></span>

							<span class="h1" style="color:#ffe500">德行</span>

							<p>如果您在使用的过程中有任何的疑问，请提出您宝贵的建议，并联系我们。</p>

							<%
						if(session.getAttribute("name")==null){
						%>
							<a href="loginPublic.jsp" class="btn btn-default white-yellow">NOW!</a>
							<% 
						}else{
						%>
						<a href="Evalistservlet" class="btn btn-default white-yellow">NOW!
							<% 
		        		}
		        		%>
		        	 </a>

						</div>
						</div>

					</div> <!-- /.item -->
				
				</div> <!-- /.carousel-inner -->
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-hero" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel-hero" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>

			</div> <!-- /.carousel -->

		</section>



		<section id="portfolio">

			<div class="container">

				<div class="row">
					
					<div class="col-md-8 col-md-offset-2">

						<div class="title-content">
							
							<h2 class="section-title">站内风采</h2>

							<p>文明出行，尊老爱幼，传播正能量</p>

						</div>

					</div>

				</div> <!-- /.row -->

				<div class="row">

					<nav id="portfolio-navigation" class="navbar">

						<!-- Section title -->
						<h1 class="sr-only">Portfolio navigation</h1>

						<ul class="nav navbar-nav">
							<li><button class="filter mixitup-control-active" type="button" data-mixitup-control data-filter="全部">收起</button></li>
							<li><button class="filter" type="button" data-mixitup-control data-filter=".web_design">好人好事</button></li>
							<li><button class="filter" type="button" data-mixitup-control data-filter=".graphic_design">出行环境</button></li>
							<li><button class="filter" type="button" data-mixitup-control data-filter=".photography">铁路施工</button></li>
							<li><button class="filter" type="button" data-mixitup-control data-filter=".apps">弘扬正能量</button></li>
						</ul>

					</nav> <!-- /#portfolio-navigation -->

				</div> <!-- /.row -->

				<div class="row">

				    <div id="portfolio-grid" class="portfolio-grid">
				    	
						<figure class="grid-item mix all graphic_design">
							<img src="img/portfolio/01.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="grid-item mix all web_design">
							<img src="img/portfolio/04.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="grid-item mix all apps">
							<img src="img/portfolio/05.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="grid-item mix all photography">
							<img src="img/portfolio/08.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="grid-item mix all web_design">
							<img src="img/portfolio/06.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="grid-item mix all apps">
							<img src="img/portfolio/09.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="grid-item mix all graphic_design">
							<img src="img/portfolio/02.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="grid-item mix all web_design">
							<img src="img/portfolio/03.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="grid-item mix all photography">
							<img src="img/portfolio/07.png" alt="Placeholder portfolio image">
						</figure>

						<figure class="gap"></figure>

				    </div>

				</div> <!-- /.row -->

				<a href="#" class="btn btn-default yellow-white">Show More</a>

			</div> <!-- /.container -->

		<section id="new">		

			<div class="video-section">
				<div class="title-content">
							
							<h2 class="section-title">实时热闻</h2>

				</div>
				<div class="container">
				


					<div class="row">

						<div class="col-md-6">
						
							<div class="embed-responsive embed-responsive-16by9">
							  <iframe class="embed-responsive-item" src="https://url.cn/5VZCUf7?sf=uri" frameborder="0" allowfullscreen></iframe>
							</div>

						</div>

						<div class="col-md-6">
						
							
							<h4>实时热闻</h4>

							<p><i>新闻记者 李智 邓景轩 摄影 樊凌峰 杨涛</i></p>

							<div class="video-description">

								<p>12月13日上午，成雅铁路首次全程试乘体验，封面新闻记者来到成都西站，登上动车组列车，一路飙到雅安，全程体验新建成的成雅铁路。</p>

								<p>上午9点20分，动车组从成都西站出发，沿途经停崇州、朝阳湖、名山等车站，历时1小时17分钟，于10点37分顺利抵达雅安。</p>

								<p>据铁路部门消息，成雅铁路正式开通后，成都西站到雅安的直通动车组，最快仅需59分钟。</p>
							</div>

							<a href="https://baijiahao.baidu.com/s?id=1619705116307786011&wfr=spider&for=pc" class="btn btn-default white-blue">Read more</a>

						</div>

					</div> <!-- /.row -->

				</div> <!-- /.container -->

			</div> <!-- /.video-section -->



		</section><div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>


		<section id="blog">

			<div class="container">

				<div class="row">
					
					<div class="col-md-8 col-md-offset-2">

						<div class="title-content">
							
							<h2 class="section-title">博客</h2>

							<p>乘坐即旅行，我们致力于提升出行的美好！</br>欢迎乘坐，去体验生活的美好吧！</p>
						</div>

					</div>

				</div> <!-- /.row -->

			</div> <!-- /.container -->

			<section id="articles">

				<!-- Section title -->
				<h3 class="sr-only">Articles</h3>
			

				<div class="container">

					<div class="row">
						
						<div class="col-sm-6">
							
							<article class="blog-entry first-row-entry">
								
								<figure>

									<img src="img/blog/panda.jpg" alt="Blog entry 01 image" class=blog_2>

									<figcaption class="sr-only">Blog entry 01 image</figcaption>

								</figure>

								<div class="blog-entry-inner">

									<h4><a href="#">大熊猫繁殖研究基地</a></h4>

									<p class="author-date"><span class="date">12.15</span> by <span class="author"><a href="#">John Doe</a></span></p>

									<p class="entry-content">成都大熊猫繁育研究基地是世界自然遗产，位于成都市北郊斧头山，占地106公顷，距市区10公里，现已成为国内开展大熊猫等珍稀濒危野生动物移地保护的主要基地之一。</p>

									<a href="#" class="read-more pull-right">Read more...</a>

								</div> <!-- /.blog-entry-inner -->

							</article> <!-- /.blog-entry -->

						</div>

						<div class="col-sm-6">
							
							<article class="blog-entry first-row-entry">
								
								<figure>

									<img src="img/blog/blossom.jpg" alt="Blog entry 02 image" class=blog_2>

									<figcaption class="sr-only">Blog entry 02 image</figcaption>

								</figure>

								<div class="blog-entry-inner">

									<h4><a href="#">桃花故里</a></h4>

									<p class="author-date"><span class="date">10.10</span> by <span class="author"><a href="#">John Doe</a></span></p>

									<p class="entry-content">桃花故里位于成都市龙泉驿区，以桃源村为核心景区向四周辐射、延伸，形成了面积约4.5平方公里的景区面积。景区以桃花品种多、花期长、密度高而闻名全国。每逢阳春三月，这里的桃花万树竞放、灿若云霞，十分壮观。</p>

									<a href="#" class="read-more pull-right">Read more...</a>

								</div> <!-- /.blog-entry-inner -->

							</article> <!-- /.blog-entry -->

						</div>

					</div> <!-- /.row -->

				

					<div class="row">
						
						<div class="col-sm-6 col-md-4">
							
							<article class="blog-entry second-row-entry">
								
								<figure>

									<img src="img/blog/blog_entry_03.jpg" alt="Blog entry 03 image">

									<figcaption class="sr-only">Blog entry 03 image</figcaption>

								</figure>

								<div class="blog-entry-inner">

									<h4><a href="#">桃花故里</a></h4>
								
									<p class="author-date"><span class="date">November 2018</span> by <span class="author"><a href="#">John Doe</a></span></p>

									<p class="entry-content">
									桃花故里位于成都市龙泉驿区，以桃源村为核心景区向四周辐射、延伸，形成了面积约4.5平方公里
									的景区面积。景区以桃花品...
									</p>

									<a href="#" class="read-more pull-right">Read more...</a>

								</div> <!-- /.blog-entry-inner -->

							</article> <!-- /.blog-entry -->

						</div>

						<div class="col-sm-6 col-md-4">
							
							<article class="blog-entry second-row-entry">
								
								<figure>

									<img src="img/blog/blog_entry_04.jpg" alt="Blog entry 04 image">

									<figcaption class="sr-only">Blog entry 04 image</figcaption>

								</figure>

								<div class="blog-entry-inner">

									<h4><a href="#">大熊猫繁育研究基地</a></h4>

									<p class="author-date"><span class="date">November 2018</span> by <span class="author"><a href="#">John Doe</a></span></p>

									<p class="entry-content">
									成都大熊猫繁育研究基地是世界自然遗产，位于成都市北郊斧头山，占地106公顷，距市区10公
									里，现已成为国内开展...
									</p>

									<a href="#" class="read-more pull-right">Read more...</a>

								</div> <!-- /.blog-entry-inner -->

							</article> <!-- /.blog-entry -->

						</div>

						<div class="col-sm-6 col-md-4">
							
							<article class="blog-entry second-row-entry">
								
								<figure>

									<img src="img/blog/blog_entry_05.jpg" alt="Blog entry 05 image">

									<figcaption class="sr-only">Blog entry 05 image</figcaption>

								</figure>

								<div class="blog-entry-inner">

									<h4><a href="#">桃花故里</a></h4>

									<p class="author-date"><span class="date">November 2018</span> by <span class="author"><a href="#">John Doe</a></span></p>

									<p class="entry-content">
									桃花故里位于成都市龙泉驿区，以桃源村为核心景区向四周辐射、延伸，形成了面积约4.5平方公里
									的景区面积。景区以桃花品种多...
									</p>

									<a href="#" class="read-more pull-right">Read more...</a>

								</div> <!-- /.blog-entry-inner -->

							</article> <!-- /.blog-entry -->

						</div>

					</div> <!-- /.row -->

					<a href="#" class="btn btn-default yellow-white">Show More</a>

				</div> <!-- /.container -->

			</section> <!-- /#articles -->

			<div class="newsletter">

				<div class="container">

					<div class="row">

						<div class="col-md-6 col-md-offset-3">

							<h3>订阅我们的消息</h3>
								
							<form class="newsletter-form">

								<div class="row">

									<div class="col-sm-8">

										<label class="sr-only" for="Email">Email</label>
										<input type="email" id="Email" placeholder="邮箱">

									</div>

									<div class="col-sm-4">

										<button type="submit" class="btn btn-default white-blue">发送邀请</button>

									</div>

								</div> <!-- /.row -->

							</form> <!-- /.newsletter-form -->
							
						</div>

					</div> <!-- /.row -->

				</div> <!-- /.container -->
				
			</div> <!-- /.newsletter -->

		</section>

		

	</main>

	<footer id="footer">

		<div class="container">
			
			<div class="row">
				
				<div class="col-md-6 col-md-offset-3">

					<p class="mail">awesomeMail@ourMail.com</p>

					<p class="tel">(86) 123-456-789-00</p>

					<ul class="social-list">
						<li><a href="#"><i class="si social-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="si social-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="si social-google-plus" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="si social-rss" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="si social-dribbble" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="si social-flickr" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="si social-skype" aria-hidden="true"></i></a></li>
					</ul>

					<p class="copyright"> © Copyright <span id="year">2019</span> <span class="text-yellow">Virtue</span>. All Rights Reserved. More Templates <a href="http://www.VirtueEvaluate.com/#" target="_blank" title="模板之家">VirtueSystem</a></p>

				</div>
 
			</div> <!-- /.row -->

		</div> <!-- /.container -->

	</footer>

	<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/smooth-scroll.min.js"></script>
	<script type="text/javascript" src="js/modernizr.mq.js"></script>
	<script type="text/javascript" src="js/mixitup.min.js"></script>
	<script type="text/javascript" src="js/slick.min.js"></script>

	<!-- Latest compiled and minified JavaScript Bootstrap-->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
	<!-- Custom JS -->
	<script src="js/custom.js"></script>

</body>
</html>