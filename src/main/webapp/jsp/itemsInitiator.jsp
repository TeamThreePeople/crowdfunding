<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>项目发起人信息</title>
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
		
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

		<%--浏览记录--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/liulanjilu.css">

		<!-- 先引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


		
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
			body{
				background-color: rgb(245,245,245);
			}
		</style>
		
	</head>
	
	<body>	
	
	
	<%@ include file="connect/heard.jsp"%>
		

		<!-- 发起项目 -->
		<div class="container" style="background-color: lightgoldenrodyellow;margin-top: 50px">
			<div class="row" >
				<div class="col-lg-3 " style="text-align: center;"><h3 ><span class="label label-success" >1.项目发起人信息</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >2.回报设置</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >3.确认信息</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >4.完成</span></h3></div>
			</div>
		</div>
		
		
		<!-- 项目及发起人信息 -->
		<div class="container" style="margin-top: 10px;">
			<div class="row">
				<!-- 提示线、项目及发起人信息 -->
				<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">项目及发起人信息</span></div>
			</div>
		</div>
		
		<!-- 项目信息 -->
		<div class="container" style="margin-top: 50px;">
			<div class="row" >
				<%--当前表单支持文件上传功能 enctype="multipart/form-data"--%>
				<form action="${pageContext.request.contextPath}/form?method=registerForm" method="post" enctype="multipart/form-data">
					<h2>项目信息</h2>

					<hr >
					<table class="tb" cellspacing="" cellpadding="">
						
						
						<!-- 分类信息 -->
						<tr >
							<td style="width: 300px;text-align: right;">分类信息</td>
							<td style="text-align: left;">
									<input type="radio" name="type" id="" value="1" style="margin-left: 50px;"/>科技
									<input type="radio" name="type" id="" value="2" style="margin-left: 10px;"/>设计
									<input type="radio" name="type" id="" value="3" style="margin-left: 10px;"/>公益
									<input type="radio" name="type" id="" value="4" style="margin-left: 10px;"/>农业
							
							</td>
						</tr>
						
						<!-- 项目名称 -->
						<tr >
							<td style="width: 300px;text-align: right;">项目名称</td>
							<td >
									<input type="text" class="form-control" name="itemsname" required aria-describedby="sizing-addon2" style="width: 600px;margin-left: 50px;">
									
							</td>
						</tr>
						
						
						<!-- 筹资金额(元) -->
						<tr >
							<td style="width: 300px;text-align: right;">筹资金额(元)</td>
							<td style="text-align: left;">
								<input type="text" class="form-control" name="money" required aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									筹资金额不能低于100元，不能高于1000000000元
								</span>
							</td>
						</tr>
						
						
						<!-- 筹资天数(元) -->
						<tr >
							<td style="width: 300px;text-align: right;">筹资天数(天)</td>
							<td style="text-align: left;">
								<input type="text" class="form-control" name="moneyday" required aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									一般10-90天，建议30天
								</span>
							</td>
						</tr>
						
						<!-- 项目头图 -->
						<tr >
							<td style="width: 300px;text-align: right;">项目图片</td>
							<td style="text-align: left;">
								<img id="picture" style="margin-left: 50px;" name="picture" width="120" height="120" />
								<input type="file" class="" id="itemspicture" name="itemspicture" required aria-describedby="sizing-addon2" onchange="showPreview(this)" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									图片上无文字，支持jpg、jpeg、png、gif格式，大小不超过2M，建议尺寸：740*457px
								</span>
							</td>
						</tr>
						
						<!-- 项目详情 -->
						<tr >
							<td style="width: 300px;text-align: right;">项目详情</td>
							<td style="text-align: left;">
								<input type="text" class="form-control" name="itemsremark" required aria-describedby="sizing-addon2" style="width: 600px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
								</span>
							</td>
						</tr>
						
					</table>
					
					<div class="row">
						<h2>发起人信息</h2>
						<hr >
					</div>
					<table class="tb" >
						
						<!-- 自我介绍 -->
						<tr >
							<td style="width: 300px;text-align: right;">真实姓名</td>
							<td >
									<input type="text" class="form-control" name="name" required aria-describedby="sizing-addon2" style="width: 600px;margin-left: 50px;">
							</td>
						</tr>
						
						
						<!-- 详细自我介绍 -->
						<%--<tr >
							<td style="width: 300px;text-align: right;">身份证号</td>
							<td >
									&lt;%&ndash;<textarea  class="form-control"  rows="4" cols="60" style="margin-left: 50px;"></textarea>&ndash;%&gt;
								<input type="text" class="form-control" name="itemsname" required aria-describedby="sizing-addon2" style="width: 600px;margin-left: 50px;">
							</td>
						</tr>--%>
						
						<!-- 联系电话 -->
						<tr >
							<td style="width: 300px;text-align: right;">电子邮箱</td>
							<td >
									<input type="text" class="form-control" name="email" required aria-describedby="sizing-addon2" style="width: 600px;margin-left: 50px;">
									
							</td>
						</tr>
						
						
					</table>
					<div class="container"style="margin-top: 10px;">
						<div class="row" >
						
					</div>
					
					</div>

					<input type="submit" name="" value="提交";  style=" width: 70px;height: 40px; margin-top: 10px;margin-left: 50%;background-color: orange;"/>

				</form> <%--onclick="window.location.href='itemsreturn.jsp'"--%>
			</div>
		</div>
	<script type="text/javascript">
		//将文件流以url形式读取，实现图片实时显示：
		function showPreview(source){
			var file = source.files[0];
			if(window.FileReader){
				var fr = new FileReader();
				fr.onloadend = function(e){
					document.getElementById("picture").src=e.target.result;
				}
				fr.readAsDataURL(file);
			}
		}
	</script>





	<%@ include file="connect/foot.jsp"%>>

	<%--浏览记录--%>
	<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"><\/script>')</script>
	<script src="${pageContext.request.contextPath}/js/liulanjilu.js"></script>
