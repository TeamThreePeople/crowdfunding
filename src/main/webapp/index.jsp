<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style3.css">
		<%--浏览记录--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/liulanjilu.css">
		<%--图片变换--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main33.css">
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
		<style>
			img {
				image-rendering:-moz-crisp-edges;
				image-rendering:-o-crisp-edges;
				image-rendering: crisp-edges;
				-ms-interpolation-mode:nearest-neighbor;
				image-rendering:-webkit-crisp-edges;
			}
			body{
				background-color: whitesmoke;
			}
		</style>
	</head>
	<body>

		<%@ include file="jsp/connect/heard.jsp"%>

		<!-- 轮播图 -->
		<div id="app" data-state="0" align="center" style="margin-top: 10px;margin-left: 40px;">
			<div class="ui-big-images" align="center" >
				<div class="ui-big-image" data-key="0">
					<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=11">
					<img src="${path}/pic/c_0011.jpg" alt="" />
					</a>
				</div>
				<div class="ui-big-image" data-key="1">
					<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=76">
					<img src="${path}/pic/c_0076.jpg" alt="" />
					</a>
				</div>
				<div class="ui-big-image" data-key="2">
					<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=54">
					<img src="${path}/pic/c_0054.jpg" alt="" />
					</a>
				</div>
				<div class="ui-big-image" data-key="3">
					<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=82">
					<img src="${path}/pic/c_0082.jpg" alt="" />
					</a>
				</div>
				<div class="ui-big-image" data-key="4">
					<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=88">
					<img src="${path}/pic/c_0088.jpg" alt="" />
					</a>
				</div>
				<div class="ui-big-image" data-key="5">
					<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=93">
					<img src="${path}/pic/c_0093.jpg" alt="" />
					</a>
				</div>
			</div>
			<div class="ui-thumbnails">
				<div class="ui-thumbnail" tabindex="-1" data-key="0">
					<img src="${path}/pic/c_0011.jpg" alt="" />
					<div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
				</div>
				<div class="ui-thumbnail" tabindex="-1" data-key="1">
					<img src="${path}/pic/c_0076.jpg" alt="" />
					<div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
				</div>
				<div class="ui-thumbnail" tabindex="-1" data-key="2">
					<img src="${path}/pic/c_0054.jpg" alt="" />
					<div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
				</div>
				<div class="ui-thumbnail" tabindex="-1" data-key="3">
					<img src="${path}/pic/c_0082.jpg" alt=""/>
					<div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
				</div>
				<div class="ui-thumbnail" tabindex="-1" data-key="4">
					<img src="${path}/pic/c_0088.jpg" alt="" />
					<div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
				</div>
				<div class="ui-thumbnail" tabindex="-1" data-key="5">
					<img src="${path}/pic/c_0093.jpg" alt="" />
					<div class="ui-cuticle" data-flip-key="cuticle" style="width: 150px;"></div>
				</div>
			</div>
			<div class="ui-content" >

				<nav class="ui-nav">
					<button id="prev" tabindex="-1" title="Previous">&lt;<tton>
						<button id="next" tabindex="-1" title="Next">&gt;<tton>
				</nav>

				<div class="ui-articles">
					<article class="ui-article" data-key="0">
						<h2 class="ui-heading">猫爪耳机 </h2>
						<p class="ui-paragraph">萌萌猫爪肉垫等你来摸</p>
					</article>
					<article class="ui-article" data-key="1">
						<h2 class="ui-heading">青绾镯</h2>
						<p class="ui-paragraph">一款既是成年礼，又是定情物的非遗手工银饰 </p>
					</article>
					<article class="ui-article" data-key="2">
						<h2 class="ui-heading">真鲍鱼·鲜面条</h2>
						<p class="ui-paragraph">冬天就得“补”一下</p>
					</article>
					<article class="ui-article" data-key="3">
						<h2 class="ui-heading">《山海经》瑞兽福墩</h2>
						<p class="ui-paragraph">神兽信使传递幸福佳音 </p>
					</article>
					<article class="ui-article" data-key="4">
						<h2 class="ui-heading">欢乐年品福气礼盒</h2>
						<p class="ui-paragraph">年画</p>
					</article>
					<article class="ui-article" data-key="5">
						<h2 class="ui-heading">《狮鼓喧天》舞醒狮快客杯</h2>
						<p class="ui-paragraph">瑞狮送礼吉祥如意</p>
					</article>
				</div>
			</div>
		</div>

		<!-- 热门项目 -->
		<div class="container" style="margin-top: 150px;padding: 0px;">
			<div class="row">
				<!-- 文字 -->
				<div class="col-md-2" style="font-size: 40px;">最新项目</div>
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
				<c:forEach items="${requestScope.newItems}" var="products">
					<div class="col-md-4 col-sm-6 col-xs-12" align="center" >
						<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=${products.id}">
							<div class="ih-item circle effect6 scale_down_up">
								<a href="${pageContext.request.contextPath}/product?method=findItemsById&aid=${products.id}" onclick="addView('${products.id}')">
									<div class="img">
										<img src="${pageContext.request.contextPath}/${products.pimgs}" alt="img">
									</div>
									<div class="info">
										<h3>${products.name}</h3>
										<p>${products.remark}</p>
									</div>
								</a>
							</div>
							<br>
							<br>
						</a>
						<c:if test="${products.completion < 100}">
							<div class="progress" style="width: 85%;height: 10px;">
								<div class="progress-bar progress-bar-success " role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${products.completion}%">
								</div>
							</div>
						</c:if>
						<c:if test="${products.completion >= 100}">
							<div class="progress" style="width: 85%;height: 10px;">
								<div class="progress-bar progress-bar-danger " role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${products.completion}%">
								</div>
							</div>
						</c:if>
					</div>
				</c:forEach>
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
									<p>${products.remark}</p>
								</div>

							</a>

						</div>
						<br>

					</a>
					<c:if test="${products.completion < 100}">
						已筹：<span>${products.completion}%</span>
						<div class="progress" style="width: 85%;height: 10px;">
							<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${products.completion}%">
							</div>
						</div>
					</c:if>
					<c:if test="${products.completion >= 100}">
						已筹：<span>${products.completion}%</span>
						<div class="progress" style="width: 85%;height: 10px;">
							<div class="progress-bar progress-bar-danger " role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${products.completion}%">
							</div>
						</div>
					</c:if>
				</div>
			</c:forEach>
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
									<div class="timeline-icon"><span class="year">概念</span></div>
									<div class="timeline-content">
										<h3 class="title">什么是众筹？</h3>
										<p class="description">
											众筹来源于英语单词Crowdfunding，即群众筹资。
											任何人都可以成为众筹发起者，通过互联网发布自己的创意，获得更多人的关注，从而募集生产创造所需的资金，将创意变成现实。而每一位支持者可以根据支持金额的不同，获得相应的回报。当然，前提是合法合规。										</p>
									</div>
								</div>
	
								<div class="timeline">
									<div class="timeline-icon"><span class="year">意义</span></div>
									<div class="timeline-content">
										<h3 class="title">支持众筹意味着什么？</h3>
										<p class="description">
											支持一次众筹意味着您在经过谨慎的考虑之后，决定信任项目发起者，参与到一次改变世界的尝试中。你们因为共同的兴趣而相聚，为了共同的目标努力。希望您能通过这次众筹找到更多志趣相投的好友，一起让生活变得更有乐趣。										</p>
									</div>
								</div>
	
								<div class="timeline">
									<div class="timeline-icon"><span class="year">支持</span></div>
									<div class="timeline-content">
										<h3 class="title">如何支持项目？</h3>
										<p class="description">
											在股利多众筹网站上，在每一个项目页面的右边，有不同的回报档位和回报介绍。您可以选择想要支持的档位，点击去支持。
											在股利多众筹APP中，点击项目页面下方的“立即购买支持”，就可以浏览具体回报档位和介绍。										</p>
									</div>
								</div>
	
								<div class="timeline">
									<div class="timeline-icon"><span class="year">兴趣</span></div>
									<div class="timeline-content">
										<h3 class="title">如何发现感兴趣的项目？</h3>
										<p class="description">
											无论您是使用股利多众筹APP、股利多众筹小程序、还是在浏览股利多众筹网站，当您进入股利多众筹首页，就能看到各具特色的文化创意项目。
											在摩点网站，您可以点击网站顶部的“发现项目”浏览众筹项目列表，并且根据自己的兴趣，选择不同的标签，发现想要支持的项目。										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 尾部 -->
		<div class="container" style="margin-top: 40px;border-top: #000000 solid 1px;width: auto;">
			<div class="row" >
				<!--友情链接-->
				<div align="center" style="margin-top: 10px;">
					<div class="col-md-2 col-sm-4 col-xs-4" align="center">
						<p></p>
						<a href="#">关于我们</a>
						<p></p>
						<img src="${pageContext.request.contextPath}/picture/erweima1.jpg" style="width: 100px;"/>
						<p></p>

					</div>
					<div class="col-md-2 hidden-sm hidden-xs" align="center">
						<p></p>
						<a href="#">联系我们</a>
						<p></p>
						<img src="${pageContext.request.contextPath}/picture/erweima2.jpg" style="width: 100px;"/>
						<p></p>

					</div>
					<div class="col-md-2 hidden-sm hidden-xs" align="center">
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
					<div class="col-md-2 hidden-sm hidden-xs" align="center">
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
					<p></p>
					<p style="font-weight: 900;font-size: 18px;">扫描二维码，你想要的这里都有！！！</p>
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
		</div>

		<!-- 尾部 -->
<%--
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
				   
				  </div>
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
--%>

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
