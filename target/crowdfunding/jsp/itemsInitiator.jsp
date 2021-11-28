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
		<div class="container" style="background-color: lightgoldenrodyellow;">
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
				
				<form action="" method="">
					<h2>项目信息</h2>
					<hr >
					<table class="tb" cellspacing="" cellpadding="">
						
						
						<!-- 分类信息 -->
						<tr >
							<td style="width: 300px;text-align: right;">分类信息</td>
							<td style="text-align: left;">
									<input type="checkbox" name="type" id="" value="" style="margin-left: 50px;"/>科技
									<input type="checkbox" name="type" id="" value="" style="margin-left: 10px;"/>设计
									<input type="checkbox" name="type" id="" value="" style="margin-left: 10px;"/>公益
									<input type="checkbox" name="type" id="" value="" style="margin-left: 10px;"/>农业
							
								</td>
						</tr>
						
						<!-- 项目名称 -->
						<tr >
							<td style="width: 300px;text-align: right;">项目名称</td>
							<td >
									<input type="text" class="form-control" name="itemsname" aria-describedby="sizing-addon2" style="width: 600px;margin-left: 50px;">
									
							</td>
						</tr>
						
						
						<!-- 筹资金额(元) -->
						<tr >
							<td style="width: 300px;text-align: right;">筹资金额(元)</td>
							<td style="text-align: left;">
								<input type="text" class="form-control" name="money" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									筹资金额不能低于100元，不能高于1000000000元
								</span>
							</td>
						</tr>
						
						
						<!-- 筹资天数(元) -->
						<tr >
							<td style="width: 300px;text-align: right;">筹资天数(元)</td>
							<td style="text-align: left;">
								<input type="text" class="form-control" name="moneyday" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									一般10-90天，建议30天
								</span>
							</td>
						</tr>
						
						<!-- 项目头图 -->
						<tr >
							<td style="width: 300px;text-align: right;">项目图片</td>
							<td style="text-align: left;">
								<input type="file" class="" name="itemspicture" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									图片上无文字，支持jpg、jpeg、png、gif格式，大小不超过2M，建议尺寸：740*457px
								</span>
							</td>
						</tr>
						
						<!-- 项目详情 -->
						<tr >
							<td style="width: 300px;text-align: right;">项目详情</td>
							<td style="text-align: left;">
								<input type="file" class="" name="itemspicture" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									支持jpg、jpeg、png、gif格式，大小不超过2M，建议尺寸：宽740px
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
							<td style="width: 300px;text-align: right;">自我介绍</td>
							<td >
									<input type="text" class="form-control" name="itemsname" aria-describedby="sizing-addon2" style="width: 600px;margin-left: 50px;">
							</td>
						</tr>
						
						
						<!-- 详细自我介绍 -->
						<tr >
							<td style="width: 300px;text-align: right;">详细自我介绍</td>
							<td >
									<textarea  class="form-control"  rows="4" cols="60" style="margin-left: 50px;"></textarea>
									
							</td>
						</tr>
						
						<!-- 联系电话 -->
						<tr >
							<td style="width: 300px;text-align: right;">联系电话</td>
							<td >
									<input type="text" class="form-control" name="itemsname" aria-describedby="sizing-addon2" style="width: 600px;margin-left: 50px;">
									
							</td>
						</tr>
						
						
					</table>
					<div class="container"style="margin-top: 10px;">
						<div class="row" >
						
					</div>
					
					</div>
					
					<input type="button" name="" value="下一步"  onclick="window.location.href='itemsreturn.jsp'";  style=" width: 70px;height: 40px; margin-top: 10px;margin-left: 50%;background-color: orange;"/>
					
				</form>
			</div>
		</div>





	<%@ include file="connect/foot.jsp"%>>
