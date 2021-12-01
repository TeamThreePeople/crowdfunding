<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>项目详情</title>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		<!-- 先引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
	</head>
	<body>
	<%@ include file="connect/heard.jsp"%>>

		<!-- 大标题 -->	
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<div class="row">
				<!-- 文字 -->
				<div class="col-md-2" style="font-size: 40px;">项目详情</div>
				<!-- 图片 -->
				<img src="${pageContext.request.contextPath}/picture/title2.jpg" style="margin-top: 30px;padding: 0px;"/>
			</div>
			<div style="border: #000000 solid 1px;"></div>
		</div>	
		
		<!-- 简单介绍 -->
		<div class="container"  style="margin-top: 40px;padding: 0px;">
			<div class="row" style="border: lightgray 1px solid;height: 100px;background-color: whitesmoke;" >
					<form class="navbar-form">
						<p style="font-size: 24px;">智能高清监控机器人</p>
						<p>可爱的造型，摄像安防远程互联的全能设计，让你随时随地守护您的家人，陪伴你的生活。</p>
					</form>
					<!--  表单 -->
				<form class="navbar-form navbar-right" style="margin-right: 50px;margin-top: -40px;">
				  <button type="submit" class="btn btn-default">关注 <span>120</span></button>
				</form>
			</div>	
		</div>
		
		<!-- 图片加介绍 -->
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<div class="row" style="margin-top: -30px;padding: 0px;margin-left: -50px;">
				<!-- 图片 -->
				<div class="col-md-8 col-sm-12 col-xs-12" align="center" >
					<img src="${pageContext.request.contextPath}/picture/object1.png" >
				</div>
				<!-- 介绍 -->
				<div class="col-md-4 col-sm-12 col-xs-12"  style="border: lightgray 1px solid;height: 435px;">
					<div style="font-style: italic;background-color: green;width: 50px;border-radius: 4px;margin-top: 10px;">
						<span style="color: white;">众筹中</span>
					</div>
					
					<table border="10px"  bordercolor="white" style="margin-top: 35px;">
						
						<tr>
							<td colspan="2" ><span style="font-size: 24px;">已筹资金：￥<span>50000.00</span></span></td>
						</tr>
						<tr>
							<td width="280px">目标金额：<span>1000.00</span></td><td>达成：<span>60%</span></td>
						</tr>
						<tr>
							<td colspan="2">进度条</td>
						</tr>
						<tr>
							<td>剩余<span>15</span>天</td>
						</tr>
						<tr>
							<td>已有<span>629</span>人支持该项目</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button type="button" style="width: 330px;height: 50px;border: white; border-radius: 4px;background-color: rgb(240,173,78);font-size: 24px;">
									<span style="color: white;"><a href="support.jsp">立即支持</a>></span>
								</button>
							</td>
						</tr>
					</table>
					
					<div style="border: lightgray solid 1px;margin-top: 20px;width: 400px;margin-left: -10px;"></div>
					
					<table style="margin-top: 20px;" border="10px"  bordercolor="white">
						<tr>
							<td rowspan="3"><img src="../picture/object1.1.png" ></td>
							<td><span style="font-size: 24px;font-weight: 800;">福建省南安厨卫</span></td>
							<td>
								<div style="font-style: italic;background-color: green;width: 50px;border-radius: 4px;"><span style="color: white;">已认证</span></div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<span style="width: 20px;">
									酷驰是一家年轻的厨卫科技公司，我们有一支朝气蓬勃，有激情、有想法、敢实践的团队。
								</span>
							</td>
						</tr>
						<tr>
							<td colspan="2">客服电话：0595-86218855</td>
						</tr>
						
					</table>
				
				
				</div>
				
				
				
			</div>
		</div>	
			
				
	<%@ include file="connect/foot.jsp"%>>