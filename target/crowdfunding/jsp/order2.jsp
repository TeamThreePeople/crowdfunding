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
		
		<title>项目支持</title>
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
				
			.span_right{
				margin: 5px;
				line-height: 50px;
				text-align: center;
				font-size: 20px;
				top: 50px;
			}
				
			
			/* 对话框 */
			.div{
			  border: 2px  #ddd solid;
			  width: 850px;
			  height: 80px;
			  position: absolute;
			  border-radius: 5px;
			  left: 350px;
			  bottom: 130px;
			  background-color: #ddd;
			}
			.div::before{
			  content: '';
			  width: 0;
			  height: 0;
			  border: 20px solid;
			  position: absolute;
			  top: -40px;
			  left: 20px;
			  border-color: transparent transparent #ddd;
			  
			}
			.div::after{
			  content: '';
			  width: 0;
			  height: 0;
			  border: 20px solid;
			  position: absolute;
			  top: -38px;
			  left: 20px;
			  border-color:  transparent transparent #ddd;
			}
			 textarea{
			    border: 0px;
			    height: 90px;
			    width: 190px;
			 }

			
			
			
		</style>
		
	</head>
	
	
	
	<body>


	<%@ include file="connect/heard.jsp" %>

		
		<!-- 订单支付 -->
		<div class="container" style="background-color: lightgoldenrodyellow;">
			<div class="row" style="height: 40px;">
				
				<div class="col-lg-3 " style="text-align: center;"><h3 ><span class="label label-default" >1.确认回报内容</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-success" >2.确认订单</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >3.付款</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >4.完成</span></h3></div>

			</div>
		</div>
		
		
		<div class="container" style="margin-top: 10px;">
			<div class="row">
				<!-- 请在下单后15分钟内付款，否则您的订单会被自动关闭。 -->
				<div class="alert alert-warning alert-dismissible" role="alert" style=" width: 900px;">
				  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				  <strong>注意!</strong> 请在下单后15分钟内付款，否则您的订单会被自动关闭。
				</div>
			</div>	
		</div>
		
		<!-- 收货地址 -->
		<div class="container" >
			<div class="row">
				<!-- 提示线、收货地址 -->
				<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">收货地址</span></div>
			</div>
		</div>
		
		
		<!-- 地址信息 -->
		<div class="container" style="margin-top: 40px;">
			<div class="row">
				<table class="tb" >
					
					<!-- 收货人 -->
					<tr >
						<td style="width: 400px;text-align: right;">收货人(*)</td>
						<td>
							<div class="input-group" style="text-align: center;">
								<span class="input-group-addon" id="sizing-addon2" ><span class="glyphicon glyphicon-user"></span></span>
								<input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2" style="width: 350px;">
							</div>
						</td>
					</tr>
					
					
					<!-- 手机 -->
					<tr >
						<td style="width: 400px;text-align: right;">手机(*)</td>
						<td>
							<div class="input-group" style="text-align: center;">
								<span class="input-group-addon" id="sizing-addon2" ><span class="glyphicon glyphicon-earphone"></span></span>
								<input type="text" class="form-control" placeholder="Phone" aria-describedby="sizing-addon2" style="width: 350px;">
							</div>
						</td>
					</tr>
					
					<!-- 地址 -->
					<tr >
						<td style="width: 400px;text-align: right;">地址(*)</td>
						<td>
							<div class="input-group" style="text-align: center;">
								<span class="input-group-addon" id="sizing-addon2" ><span class="glyphicon glyphicon-home"></span></span>
								<input type="text" class="form-control" placeholder="Address" aria-describedby="sizing-addon2" style="width: 600px;">
							</div>
						</td>
					</tr>
					<!-- 确认信息 -->
					<tr>
						<td colspan="2" align="center">
							<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
							<button type="button" class="btn btn-primary">确认配送信息</button>
						</td>
					</tr>
				
				</table>	
			</div>
		</div>
		
		
		<!-- 发票信息 -->
		<div class="container">
			<div class="row">
				<!-- 提示线、发票信息 -->
				<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">收货地址</span></div>
			</div>
		</div>
		
		<div class="container" style="margin-top: 40px;">
			<div class="row">
				<table >
					<tr >
						<td style="width: 300px;text-align: right;"><input type="radio" name="fapiao" id="yes" value="0" checked=""/>无需发票</td>
					</tr>
					<tr>
						<td style="width: 300px;text-align: right;"><input type="radio" name="fapiao" id="no" value="1" />需要发票</td>
					</tr>
					
				</table>
			</div>
			
			<!-- 发票抬头 -->
			
				<div class="row">
					<div id="show">
						<table class="table">
						
							<tr>
								<td style="width: 350px;text-align: right;">发票抬头(*)</td>
								<td>
									<div class="input-group" style="text-align: center;">
										<span class="input-group-addon" id="sizing-addon2" ><span class="glyphicon glyphicon-print"></span></span>
										<input type="text" class="form-control" placeholder="Address" aria-describedby="sizing-addon2" style="width: 600px;">
									</div>
								</td>
							</tr>			
						</table>	
					</div>
					
				</div>
			
		</div>
		
		
		
		
		
		
		<!-- 项目信息 -->
		<div class="container" style="margin-top: 10px;">
			<div class="row">
				<!-- 提示线、项目信息 -->
				<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">项目信息</span></div>
			</div>
		</div>
		
		
		
		<div class="container" style="margin-top: 40px;">
			<div class="row">	
				<!-- 表格 -->
				<table class="table table-striped" >
				 <tr style="text-align: center;">
					 <th>项目名称</th>
					 <th>发起人</th>
					 <th>回报内容</th>
					 <th>回报数量</th>
					 <th>支持单价</th>
					 <th>配送费用</th>
				 </tr>
				 <tr >
					 <td style="border: 1px solid #ddd; height: 100px;">活性富氧净水直饮机</td>
					 <td style="border: 1px solid #ddd; height: 100px;">佘家涛</td>
					 <td style="border: 1px solid #ddd; height: 100px;">每满1750人抽取一台活性富氧净水直饮机</td>
					 <td style="border: 1px solid #ddd; height: 100px;">1</td>
					 <td style="border: 1px solid #ddd; height: 100px;">￥1.00</td>
					 <td style="border: 1px solid #ddd; height: 100px;">免运费</td>
				 </tr>
				</table>
				
				
			</div>
		</div>
		
		<!-- 账单 -->
		<div class="container" style="margin-top: 10px;">
			<div class="row">
				<!-- 提示线、账单 -->
				<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">账单</span></div>
			</div>
		</div>
		
		<div class="container" style="margin-top: 30px;text-align: right;">
			<div class="row">
				<div class="" style="background-color: rgb(252,248,227); width: auto; height: 350px;">
					
					<span class="span_right" >支付金额：￥1.00</span><br>
					<span class="span_right">配送费用：￥0.00</span><br>
					<h2><span >支付总金额：￥1.00</span></h2><br>
					<span class="span_right">请在下单后15分钟内付款，否则您的订单会被自动关闭。</span><br>
					
					<!-- 结算按钮 -->
				<div class="row" style="text-align: right; margin: 5px; ">
					<!-- Indicates caution should be taken with this action -->
					<button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-credit-card"></span>立即付款</button>
				</div>
				
				<span  class="">
					<input type="checkbox" name="" id="" value="" style="font-size: 5px;"/>我已了解风险和规则
				</span>
				
					
				</div>
				
			</div>
		</div>



	<%@ include file="connect/foot.jsp" %>
	</body>
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js" ></script>
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
	
	<script >
		$("#show").hide();
		$('input:radio[name="fapiao"]').change(function(){
			if($("#yes").is(":checked")){
				
				$("#show").hide();
			}
			if($("#no").is(":checked")){
				$("#show").show();
			}
			
		})
	</script>
</html>
