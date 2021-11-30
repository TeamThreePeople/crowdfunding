<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- 声明文档的编码集 -->
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>更多</title>
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		<!-- 小火箭 -->
		<link href="${pageContext.request.contextPath}/css/huojian.css" rel="stylesheet">
		<!-- 分页按钮 -->
		<link href="${pageContext.request.contextPath}/css/fenyeanniu.css" rel="stylesheet">
		<!-- 图片缩放 -->
		<link href="${pageContext.request.contextPath}/css/picturechange.css" rel="stylesheet">
		<!-- 滚动背景 -->
		<link href="${pageContext.request.contextPath}/css/gundongBackground.css" rel="stylesheet">
		<!-- 先引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<!-- 背景滚动 -->
		<script src="${pageContext.request.contextPath}/js/gundongBackground.js"></script>

	</head>
	<body>


	<div id="mask">
		<%@ include file="connect/heard.jsp" %>

		<!-- 分类导航条 -->
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<div class="row">
				<!-- 文字 -->
				<div class="col-md-2" style="font-size: 40px;">更多</div>
				<!-- 图片 -->
		

				<img src="${pageContext.request.contextPath}/picture/title2.jpg" style="margin-top: 30px;padding: 0px;"/>

			</div>
			<div style="border: #000000 solid 1px;"></div>
		</div>
		

		<!-- 分类内容 -->
		<div class="container">
			<div class="row" style="height: 150px;border: lightgray 1px solid;border-radius: 4px;margin-top: 10px;">
				<div id="">
					<ul class="nav nav-pills">
						<li class="active"><a href="#" style="color: #000000;">分类：</a></li>
						<li><a href="#" style="color: #000000;">全部</a></li>
						<li><a href="#" style="color: #000000;">科技</a></li>
						<li><a href="#" style="color: #000000;">公益</a></li>
						<li><a href="#" style="color: #000000;">农业</a></li>
						<li><a href="#" style="color: #000000;">文化</a></li>
					</ul>
				</div>
				<p></p>
				<div>
					<ul class="nav nav-pills">
						<li class="active"><a href="#" style="color: #000000;">状态：</a></li>
						<li><a href="#" style="color: #000000;">全部</a></li>
						<li><a href="#" style="color: #000000;">即将开始</a></li>
						<li><a href="#" style="color: #000000;">众筹中</a></li>
						<li><a href="#" style="color: #000000;">众筹成功</a></li>
					</ul>
				</div>
				<p></p>
				<div>
					<ul class="nav nav-pills">
						<li class="active"><a href="#" style="color: #000000;">排序：</a></li>
						<li><a href="#" style="color: #000000;">综合排序</a></li>
						<li><a href="#" style="color: #000000;">最新上线</a></li>
						<li><a href="#" style="color: #000000;">金额最多</a></li>
						<li><a href="#" style="color: #000000;">支持最多</a></li>
					</ul>
				</div>
				
			</div>
			<div class="row" style="border: lightgray 1px solid;height: 50px;background-color: whitesmoke;border-radius: 4px;" >
				
					<ul class="nav navbar-nav" style="margin-top: 14px;">
						<li class="active">共21个众筹项目</li>
					</ul>
				
					<!--  表单 -->
				<form class="navbar-form navbar-right" style="margin-right: 10px;">
				  <div class="form-group">
				    <input type="text" class="form-control" placeholder="请输入搜素内容">
				  </div>
				  <button type="submit" class="btn btn-default">搜索</button>
				</form>
			</div>
		</div>
	
		<!-- 分页产品 -->
		<div class="container" align="center" style="border: lightgray solid 1px;height: 500px;margin-top: 15px;">
			<div class="row" style="margin-top: 40px;padding: 0px;">
				
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name1.png" >
					<a href="#" style="text-align: left;"><p>活性富氢净水直饮机</p></a>
					<!-- <a>
						<span class="glyphicon glyphicon-screenshot" aria-hidden="true"></span>
					</a> -->
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name2.png" >
					<a href="#" style="text-align: left;"><p>酷驰触控龙头，智享厨房黑科技</p></a>
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name3.png" >
					<a href="#" style="text-align: left;"><p>小熊猫鱼眼全景安防摄像机</p></a>
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name4.png" >
					<a href="#" style="text-align: left;"><p>一款紧致的机械表</p></a>
					</div>
				
			</div>
			
			<div class="row" style="margin-top: 40px;padding: 0px;">
				
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name1.png" >
					<a href="#" style="text-align: left;"><p>活性富氢净水直饮机</p></a>
					<!-- <a>
						<span class="glyphicon glyphicon-screenshot" aria-hidden="true"></span>
					</a> -->
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name2.png" >
					<a href="#" style="text-align: left;"><p>酷驰触控龙头，智享厨房黑科技</p></a>
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name3.png" >
					<a href="#" style="text-align: left;"><p>小熊猫鱼眼全景安防摄像机</p></a>
					
					</div>
				<div class="col-md-3 col-sm-4 col-xs-6" align="center" >
					<img src="${pageContext.request.contextPath}/picture/name4.png" >
					<a href="#" style="text-align: left;"><p>一款紧致的机械表</p></a>
					</div>
				
			</div>
		</div>
		<div class="container" align="center">
			<div class="row pad-15" >
				<div class="col-md-12" >
					<nav class="pagination-outer" aria-label="Page navigation">
						<ul class="pagination" >
							<li class="page-item">
								<a href="#" class="page-link" aria-label="Previous">
									<span aria-hidden="true">«</span>
								</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item">
								<a href="#" class="page-link" aria-label="Next">
									<span aria-hidden="true">»</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<!-- 尾部 -->
		<div class="container" style="margin-top: 40px;padding: 0px;width: 1390px;">
			<div class="row" >
				<nav class="navbar navbar-inverse" style="height: 200px;color: pink;">
				  <div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<!--友情链接-->
					<div align="center" style="margin-top: 10px;">

						<div class="col-md-2 col-sm-4 col-xs-6" align="center">
							<p></p>
							<a href="#">关于我们</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima1.jpg" style="width: 100px;"/>

							</div>
						<div class="col-md-2 col-sm-4 col-xs-6" align="center">
							<p></p>
							<a href="#">联系我们</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima2.jpg" style="width: 100px;"/>
							<p></p>

							</div>
						<div class="col-md-2 col-sm-4 col-xs-6" align="center">
							<p></p>
							<a href="#">招贤纳士</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima3.png" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 col-sm-4 col-xs-6" align="center">
							<p></p>
							<a href="#">友情链接</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima9.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 col-sm-4 col-xs-6" align="center">
							<p></p>
							<a href="#">法律声明</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima5.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 col-sm-4 col-xs-6" align="center">
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

						<img src="${pageContext.request.contextPath}/picture/huojian.svg" alt="返回顶部小火箭">

					</a>
				</span>
			</div>
	</div>
	</body>
</html>

<%--
	<%@ include file="connect/foot.jsp"%>>
--%>
