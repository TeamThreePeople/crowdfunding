<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>确认信息</title>
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
		
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		<%--浏览记录--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/liulanjilu.css">
		<%--图片变换--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main33.css">
		<style type="text/css">
			table{
				text-align: center;
			}
			
			.table th, .table td {
				text-align: center;
				vertical-align: middle!important;
			}
			h3{
				    margin-top: 10px;
				    margin-bottom: 10px;
			}
			.tb td{
				border-spacing: 0;
				border-collapse: collapse;
				padding: 8px;
				line-height: 1.42857143;
				vertical-align: top;
				font-size: 21px;
				
				}
			
			
		</style>
		
	</head>
	
	<body>


	<%@ include file="connect/heard.jsp" %>
		
		
				
		
		<!-- 确认信息 -->
		<div class="container" style="background-color: rgb(245,245,245);">
			<div class="row" >
				
				<div class="col-lg-3 " style="text-align: center;"><h3 ><span class="label label-default" >1.项目发起人信息</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >2.回报设置</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-success" >3.确认信息</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >4.完成</span></h3></div>
			</div>
		</div>
		
		
		<!-- 确认信息(请填写xxx账号用于收款及身份核实) -->
		<div class="container" style="margin-top: 10px;">
			<div class="row">
				<!-- 提示线、发票信息 -->
				<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">确认信息(请填写xxx账号用于收款及身份核实)</span></div>
			</div>
		</div>
		
		<form action="${pageContext.request.contextPath}/confirm?method=confirmMember" method="post">
			
		
		<table class="tb" style="margin-top: 100px;" >

			<%
				Object o = request.getAttribute("msg");
				if(o!=null){
			%>
			<h2 style="color: red; margin-top: 60px; text-align: center" ><%=o%></h2>
			<%
				}
			%>
		<!-- 用户名 -->
		<tr >
			<td style="width: 550px;text-align: right;">登陆账号</td>
			<td>
				<div class="input-group" style="text-align: center;">
					<span class="input-group-addon" id="sizing-addon2" ><span class="glyphicon glyphicon-user"></span></span>
					<input type="text" name="loginacct" class="form-control" placeholder="loginAccount" aria-describedby="sizing-addon2" style="width: 350px;">
				</div>
			</td>
		</tr>
		
		
		<!-- 密码 -->
		<tr >
			<td style="width: 550px;text-align: right;">密码</td>
			<td>
				<div class="input-group" style="text-align: center;">
					<span class="input-group-addon" id="sizing-addon2" ><span class="glyphicon glyphicon-leaf"></span></span>
					<input type="password" name="userpswd" class="form-control" placeholder="password" aria-describedby="sizing-addon2" style="width: 350px;">
				</div>
			</td>
		</tr>
		
		</table>
			
			
		
		<div class="container" style=" height: 60px;  background-color: rgb(245,245,245);margin-top: 200px;">
			<div class="row" style="text-align: center;margin-top: 10px;">
				<input type="submit" id="" name="" value="提交"  onclick="window.location.href='${pageContext.request.contextPath}/jsp/complete.jsp'" style=" width: 70px;height: 40px; background-color: orange;"/>
			</div>
		</div>
		
		</form>



<%@ include file="connect/foot.jsp" %>

	<!-- 图片变换 -->
	<script src="${pageContext.request.contextPath}/js/app33.js"></script>
	<%--浏览记录--%>
	<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"><\/script>')</script>
	<script src="${pageContext.request.contextPath}/js/liulanjilu.js"></script>