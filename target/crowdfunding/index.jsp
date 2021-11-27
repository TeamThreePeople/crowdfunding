<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<html>
	<head>
		<!-- 声明文档的编码集 -->
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>首页</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" >
		<!-- 时间轴 -->
		<link rel="stylesheet" href="css/timezhou.css" >
		<!-- 小火箭 -->
		<link rel="stylesheet" href="css/huojian.css" >
		<!-- 轮播图 -->
		<link rel="stylesheet" type="text/css" href="css/normalize3.css" /><!--CSS RESET-->
		<link rel="stylesheet" href="css/style3.css">
		<!-- 图片缩放 -->
		<link rel="stylesheet" href="css/picturechange.css">
		
	</head>
	<body>
		<!--  定义锚点  -->
		<!-- <a name="top"></a> -->
		
		<!--导航部分-->
		<div class="container" style="width: 100%;height: 100px;">
			<div class="row ">
				<!-- 导航条 -->
				<nav class="navbar navbar-fixed-top navbar-inverse" style="height: 70px;">
				  <div class="container-fluid">
				    <!-- Brand and toggle get grouped for better mobile display -->
					<!-- 屏幕缩小之后的效果 -->
				    <div class="navbar-header" style="margin-top: 10px;">
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="index.jsp">主页</a>
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
					
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top: 10px;">
						<ul class="nav navbar-nav">
				        <li class="active"><a href="more.jsp">众筹项目 <span class="sr-only">(current)</span></a></li>
				        <li><a href="#">留守儿童</a></li>
				        <li><a href="#">前沿科技</a></li>
				        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="#">捐助</a></li>
				            <li><a href="#">蔬菜</a></li>
				            <li><a href="#">食品</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="#">热门</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="#">潮流</a></li>
				          </ul>
				        </li>
						</ul>
				      <form class="navbar-form navbar-right">
				        <div class="form-group">
				          <input type="text" class="form-control" placeholder="请输入关键词">
				        </div>
				        <button type="submit" class="btn btn-default">搜索</button>
				      </form>
				      <ul class="nav navbar-nav navbar-right">
				      	<li><a href="">登录</a></li>
						<li><a href="">注册</a></li>
						<li><a href="">首页</a></li>
				      </ul>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
			<div style="border: #000000 solid 1px;"></div>	
		</div>
		
		<!-- 轮播图 -->
		<div id="app" data-state="0" align="center" style="margin-top: 0px;">
			  <div class="ui-big-images" align="center" style="width: auto;">    
			    <div class="ui-big-image" data-key="0">
			      <img src="https://picsum.photos/1200/1200/?image=1005" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="1">
			      <img src="https://picsum.photos/1200/1200/?image=804" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="2">
			      <img src="https://picsum.photos/1200/1200/?image=838" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="3">
			      <img src="https://picsum.photos/1200/1200/?image=832" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="4">
			      <img src="https://picsum.photos/1200/1200/?image=836" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="5">
			      <img src="https://picsum.photos/1200/1200/?image=823" alt=""/>
			    </div>
			  </div>
			  <div class="ui-thumbnails">
			    <div class="ui-thumbnail" tabindex="-1" data-key="0">
			      <img src="https://picsum.photos/1200/1200/?image=1005" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="1">
			      <img src="https://picsum.photos/1200/1200/?image=804" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="2">
			      <img src="https://picsum.photos/1200/1200/?image=838" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="3">
			      <img src="https://picsum.photos/1200/1200/?image=832" alt=""/>
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="4">
			      <img src="https://picsum.photos/1200/1200/?image=836" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="5">
			      <img src="https://picsum.photos/1200/1200/?image=823" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			  </div>
			  <div class="ui-content" >
			    
			    <nav class="ui-nav">
			      <button id="prev" tabindex="-1" title="Previous">&lt;</button>
			      <button id="next" tabindex="-1" title="Next">&gt;</button>
			    </nav>
			    
			    <div class="ui-articles">
			      <article class="ui-article" data-key="0">
			        <h2 class="ui-heading">Stephen </h2>
			        <p class="ui-paragraph">Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae cupiditate assumenda nemo delectus totam atque quas suscipit dicta.</p>
			      </article>
			      <article class="ui-article" data-key="1">
			        <h2 class="ui-heading">David Khourshid</h2>
			        <p class="ui-paragraph">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod sapiente soluta iusto molestias ullam. </p>
			      </article>
			      <article class="ui-article" data-key="2">
			        <h2 class="ui-heading">Coding Compadre</h2>
			        <p class="ui-paragraph">Lorem ipsum dolor sit, amet consectetur adipisicing elit. </p>
			      </article>
			      <article class="ui-article" data-key="3">
			        <h2 class="ui-heading">Boolean Buddy</h2>
			        <p class="ui-paragraph">Lorem ipsum dolor sit amet consectetur, adipisicing elit. </p>
			      </article>
			      <article class="ui-article" data-key="4">
			        <h2 class="ui-heading">Animation Amigo</h2>
			        <p class="ui-paragraph">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias exercitationem voluptatibus</p>
			      </article>
			      <article class="ui-article" data-key="5">
			        <h2 class="ui-heading">Keyframe Companion</h2>
			        <p class="ui-paragraph">Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae soluta reprehenderit, ut doloribus corrupti</p>
			      </article>
			    </div>
			  </div>
			</div>
		
		<!-- 热门项目 -->
		<div class="container" style="margin-top: 140px;padding: 0px;">
			<div class="row">
				<!-- 文字 -->
				<div class="col-md-2" style="font-size: 40px;">热门项目</div>
				<!-- 图片 -->
				<img src="../img/title2.jpg" style="margin-top: 30px;padding: 0px;"/>
			</div>
			<div style="border: #000000 solid 1px;"></div>
			<div class="row" style="margin-top: 50px;padding: 0px;">
				<div class="col-md-4 col-sm-4 col-xs-6" align="center">
					<img src="../picture/jiqiren.png" >
					<p></p>
					<button ><a href="itemsdetails.jsp" style="color: #000000;">项目详情&gt;&gt;</a></button>
					</div>
				<div class="col-md-4 col-sm-4 col-xs-6" align="center">
					<img src="../picture/shouhuan.png" >
					<p></p>
					<button><a href="项目详情2.jsp" style="color: #000000;">项目详情&gt;&gt;</a></button>
					</div>
				<div class="col-md-4 col-sm-4 col-xs-6" align="center">
					<img src="../picture/quwenkou.png" >
					<p></p>
					<button><a href="项目详情3.jsp" style="color: #000000;">项目详情&gt;&gt;</a></button>
					</div>
			</div>
		</div>
		
		<!-- 部分项目 -->
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<table>
				<tr>
				<td style="width: 1100px;">
					<div style="color: white;background-color: #0186BA;width: 120px;font-size: 18px;">
					科技改变未来
					</div>
				</td>
				<td >
					<a href="more.jsp" >更多...</a>
				</td>
				</tr>
			</table>
			<div style="border: #0186BA solid 1px;"></div>
			
			<div class="row" style="margin-top: 40px;padding: 0px;">
				
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="../picture/name1.png" >
					<a href="部分项目1.jsp" style="text-align: left;"><p style="color: #000000;">活性富氢净水直饮机</p></a>
					<!-- <a>
						<span class="glyphicon glyphicon-screenshot" aria-hidden="true"></span>
					</a> -->
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="../picture/name2.png" >
					<a href="部分项目2.jsp" style="text-align: left;"><p style="color: #000000;">酷驰触控龙头，智享厨房黑科技</p></a>
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="../picture/name3.png" >
					<a href="部分项目3.jsp" style="text-align: left;"><p style="color: #000000;">小熊猫鱼眼全景安防摄像机</p></a>
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="../picture/name4.png" >
					<a href="部分项目4.jsp" style="text-align: left;"><p style="color: #000000;">一款紧致的机械表</p></a>
					</div>
				
			</div>
		</div>
		
		<!-- 时间轴 -->
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<div class="row" style="margin-top: 40px;">
				<!-- 文字 -->
				<div class="col-md-2" style="font-size: 40px;">时间轴</div>
				<!-- 图片 -->
				<img src="../img/title2.jpg" style="margin-top: 30px;padding: 0px;"/>
			</div>
			<div style="border: #000000 solid 1px;"></div>
			
			<div class="demo" style="margin-top: 40px;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="main-timeline">
								<div class="timeline">
									<div class="timeline-icon"><span class="year">2018</span></div>
									<div class="timeline-content">
										<h3 class="title">Web Desginer</h3>
										<p class="description">
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia mi ultrices, luctus nunc ut, commodo enim. Vivamus sem erat.
										</p>
									</div>
								</div>
	
								<div class="timeline">
									<div class="timeline-icon"><span class="year">2017</span></div>
									<div class="timeline-content">
										<h3 class="title">Web Developer</h3>
										<p class="description">
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia mi ultrices, luctus nunc ut, commodo enim. Vivamus sem erat.
										</p>
									</div>
								</div>
	
								<div class="timeline">
									<div class="timeline-icon"><span class="year">2016</span></div>
									<div class="timeline-content">
										<h3 class="title">Web Desginer</h3>
										<p class="description">
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia mi ultrices, luctus nunc ut, commodo enim. Vivamus sem erat.
										</p>
									</div>
								</div>
	
								<div class="timeline">
									<div class="timeline-icon"><span class="year">2015</span></div>
									<div class="timeline-content">
										<h3 class="title">Web Developer</h3>
										<p class="description">
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia mi ultrices, luctus nunc ut, commodo enim. Vivamus sem erat.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 尾部 -->
		<div class="container" style="margin-top: 40px;padding: 0px;width: auto;height: auto;">
			<div class="row" >
				<nav class="navbar navbar-inverse" style="height: 200px;color: pink;">
				  <div class="container-fluid">
				    <!-- Collect the nav links, forms, and other content for toggling -->
					<!--友情链接-->
					<div align="center" style="margin-top: 10px;">
						
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">关于我们</a>
							<p></p>
							<img src="../picture/erweima1.jpg" style="width: 100px;"/>
							<p></p>
							
							</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">联系我们</a>
							<p></p>
							<img src="../picture/erweima2.jpg" style="width: 100px;"/>
							<p></p>
							
							</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">招贤纳士</a>
							<p></p>
							<img src="../picture/erweima3.png" style="width: 100px;"/>
							<p></p>
							
						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">友情链接</a>
							<p></p>
							<img src="../picture/erweima9.jpg" style="width: 100px;"/>
							<p></p>
							
						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">法律声明</a>
							<p></p>
							<img src="../picture/erweima5.jpg" style="width: 100px;"/>
							<p></p>
							
						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">支付方式</a>
							<p></p>
							<img src="../picture/erweima6.jpg" style="width: 100px;"/>
							<p></p>
							
						</div>
						<p></p>
						<table align="center" style="text-align: center;" >
							<p></p>
							<tr>
								<td colspan="17" style="font-weight: 1000;font-size: 18px;">扫描二维码，你想要的这里都有！！！</td>
							</tr>
						</table>
					</div>
				   
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
		</div>
		<div class="container" style="margin-top: 0px;text-align: center;width: auto;">
			<div class="row" style="background-color: gray;">
				<p></p>
				<p style="font-weight: 800;font-size: 16px;">
					本众筹系统最终解释权归涛哥所有
				</p>
				<p style="font-weight: 800;font-size: 16px;">
					涛哥牛逼!
				</p>
				<p></p>
				<p></p>
				<p></p>
				<p></p>
			</div>
		</div>
	
		<!-- 回到顶部 -->
		<!-- 右侧小火箭图标返回顶部 -->
			<div id="shangxia2">
				<span id="gotop1">
					<a href="#top">
						<img src="../picture/huojian.svg" alt="返回顶部小火箭">
					</a>
				</span>
			</div>
	
	</body>
	<!-- 先引入jQuery核心js文件 -->
	<script src="../js/jquery-3.1.1.js"></script>
	
	<!-- 引入BootStrap核心js文件 -->
	<script src="../js/bootstrap.min.js"></script>
	
	<!-- 轮播图 -->
	<script src='https://unpkg.com/flipping@1.1.0/dist/flipping.web.js'></script>
	<script src="../js/lunbotu.js"></script>
	<!-- 小火箭 -->
	<script src="../js/xiaohuojian.js"></script>
	
</html>
