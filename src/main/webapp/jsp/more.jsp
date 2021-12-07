<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		<%--<!-- 分类按钮 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style24.css"/>--%>
	</head>
	<body style="background: #f8f8f9">


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
		

		<!-- 分类标签 -->
		<div class="container">
			<div class="row" style="height: 150px;border: lightgray 1px solid;border-radius: 4px;margin-top: 10px;">
				<div class="one">
					<ul class="nav nav-pills" id="l1">
						<li style="background-color: #1abc9c"><a style="color: #000000;">分类：</a></li>
						<li value="1"><a  style="color: #000000;">科技</a></li>
						<li value="2"><a  style="color: #000000;">公益</a></li>
						<li value="3"><a  style="color: #000000;">农业</a></li>
						<li value="4"><a  style="color: #000000;">文化</a></li>
					</ul>
				</div>
				<p></p>
				<div>
					<ul class="nav nav-pills"  id="l2">
						<li style="background-color: #1abc9c"><a  style="color: #000000;">状态：</a></li>
						<li value="0"><a style="color: #000000;">众筹中</a></li>
						<li value="1"><a style="color: #000000;">众筹成功</a></li>
					</ul>
				</div>
				<p></p>
				<div>
					<ul class="nav nav-pills"  id="l3">
						<li style="background-color: #1abc9c"><a  style="color: #000000;">排序：</a></li>
						<li value="1"><a style="color: #000000;">最新上线</a></li>
						<li value="2"><a style="color: #000000;">金额最多</a></li>
						<li value="3"><a style="color: #000000;">支持最多</a></li>
					</ul>
				</div>
				
			</div>

			<div  class="row" style="border: lightgray 1px solid;height: 50px;background-color: whitesmoke;border-radius: 4px;" >

				<%--<ul class="nav navbar-nav" style="margin-top: 14px;">
					<li class="active">共${vo.myCounts}个众筹项目</li>
				</ul>--%>

				<%-- 根据商品名称，模糊查询商品列表信息 --%>
				<c:if test="${requestScope.product eq null}">
					<form class="navbar-form navbar-right" role="search"  id="search"   action="#"<%--${path}/product?method=findAllProducts--%> method="post">
						<div class="form-group">
							<c:if test="${vo.query1 ne null}">
								<input type="hidden" class="form-control" name="cid" value="${vo.query1}">
							</c:if>
							<input type="text" class="form-control" placeholder="Search" name="pname" value="${vo.query2}">
						</div>
						<button type="button" class="btn btn-default"  onclick="search()" >Submit</button>
					</form>
				</c:if>
			</div>


		</div>

		<div class="main" style="height: 500px">
			<%@ include file="moreItems.jsp" %>
		</div>


		<%@ include file="connect/foot.jsp"%>
		<!-- 回到顶部 -->
		<!-- 右侧小火箭图标返回顶部 -->
			<div id="shangxia2">
				<span id="gotop1">
					<a href="#top">
						<img src="${pageContext.request.contextPath}/picture/huojian.svg" alt="返回顶部小火箭">
					</a>
				</span>
			</div>
	</div>
	</body>

	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- 背景滚动 -->
	<script src="${pageContext.request.contextPath}/js/gundongBackground.js"></script>


	<script>

		window.onload=myfunction;

			function myfunction(){
				$.ajax({
					url:"${path}/product?method=findAllProducts",
					success:function (data){
						$(".main").html(data);
					}
				})
			};

			//分类
			$(document).on('click','#l1 li',function (){
				$(this).addClass("active");
				$(this).siblings().removeClass("active");
				var c_id = $(this).val();
				$.ajax({
					url:"${path}/product?method=findAllProducts&cid="+c_id,
					//data:{"cid":c_id},
					success:function (data){
						$(".main").html(data);


					}
				})

			});
			//状态
			$(document).on('click','#l2 li',function (){
				$(this).addClass("active");
				var s_id = $(this).val();
				$("#l1").find("li").each(function(){
					if ($(this).hasClass("active")){
						var cid = $(this).val();
						$.ajax({
							type:"get",
							url:"${path}/product?method=findAllProducts&cid="+cid+"&status="+s_id,
							success:function (data){
								$(".main").html(data);

							}
						})
					}
				});
				$(this).siblings().removeClass("active");
			});
			//排序
			$(document).on('click','#l3 li',function (){
				$(this).addClass("active");
				var sort_id = $(this).val();
				$("#l1").find("li").each(function(){
					if ($(this).hasClass("active")){
						var cid = $(this).val();//分类id
						$("#l2").find("li").each(function(){
							if ($(this).hasClass("active")){
								var status = $(this).val();//状态id
								console.log("l1="+cid+","+"l2="+status+",l3="+sort_id);
								$.ajax({
									type:"get",
									url:"${path}/product?method=findAllProducts&cid="+cid+"&status="+status+"&sort_id="+sort_id,
									success:function (data){
										$(".main").html(data);

									}
								})
							}
						});
					}
				});
				$(this).siblings().removeClass("active");
			});
			//下一页
			function next(pageNow,query1,query2,query3,query4) {
				$.ajax({
					type:"get",
					url:"${path}/product?method=findAllProducts&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
					success:function (content) {
						$(".main").html(content);

					}
				})
			};
			//上一页
			function first(pageNow,query1,query2,query3,query4) {
				$.ajax({
					type:"get",
					url:"${path}/product?method=findAllProducts&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
					success:function (content) {
						$(".main").html(content);

					}
				})
			};
			//当前页
			function curr(pageNow,query1,query2,query3,query4) {
				$.ajax({
					type:"get",
					url:"${path}/product?method=findAllProducts&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
					success:function (content) {
						$(".main").html(content);

					}
				})
			};

			function search() {
				$.ajax({
					//几个参数需要注意一下
					type: "POST",//方法类型
					url: "${path}/product?method=findAllProducts",//url
					data: $('#search').serialize(),
					success: function (result) {
						$(".main").html(result);

					}
				});
			};



	</script>


</html>
