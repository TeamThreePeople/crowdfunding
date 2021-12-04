                                                                                                                                                                                                                                                                                              <%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>完成</title>
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
		
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		
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

		
				
		
		<!-- 完成 -->
		<div class="container" style="background-color: rgb(245,245,245);">
			<div class="row" >
				
				<div class="col-lg-3 " style="text-align: center;"><h3 ><span class="label label-default" >1.项目发起人信息</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >2.回报设置</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >3.确认信息</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-success" >4.完成</span></h3></div>
			</div>
		</div>
		
		
		<!-- 完成 -->
		<div class="container" style="margin-top: 10px;">
			<div class="row">
				<!-- 提示线、完成 -->
				<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">完成</span></div>
			</div>
			
			<div class="row" style="margin-top: 150px;">
				<div id="" style="margin-left: 100px;">
					<span id="" >
						<span class="glyphicon glyphicon-ok" style="color: green;font-size: 100px;"></span>
							
						你发起的众筹项目信息已经提交完毕，我们会在5~7个工作日内对项目进行审核，请耐心等候你能在用户中心-我的众筹-发起的项目中查看
						
					</span>
				</div>
				
				
			</div>			
		</div>
		
		<div class="container" style=" height: 60px;  background-color: rgb(245,245,245);margin-top: 250px;">
			<div class="row" style="text-align: center;margin-top: 10px;">
				<button type="button" class="btn btn-warning" style="height: 40px;"><a href="${pageContext.request.contextPath}/jsp/personalcenter.jsp">我的众筹</a></button>
			</div>
		</div>




<%@ include file="connect/foot.jsp" %>