<%@ page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />


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
	<!-- <link rel="shortcut icon" href="favicon.ico"> -->

	<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'> -->
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />


	</head>
	<body class="style-3">

		<%@ include file="jsp/connect/heard.jsp" %>

	<%
	String username=null;
	String password=null;

	String remember=null;
	//从请求中获取cookie信息
		Cookie[] cookies=request.getCookies();
		if(cookies!=null){
			for (Cookie cookie : cookies) {
				if(cookie!=null){
					if(cookie.getName().equals("username")){
						username= URLDecoder.decode(cookie.getValue(),"utf8");
					}
					if(cookie.getName().equals("password")){
						password=cookie.getValue();
					}
					if(cookie.getName().equals("remember")){
						remember= URLDecoder.decode(cookie.getValue(),"utf8");
						pageContext.setAttribute("remember",remember);
					}
				}
			}
		}
		if(username!=null&&password!=null){
			request.getRequestDispatcher(request.getContextPath()+"/member?method=login&username="+username+"&password="+password).forward(request,response);
		}
	%>
		<div class="container">
			
			<div class="row">
				<div class="col-md-4 col-md-push-8">
					<!-- Start Sign In Form -->
					<form id="loginForm" action="${pageContext.request.contextPath}/member?method=login" method="post"
                          class="fh5co-form animate-box" id="loginForm" data-animate-effect="fadeInRight">
						<h2>登录</h2>
<%--						错误登录提示--%>
						<%
						Object o = request.getAttribute("msg");
						if(o!=null){
					    %>
						<h2 style="color: red; text-align: center" ><%=o%></h2>
						<%
							}
						%>
						<div class="form-group">
							<label for="username" class="sr-only">用户名</label>
							<input type="text" class="form-control" id="username" name="username" value="${pageScope.remember}" placeholder="用户名" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember" name="remember" value="remember">记住用户名</label>
						</div>
						<div class="form-group">
							<p>没有注册？ <a href="register.jsp">注册</a> | <a href="forgot3.html">忘记密码？</a></p>
						</div>
						<div class="form-group">
							<input type="submit" value="登录" class="btn btn-primary">
						</div>
					</form>
					<!-- END Sign In Form -->


				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. More Templates <a href="http://www.moobnn.com/" target="_blank" title="股利多众筹">股利多众筹</a>  - Collect from <a href="http://www.moobnn.com/" title="股利多众筹" target="_blank">股利多众筹</a> </small></p></div>
			</div>
		</div>
	</body>

<!-- Modernizr JS -->
<script src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>

<![endif]-->
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="${pageContext.request.contextPath}/js/jquery.placeholder.min.js"></script>
<!-- WayPoints -->
<script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script src="${pageContext.request.contextPath}/js/respond.min.js" ></script>

</html>

