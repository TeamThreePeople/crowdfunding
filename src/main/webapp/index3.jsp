<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<jsp:forward page="/product?method=index"></jsp:forward>--%>

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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" >
		<!-- 时间轴 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/timezhou.css" >
		<!-- 小火箭 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/huojian.css" >
		<!-- 轮播图 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize3.css" /><!--CSS RESET-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style3.css">
		<%--浏览记录--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/liulanjilu.css">
		<%--图片变换--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main33.css">
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
	</head>
	<body>

		<%@ include file="jsp/connect/heard.jsp"%>

		<%--浏览记录--%>
		<%--<div class="menu-espanso" style="margin-top: 70px;">
			<div id="menu" class="menu" ></div>
			<span class="linee linea1" ></span>
			<span class="linee linea2" ></span>
			<span class="linee linea3" ></span>

			<div class="voci-menu" style="left: 0px;width: 340px;">
				<p style="margin-top: -50px;font-size: 28px;font-weight: 800;margin-left: 17px;width: 200px;">浏览记录</p>
				<div style="border: black solid 1px;width: 340px;"></div>
				<table style="margin-top: 10px;margin-bottom: 10px;">
					<tr>
						<td>
							<div class="ih-item square effect1 left_and_right" style="margin-left: 15px;">
								<a href="#">
									<div class="img">
										<img src="../picture/name2.png" style="width: 310px;height: 170px;" alt="img">
									</div>
									<div class="info">
										<h3>净水器</h3>
										<p>Description goes here</p>
									</div>
								</a>
							</div>
						</td>
					</tr>
				</table>
				<div style="border: black solid 1px;width: 340px;"></div>
				<table style="margin-top: 10px;margin-bottom: 10px;">
					<tr>
						<td>
							<div class="ih-item square effect1 left_and_right" style="margin-left: 15px;">
								<a href="#">
									<div class="img">
										<img src="../picture/name2.png" style="width: 310px;height: 170px;" alt="img">
									</div>
									<div class="info">
										<h3>净水器</h3>
										<p>Description goes here</p>
									</div>
								</a>
							</div>
						</td>
					</tr>
				</table >
				<div style="border: black solid 1px;width: 340px;"></div>
				<table style="margin-top: 10px;margin-bottom: 10px;">
					<tr>
						<td>
							<div class="ih-item square effect1 left_and_right" style="margin-left: 15px;">
								<a href="#">
									<div class="img">
										<img src="../picture/name2.png" style="width: 310px;height: 170px;" alt="img">
									</div>
									<div class="info">
										<h3>净水器</h3>
										<p>Description goes here</p>
									</div>
								</a>
							</div>
						</td>
					</tr>
				</table>
				<div style="border: black solid 1px;width: 340px;"></div>

			</div>

		</div>--%>

		<!--导航部分-->
		<%--<div class="container" style="width: 100%;height: 100px;">
			<div class="row ">
				<!-- 导航条 -->
				<nav class="navbar navbar-fixed-top navbar-inverse" style="height: 70px;">
					<div class="container-fluid">


						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top: 10px;">
							<ul class="nav navbar-nav">
								<li style="margin-left: 30px;"><img src="${pageContext.request.contextPath}/picture/heard.png" ></li>
								<li style="margin-left: 30px;"><a class="navbar-brand" href="${pageContext.request.contextPath}/index3.jsp" >首页</a></li>
								<li class="active"><a href="jsp/more.jsp">众筹项目 <span class="sr-only">(current)</span></a></li>
								<li><a href="${pageContext.request.contextPath}/jsp/itemsInitiator.jsp">发起项目</a></li>
								<li><a href="${pageContext.request.contextPath}/jsp/personalcenter.jsp">我的众筹</a></li>
							</ul>
							<ul class="nav navbar-nav navbar-right">
								<li><a href="${pageContext.request.contextPath}/login.jsp">登录</a></li>
								<li><a href="${pageContext.request.contextPath}/register.jsp">注册</a></li>

							</ul>


						</div><!-- /.navbar-collapse -->
						</div><!-- /.container-fluid -->
				</nav>
			</div>
			<div style="border: #000000 solid 1px;"></div>
		</div>--%>

		<!-- 轮播图 -->
		<div id="app" data-state="0" align="center" style="margin-top: 0px;">
			  <div class="ui-big-images" align="center" style="width: auto;">    
			    <div class="ui-big-image" data-key="0">
			      <img src="itemsimgs/p_001.jpg" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="1">
			      <img src="itemsimgs/p_002.jpg" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="2">
			      <img src="itemsimgs/p_003.jpg" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="3">
			      <img src="itemsimgs/p_004.jpg" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="4">
			      <img src="itemsimgs/p_005.jpg" alt=""/>
			    </div>
			    <div class="ui-big-image" data-key="5">
			      <img src="itemsimgs/p_006.jpg" alt=""/>
			    </div>
			  </div>
			  <div class="ui-thumbnails">
			    <div class="ui-thumbnail" tabindex="-1" data-key="0">
			      <img src="itemsimgs/p_001.jpg" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="1">
			      <img src="itemsimgs/p_002.jpg" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="2">
			      <img src="itemsimgs/p_003.jpg" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="3">
			      <img src="itemsimgs/p_004.jpg" alt=""/>
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="4">
			      <img src="itemsimgs/p_005.jpg" alt="" />
			      <div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
			    </div>
			    <div class="ui-thumbnail" tabindex="-1" data-key="5">
			      <img src="itemsimgs/p_006.jpg" alt="" />
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
		<div class="container" style="margin-top: 150px;padding: 0px;">
			<div class="row">
				<!-- 文字 -->
				<div class="col-md-2" style="font-size: 40px;">热门项目</div>
				<div style="margin-top: 30px;padding: 0px;">
					<a href="jsp/more.jsp" >更多...</a>
				</div>

			</div>
			<div style="border: #000000 solid 1px;"></div>
			<table >
				<tr>
					<td style="width: 960px;">
						<div style="color: white;background-color: #0186BA;width: 120px;font-size: 18px;">
							幸福千万家
						</div>
					</td>
					<td >
						<!-- 图片 -->
						<img src="${pageContext.request.contextPath}/picture/title2.jpg" />
					</td>
				</tr>
			</table>
			<div style="border: #000000 solid 1px;"></div>
			<div class="row" style="margin-top: 50px;padding: 0px;">
				<div class="col-md-4 col-sm-4 col-xs-6" align="center">
					<div class="ih-item circle effect15 left_to_right">
						<a href="#">
							<div class="img">
								<img src="${pageContext.request.contextPath}/picture/jiqiren.png" alt="img">
							</div>
							<div class="info">
								<h3>Heading here</h3>
								<p>Description goes here</p>
							</div>
						</a>
					</div>
					<p></p>
					<button ><a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=1" style="color: #000000;">项目详情&gt;&gt;</a></button>
					</div>
				<div class="col-md-4 col-sm-4 col-xs-6" align="center">
					<div class="ih-item circle effect6 scale_down_up">
						<a href="#">
							<div class="img">
								<img src="${pageContext.request.contextPath}/picture/shouhuan.png" alt="img">
							</div>
							<div class="info">
								<h3>Heading here</h3>
								<p>Description goes here</p>
							</div>
						</a>
					</div>
					<p></p>
					<button><a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=2" style="color: #000000;">项目详情&gt;&gt;</a></button>
					</div>
				<div class="col-md-4 col-sm-4 col-xs-6" align="center">
					<div class="ih-item circle effect8 top_to_bottom">
						<a href="#">
							<div class="img-container">
								<div class="img">
									<img src="${pageContext.request.contextPath}/picture/quwenkou.png" alt="img">
								</div>
							</div>
							<div class="info-container">
								<div class="info">
									<h3>Heading here</h3>
									<p>Description goes here</p>
								</div>
							</div>
						</a>
					</div>
					<p></p>
					<button><a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=3" style="color: #000000;">项目详情&gt;&gt;</a></button>
					</div>
			</div>
		</div>
		
		<!-- 部分项目 -->
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<div class="row">
				<!-- 文字 -->
				<div class="col-md-2" style="font-size: 40px;">部分项目</div>
				<div style="margin-top: 30px;padding: 0px;">
					<a href="jsp/more.jsp" >更多...</a>
				</div>
			</div>
			<div style="border: #000000 solid 1px;"></div>
			<table >
				<tr>
				<td style="width: 960px;">
					<div style="color: white;background-color: #0186BA;width: 120px;font-size: 18px;">
					科技改变未来
					</div>
				</td>
				<td >
					<!-- 图片 -->
					<img src="${pageContext.request.contextPath}/picture/title2.jpg" />
				</td>
				</tr>
			</table>
			<div style="border: #000000 solid 1px;"></div>
			
			<div class="row" style="margin-top: 40px;padding: 0px;">

			<c:forEach items="${requestScope.productsView}" var="products">
				<div class="col-md-4 col-sm-6 col-xs-12" align="center" >
					<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=${products.id}">
						<div class="ih-item square effect4">
							<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=${products.id}" onclick="addView('${products.id}')">
								<div class="img">
									<img src="${pageContext.request.contextPath}/${products.pimgs}"  alt="img" >
								</div>
								<div class="mask1"></div>
								<div class="mask2"></div>
								<div class="info">
									<h3>${products.name}</h3>
									<p>Description goes here</p>
								</div>
							</a>
						</div>
						<br>
						<br>
					</a>
					<%--<p style="color: #000000;">
						<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=${products.id}" style="text-align: left;"  >${products.name}</a>
					</p>--%>
				</div>
			</c:forEach>



<%--
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name2.png" >
					<a href="部分项目2.jsp" style="text-align: left;"><p style="color: #000000;">酷驰触控龙头，智享厨房黑科技</p></a>
					
				</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name3.png" >
					<a href="部分项目3.jsp" style="text-align: left;"><p style="color: #000000;">小熊猫鱼眼全景安防摄像机</p></a>
					
				</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name4.png" >
					<a href="部分项目4.jsp" style="text-align: left;"><p style="color: #000000;">一款紧致的机械表</p></a>
				</div>--%>
			</div>
		</div>
		
		<!-- 时间轴 -->
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<div class="row" style="margin-top: 40px;">
				<!-- 文字 -->
				<div class="col-md-2" style="font-size: 40px;">时间轴</div>
				<!-- 图片 -->
				<img src="${pageContext.request.contextPath}/picture/title2.jpg" style="margin-top: 30px;padding: 0px;"/>
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
							<img src="${pageContext.request.contextPath}/picture/erweima1.jpg" style="width: 100px;"/>
							<p></p>
							
							</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">联系我们</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima2.jpg" style="width: 100px;"/>
							<p></p>
							
							</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">招贤纳士</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima3.png" style="width: 100px;"/>
							<p></p>
							
						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">友情链接</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima9.jpg" style="width: 100px;"/>
							<p></p>
							
						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">法律声明</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima5.jpg" style="width: 100px;"/>
							<p></p>
							
						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">支付方式</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima6.jpg" style="width: 100px;"/>
							<p></p>
							
						</div>
						<p></p>
						<table align="center" style="text-align: center;" >
							<p></p>
							<tr>
								<td colspan="17" style="font-weight: 800;font-size: 18px;">扫描二维码，你想要的这里都有！！！</td>
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
						<img src="${pageContext.request.contextPath}/picture/huojian.svg" alt="返回顶部小火箭">
					</a>
				</span>
			</div>
	
	</body>
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
	<!-- 轮播图 -->
	<script src='https://unpkg.com/flipping@1.1.0/dist/flipping.web.js'></script>
	<script src="${pageContext.request.contextPath}/js/lunbotu.js"></script>
	<!-- 小火箭 -->
	<script src="${pageContext.request.contextPath}/js/xiaohuojian.js"></script>
	<!-- 图片变换 -->
	<script src="${pageContext.request.contextPath}/js/app33.js"></script>
	<%--浏览记录--%>
	<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"><\/script>')</script>
	<script src="${pageContext.request.contextPath}/js/liulanjilu.js"></script>

	<script>
		function addView(projectid) {
			$.ajax({

				url:"${path}/view?method=findView",
				data:{"projectid":projectid},
				type:"post",
				success:function () {
					console.log();
				}
			})
		}
	</script>


</html>
