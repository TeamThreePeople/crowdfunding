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


		<!-- 先引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<%--浏览记录--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/liulanjilu.css">

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
			
			
		</style>
		
	</head>
	
	<body>
	<div class="container">
	<div class="row">
		<%@ include file="connect/heard.jsp" %>
	</div>
	</div>

		<!-- 订单支付 -->
		<div class="container" style="background-color: lightgoldenrodyellow; margin-top: 16px;">
			<div class="row" >

				<div class="col-lg-3 " style="text-align: center;"><h3 ><span class="label label-success" >1.确认回报内容</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >2.确认订单</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >3.付款</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >4.完成</span></h3></div>
			</div>
		</div>
		
		<!-- 表格 -->
		<form action="${path}/project?method=submitOrder" method="post" id="#validation-form" >
		<div class="container">
			<div class="row">

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

					 <td style="border: 1px solid #ddd; height: 100px;" ><input type="text" name="itemsName" value="${items.name}"  hidden> ${items.name}</td><%--活性富氧净水直饮机--%>
					 <td style="border: 1px solid #ddd; height: 100px;"  ><input type="text" name="userName" value="${name}"  hidden> ${name}</td>
					 <td style="border: 1px solid #ddd; height: 100px;"  ><input type="text" name="areturn" value="${aReturn.content}"  hidden>${aReturn.content}</td><%--每满1750人抽取一台活性富氧净水直饮机--%>
					 <td style="border: 1px solid #ddd; height: 100px;" ><input type="text" name="count" id="count" value="${rcount}" hidden />${rcount}</td>
					 <td style="border: 1px solid #ddd; height: 100px;"  ><input type="text" name="price" value="${count}"  hidden>￥${count}</td>
					 <c:if test="${aReturn.freight==0}">
						 <td style="border: 1px solid #ddd; height: 100px;" ><input type="text" name="freight" value="0"  hidden>免运费</td>
					 </c:if>
					 <c:if test="${aReturn.freight!=0}">
						 <td style="border: 1px solid #ddd; height: 100px;" ><input type="text"  name="freight" value="${aReturn.freight}"  hidden>￥${aReturn.freight}</td>
					 </c:if>
				 </tr>
				</table>
			</div>
		</div>
		
		<div class="container">

			<!-- 总价 -->
			<div class="row" style="text-align: right;"><%--拿到不同的项目对应的钱数--%>
				<span ><input type="text" name="total" value="${total}"  hidden>总价(含运费):￥${total}</span>
			</div>
			<!-- 结算按钮 -->
			<div class="row" style="text-align: right;">
				<!-- Indicates caution should be taken with this action -->
				<button type="submit" class="btn btn-warning"  ><input type="text" value="${items.id}" name="pid" hidden><span class="glyphicon glyphicon-credit-card"></span>去支付</button>
			</div>
		</div>
		</form>

		<!-- 提示 -->
		<div class="container">
			<div class="row">
				<span class="glyphicon glyphicon-info-sign" style="color: blueviolet; font-size: 20px;"> 提示</span>
				<!-- 提示线 -->
				<div   style="height:300px;left: 200px; border-left:solid gainsboro 1px;">
					<br>
					<br>
					<br>
					<br>
					<div style="padding: 20px;">
						<p >1.众筹并非商品交易，存在一定风险。支持者根据自己的判断选择、支持众筹项目,与发起人共同实现梦想并获得发起人承诺的回报。</p>
						<p >2.众筹平台仅提供平台网络空间及技术支持等中介服务,众筹仅存在于发起人和支持者之间,使用众筹平台产生的法律后果由发起人与支持者自行承担。</p>
						<p >3.本项目必须在2021-12-12之前达到￥1000000 00的目标才算成功,否则已经支持的订单将取消。订单取消或募集失败的,您支持的金额将原支付路径退回。</p>
						<p >4.请在支持项目后15分钟内付款,否则您的支持请求会被自动关闭</p>
						<p >5.众筹成功后由发起人统进行发货,售后服务由发起人统一提供;如果发生发起人无法发放回报、延迟发放回报、不提供回报后续服务等情况,您需要直接和发起人协商解决。</p>
						<p >6.如您不同意上述风险提示内容您有权选择不支持 ;一旦选择支持 ,视为您已确认并同意以 上提示内容。</p>
					</div>

				</div>

			</div>
		</div>

	<div class="row">
		<%@ include file="connect/foot.jsp" %>
	</div>

