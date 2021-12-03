<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>回报设置</title>
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


	<%@ include file="connect/heard.jsp"%>>
		
		
				
		
		<!-- 回报设置 -->
		<div class="container" style="background-color: lightgoldenrodyellow;">
			<div class="row" >
				
				<div class="col-lg-3 " style="text-align: center;"><h3 ><span class="label label-default" >1.项目发起人信息</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-success" >2.回报设置</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >3.确认信息</span></h3></div>
				<div class="col-lg-3 " style="text-align: center;"><h3><span class="label label-default" >4.完成</span></h3></div>
			</div>
		</div>
		
		
		<!-- 表格 -->
		<div class="container">
			<div class="row">
				<table class="table table-striped" >
				 <tr style="text-align: center;">
					 <th>序号</th>
					 <th>支付金额</th>
					 <th>名额限制</th>
					 <th>单笔限购</th>
					 <th>回报内容</th>
					 <th>回报时间</th>
					 <th>运费</th>
					 <th>操作</th>
				 </tr>
				 <tr >
					 <td style="border: 1px solid #ddd; height: 100px;">1</td>
					 <td style="border: 1px solid #ddd; height: 100px;">￥1.00</td>
					 <td style="border: 1px solid #ddd; height: 100px;">无限制</td>
					 <td style="border: 1px solid #ddd; height: 100px;">1</td>
					 <td style="border: 1px solid #ddd; height: 100px;">1</td>
					 <td style="border: 1px solid #ddd; height: 100px;">项目结束后的30天</td>
					 <td style="border: 1px solid #ddd; height: 100px;">包邮</td>
					 <td style="border: 1px solid #ddd; height: 100px;">
						 <a href="#">修改</a>|<a href="#">删除</a>
					 </td>
				 </tr>
				</table>
			</div>
		</div>
		
		
		<!-- 添加回报 -->
		<div class="container">
			<div class="row">
				<button type="button" id="addreturn" name="addreturn" class="btn btn-info" ><span class="glyphicon glyphicon-plus">添加回报</span></button>
				
			</div>
		</div>
		
		<div class="container" style="margin-top: 30px;">
			<div class="row">
				<div id="show">
				<form action="${pageContext.request.contextPath}/projectReturn?method=ProjectReturnForm&items=${items}.getId()" method="post" enctype="multipart/form-data">
					<table class="tb" >
						
						<!-- 回报类型 -->
						<tr>
							<td style="width: 300px;text-align: right;">回报类型</td>
							<td style="text-align: left;">
									<input type="radio" name="type" id="" value=""  checked="checked" style="margin-left: 50px;"/>实物回报
									<input type="radio" name="type" id="" value="" style="margin-left: 10px;"/>虚拟物品回报
								</td>
						</tr>
						<!-- 支持金额(元) -->
						<tr >
							<td style="width: 300px;text-align: right;">支持金额(元)</td>
							<td style="text-align: left;">
								<input type="text" class="form-control" name="supportmoney" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								
							</td>
						</tr>
						
						
						<!-- 回报内容 -->
						<tr >
							<td style="width: 300px;text-align: right;">回报内容</td>
							<td >
									<textarea  class="form-control" name="content" rows="4" cols="60" placeholder="简单描述回报内容,不超过200字" style="margin-left: 50px;"></textarea>
							</td>
						</tr>
						
						
						

						<!-- 说明图片 -->
						<tr >
							<td style="width: 300px;text-align: right;">说明图片</td>
							<td style="text-align: left;">
								<img id="picture" style="margin-left: 50px;" name="picture" width="120" height="120" />
								<input type="file" class="" name="itemspicture" aria-describedby="sizing-addon2" required onchange="showPreview(this)" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									支持jpg、jpeg、png、gif格式，大小不超过2M，建议尺寸：740*457px
								</span>
							</td>
						</tr>
						
						<!-- 回报数量(名) -->
						<tr >
							<td style="width: 300px;text-align: right;">回报数量</td>
							<td style="text-align: left;">
								<input type="text" class="form-control" name="count" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									"0"为不限回报数量
								</span>
							</td>
						</tr>
						
						
						
						<!-- 单笔限购 -->
						<tr >
							<td style="width: 300px;text-align: right;">支持金额(元)</td>
							
							<td style="text-align: left;">
									<input type="radio" name="xiangou" id="yes" value="" checked="checked" style="margin-left: 50px;"/>不限购
									<input type="radio" name="xiangou" id="no" value=""  style="margin-left: 50px;"/>限购
									
									<input type="text" id="show2" name="money" aria-describedby="sizing-addon2" style="width: 100px;">
									
							</td>
							
						</tr>
						
						
						<!-- 运费(元) -->
						<tr >
							<td style="width: 300px;text-align: right;">运费(元)</td>
							<td style="text-align: left;">
								<input type="text" class="form-control" name="freight" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									"0"为包邮
								</span>
							</td>
						</tr>
						
						
						<!-- 发票 -->
						<tr >
							<td style="width: 300px;text-align: right;">发票</td>
							
							<td style="text-align: left;">
									<input type="radio" name="invoice" id="" value="" checked="checked" style="margin-left: 50px;"/>不可开发票
									<input type="radio" name="invoice" id="" value=""  style="margin-left: 50px;"/>可开发票
									<span id=""  style="text-align: left;margin-left: 10px;font-size: 5px;font-weight: bold;">
										（包括个人发票和自定义抬头发票）
									</span>
							</td>	
						</tr>
						
						<!-- 回报时间 -->
						<tr >
							<td style="width: 300px;text-align: right;">回报时间</td>
							<td style="text-align: left;">
								
								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									<input type="text" class="" name="rtndate" aria-describedby="sizing-addon2" style="width: 100px;">天后，向支持者发送回报
									(项目结束后)
								</span>
							</td>
						</tr>
						
					</table>
					
						<span id="" style=" width: 70px;height: 40px; margin-top: 10px;margin-left: 31%;">
							<input type="submit" name="" value="确定" style=" background-color: dodgerblue;"/>
							<input type="reset" name="" value="取消" style="" />
						</span>

					</form>

				</div>
				
					<div class="row" style="margin-top: 50px;text-align: center;">
						<button type="button" class="btn btn-warning"><a href="${pageContext.request.contextPath}/jsp/itemsconfirm.jsp">下一步</a></button>
					</div>
				
				
			</div>
		</div>

	
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script >


		$("#show").hide();
		var flag = true;
		$("#addreturn").click(function(){
			if(flag){
				$("#show").show();
				flag = false;
			}else{
				$("#show").hide();
				flag = true;
			}
			
		})
		
		
		$("#show2").hide();
			$('input:radio[name="xiangou"]').change(function(){
				if($("#yes").is(":checked")){	
					$("#show2").hide();
				}
				if($("#no").is(":checked")){
					$("#show2").show();
				}
				
		})

		//将文件流以url形式读取，实现图片实时显示：
		function showPreview(source) {
			var file = source.files[0];
			if (window.FileReader) {
				var fr = new FileReader();
				fr.onloadend = function (e) {
					document.getElementById("picture").src = e.target.result;
				}
				fr.readAsDataURL(file);
			}
		}


	</script>

	<%@ include file="connect/foot.jsp"%>>