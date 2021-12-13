<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>register</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<%--	<link rel="shortcut icon" href="favicon.ico">--%>

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<%--文字--%>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300,300italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style4.css" />
	<style>
		.no-cssanimations .rw-wrapper .rw-sentence span:first-child{
			opacity: 1;
		}
	</style>


	<style>
		label.error{
			background:url(img/unchecked.png) no-repeat 10px 3px;
			padding-left: 30px;
			font-family:georgia;
			font-size: 15px;
			font-style: normal;
			color: red;
		}

		label.success{
			background:url(img/checked.png) no-repeat 10px 3px;
			padding-left: 30px;
		}

		body,
		html {
			height: 100%;
		}
		body {
			font-family: 'Ubuntu Mono', sans-serif;
			height: 100%;
			width: 100%;
			background-image: url('picture/sea.jpg');
			background-attachment: fixed;
			background-size: cover;
		}
		div.desc {
			position: absolute;
			top: 40%;
			left: 20%;
			color: white;
			font-size: 1.2em;
			text-shadow: #000 1px 1px 1px;
			width: 1000px;
			height: 200px;
			padding: 20px;
			background-color: rgba(0, 0, 0, 0.7);
			border-radius: 6px;
		}
		div pre {
			font-size: .7em;
			word-break: break-all;
		}
	</style>
	</head>
	<body class="style-3" >
		<c:set value="${pageContext.request.contextPath}" var="path" scope="application"></c:set>

		<%@ include file="jsp/connect/heard.jsp" %>

		<div class="container">
			<section class="rw-wrapper">
				<h2 class="rw-sentence">
					<span>欢迎来到</span>
					<div class="rw-words rw-words-1">
						<span>注册界面</span>
						<span>注册界面</span>
						<span>注册界面</span>
						<span>注册界面</span>
						<span>注册界面</span>
						<span>注册界面</span>
					</div>
					<span style="display: block;text-indent: 5px;font-size: 145%;margin-right: 1000px;margin-top: 50px;">这里是</span>
					<div class="rw-words rw-words-2">
						<span>股利多众筹</span>
						<span>股利多众筹</span>
						<span>股利多众筹</span>
						<span>股利多众筹</span>
						<span>股利多众筹</span>
						<span>股利多众筹</span>
					</div>
				</h2>
			</section>
		</div>



		<div class="container">
			
			<div class="row">
				<div class="col-md-4 col-md-push-8" style="left:2% ;">
					

					<!-- Start Sign In Form -->
					<form action="${path}/member?method=register" id="registerForm" method="post" class="fh5co-form animate-box" data-animate-effect="fadeInRight" >
						<div class="form-group">
							<span style="font-size: 24px">注册</span><span style="margin-left: 19px;font-family: '华文行楷'">欢迎来到注册界面，主人</span>
						</div>
						<hr>
						<div class="form-group" >
							<label for="name" class="sr-only">用户名</label>
							<input type="text" class="form-control" id="name" name="name" placeholder="用户名" required autocomplete="off">
						</div>

						<div class="form-group" >
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" name="password" required placeholder="密码" autocomplete="off">
						</div>
						<div class="form-group" >
							<label for="repassword" class="sr-only">确认密码</label>
							<input type="password" class="form-control" id="repassword" name="repassword" required placeholder="确认密码" autocomplete="off">
						</div>
						<div class="form-group" >
							<label for="email" class="sr-only">邮箱</label>
							<input type="email" class="form-control" id="email" name="email" required  placeholder="邮箱" autocomplete="off">
						</div>
						<div class="form-group">
							<p style="color: #0e0e0f"> 已经注册了吗？ <a href="login.jsp" style="color: #2b669a">登录</a></p>
						</div>
						<div class="form-group">
							<input type="submit" value="注册" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
		</div>
	

	</body>
<!-- Modernizr JS -->
<script src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>


<!-- jQuery -->
<script src="${path}/js/jquery-1.11.3.min.js"></script>
<%--<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>--%>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


<script src="${path}/js/jquery.validate.min.js"></script>
<script src="${path}/js/validate.js"></script>


<!-- Placeholder -->
<script src="${pageContext.request.contextPath}/js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>

<!-- Main JS -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>

<!-- 背景滚动 -->
<script src="${pageContext.request.contextPath}/js/gundongBackground.js"></script>
</html>

