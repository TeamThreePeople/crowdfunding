<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>立即支持</title>
	<%--<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">--%>
	<link href="${pageContext.request.contextPath}/css/1870primary.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/1870Level2.css" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Rock+Salt' rel='stylesheet' type='text/css'>
	<!--  设置网页的小图标logo  favicon.ico-->
	<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
	<style type="text/css">
		.support{
		background-color:goldenrod;
		width: 50px;
		height: 30px;
		left: 110px;
		font-size: 18px;
		font-weight: 700;
		border-radius: 5px;
		top: 110px;
		text-decoration: none;
		position: absolute;
	    }
	</style>
</head>
<body>

	<div class="htmleaf-container">
		<div id="wrapper">
		<div id="fillerDiv">
			<div id="titleText">
				<p class="textDrop">&nbsp;<span id="War">支持项</span></p>
				<div id="dustPuffs">
					<span class="dustPuffs" id="dustPuff01"></span>
					<span class="dustPuffs" id="dustPuff02"></span>
					<span class="dustPuffs" id="dustPuff03"></span>
					<span class="dustsPuffs" id="dustPuff04"></span>
					<span class="dustPuffs" id="dustPuff05"></span>
					<span class="dustPuffs" id="dustPuff06"></span>
					<span class="dustPuffs" id="dustPuff07"></span>
				</div>
			</div>  <!-- end titleText div -->
			
			<div id="navTabs">
				
			</div>  <!-- end navTabs div -->
		</div>

			<div id="subMenu" class="subMenu">

				<ul>
					<li>  <%--${pageContext.request.contextPath}/product?method=index--%>
						<a href="#" class="pos1">
							<span class="menuPreview"></span>
							<span class="menuImage"></span>
						</a>
						<div class="menuDescription">
							<h2>￥9</h2>
							<!-- <h3>The Preliminaries</h3> -->
							<p class="p2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${aReturn.content}*1
							</p>
							<p>
							<ul class="subNav">
								<li><span class="p1">项目名称：${items.name}</span></li>
								<li><span class="p1">发起日期：${items.deploydate}</span></li>
								<li><span class="p1">目标金额：${items.money}元</span></li>
								<li><span class="p1">筹资天数：${items.day}天</span></li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--count表示当前项目的支持单价--%>
								<a class="support" href="${pageContext.request.contextPath}/project?method=findProjectById&id=${items.id}&count=9&rcount=1">支持</a>
							</ul>
							</p>

						</div>  <!-- end menuDescription div -->
					</li>
					<li>
						<a href="#" class="pos2">
							<span class="menuPreview"></span>
							<span class="menuImage"></span>
						</a>
						<div class="menuDescription">
							<h2>￥19</h2>
							<!-- <h3>The Fighting Men of 1870</h3> -->
							<p class="p2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${aReturn.content}*2
							</p>
							<p>
							<ul class="subNav">
							<li><span class="p1">项目名称：${items.name}</span></li>
							<li><span class="p1">发起日期：${items.deploydate}</span></li>
							<li><span class="p1">目标金额：${items.money}元</span></li>
							<li><span class="p1">筹资天数：${items.day}天</span></li>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="support" href="${pageContext.request.contextPath}/project?method=findProjectById&id=${items.id}&count=19&rcount=2">支持</a>
							</ul>
							</p>
						</div>  <!-- end menuDescription div -->
					</li>
					<li>
						<a href="#" class="pos3">
							<span class="menuPreview"></span>
							<span class="menuImage"></span>
						</a>
						<div class="menuDescription">
							<h2>￥29</h2>

							<p class="p2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${aReturn.content}*3
							</p>
							<p>
							<ul class="subNav">
							<li><span class="p1">项目名称：${items.name}</span></li>
							<li><span class="p1">发起日期：${items.deploydate}</span></li>
							<li><span class="p1">目标金额：${items.money}元</span></li>
							<li><span class="p1">筹资天数：${items.day}天</span></li>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--count表示当前项目的支持单价--%>
								<a class="support" href="${pageContext.request.contextPath}/project?method=findProjectById&id=${items.id}&count=29&rcount=3">支持</a>
							</ul>
							</p>
						</div>  <!-- end menuDescription div -->
					</li>
					<li>
						<a href="#" class="pos4">
							<span class="menuPreview"></span>
							<span class="menuImage"></span>
						</a>
						<div class="menuDescription">
							<h2 >￥39</h2>

							<p class="p2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${aReturn.content}*4
							</p>
							<p>
							<ul class="subNav">
							<li><span class="p1">项目名称：${items.name}</span></li>
							<li><span class="p1">发起日期：${items.deploydate}</span></li>
							<li><span class="p1">目标金额：${items.money}元</span></li>
							<li><span class="p1">筹资天数：${items.day}天</span></li>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--count表示当前项目的支持单价--%>
								<a class="support" href="${pageContext.request.contextPath}/project?method=findProjectById&id=${items.id}&count=39&rcount=4">支持</a>
							</ul>
							</p>
						</div>  <!-- end menuDescription div -->
					</li>
					<li>
						<a href="#" class="pos5">
							<span class="menuPreview"></span>
							<span class="menuImage"></span>
						</a>
						<div class="menuDescription">
							<h2>￥49</h2>
							<!-- <h3>Battle Narratives of 1870-71</h3> -->
							<p>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${aReturn.content}*5
							</p>
							<p>
							<ul class="subNav">
							<li><span class="p1">项目名称：${items.name}</span></li>
							<li><span class="p1">发起日期：${items.deploydate}</span></li>
							<li><span class="p1">目标金额：${items.money}元</span></li>
							<li><span class="p1">筹资天数：${items.day}天</span></li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--count表示当前项目的支持单价--%>
								<a class="support" href="${pageContext.request.contextPath}/project?method=findProjectById&id=${items.id}&count=49&rcount=5">支持</a>
							</ul>
							</p>
						</div>  <!-- end menuDescription div -->
					</li>

				</ul>
			</div>  <!-- end subMenu div -->

		<!-- end subMenu div -->
		
		<div class="shadowPic"></div>
		
		
		<div id="picDiv">
		
		</div>  <!-- end picDiv div -->

	</div>  <!-- end wrapper div -->
		
	</div>

</body>

	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.transform2d.js"></script>
	<script src="${pageContext.request.contextPath}/js/clientLogin.js"></script>
	<script src="${pageContext.request.contextPath}/js/warTextEffect_jvollmer3.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.accordianMenu_jvollmer3.js"></script>

	<script>
		$( function() {

			$( '#subMenu' ).accordianMenu();

		} );
	</script>

</html>