<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>实名认证</title>
	<!--  设置网页的小图标logo  favicon.ico-->
	<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />

	<link href="${pageContext.request.contextPath}/css/jquery.wizzy.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" >
	<%--浏览记录--%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/liulanjilu.css">
	<%--图片变换--%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main33.css">
    <style>
		td{
			font-style: italic;
			font-weight: 500;
			font-size: 18px;
		}
		/*输入框*/
		input{
			border-radius: 4px;
			height: 30px;
			/* background-color:whitesmoke; */
		}
		/* 输入框背景颜色 */
		#input{
			background-color: rgb(232,240,254); 
		}
		/* 输入框焦点事件 */
		#input:focus{
			background-color: rgb(196,227,243);
		}
		/* 四个填写步骤 */
		.wz-body{
			background-color: #F0EFEE;
		}
		/* 背景颜色 */
		.wz-inner{
			background-color: snow;/* beige  lavenderblush */
		}
		#td{
			height: 6px;
		}
		

		/*====================================  */
			/* body{
				background-color: #F0EFEE;
			} */
			/* 认证按钮 */
			#button{
				width: 404px;
				border-radius: 5px;
				border-color: white;
				background-color: #EF3F52;
				color: white;
				font-style: initial;	
			}
			/* 选项与图片距离 */
			#td1{
				height: 3px;
			}
			/* 图片与按钮距离 */
			#td2{
				height: 8px;
			}
			/* 单选框字体 */
			.choose{
				font-size: 8px;
			}
			/* 边框 */
			#div1{
				background-color: lavenderblush;/*lemonchiffon #EBCCCC */
				text-align: center;
				width: 480px;
				height: 300px;
				margin-top: -15px;
				border: 1px solid silver;
				border-radius: 10px;
			}
			/* 选项左右居中 */
			#row{
				margin-left: 20px;
			}
		
			.tb td{
				border-spacing: 0;
				border-collapse: collapse;
				padding: 8px;
				line-height: 1.42857143;
				vertical-align: top;
				font-size: 21px;
				
				}
			
			
			table{
				text-align: center;
			}

		label.error{
			background:url(${pageContext.request.contextPath}/img/unchecked.png) no-repeat 10px 3px;
			padding-left: 30px;
			font-family:georgia;
			font-size: 15px;
			font-style: normal;
			color: red;
		}

		label.success{
			background:url(${pageContext.request.contextPath}/img/checked.png) no-repeat 10px 3px;
			padding-left: 30px;
		}
		.console_banner {
			width: 100%;
			height: 340px;
			position: relative;
			background: url("../picture/renzheng.png") no-repeat center center;
			-webkit-background-size: cover;
			background-size: cover;
		}
		.console_banner p:first-child {
			position: absolute;
			left: 350px;
			top: 132px;
			font-size: 34px;
			line-height: 34px;
			font-weight: 700;
			color: #fff;
		}
		.console_banner p:last-child {
			position: absolute;
			left: 350px;
			top: 180px;
			font-size: 16px;
			line-height: 24px;
			color: #fff;
		}
	</style>
</head>
<body>
	<%@ include file="connect/heard.jsp"%>

	<div class="console_banner" style="top: -47px">
		<p>加入股利多认证</p>
		<p>完成股利多认证，提高增信，独享特权</p>
	</div>



	<!-- 实名认证-申请 -->
	<div class="container" style="margin-top: 30px;">
		<div class="row" style="margin-top: -67px;">
			<!-- 提示线、实名认证-实名认证-申请 -->
			<div  style="height:30px;left: 200px; border-left:solid orange 4px;">
				<span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">实名认证-申请</span>
			</div>
			<hr >
		</div>
	</div>

	<div class="htmleaf-container" style="margin-left: 350px; width: 580px;">
		<div class="wrapper" style="margin-top: -118px">
            <!-- Start Wizzy -->
            <div class="wz-wrapper wizzy">
                <div class="wz-inner" style="width: 630px;">
					<!--四个填写步骤的标题-->
                    <div class="wz-header">
                        <nav>
							<a href="#" style="font-size:16px; ">账户类型选择</a>
							<a href="#" style="font-size:16px;">基本信息</a>
                            <a href="#" style="font-size:16px;">资质文件上传</a>
                            <a href="#" style="font-size:16px;">邮箱确认</a>
                            <a href="#" style="font-size:16px;">申请确认</a>
                        </nav>
                    </div>

					 <!--五个填写步骤 -->
                    <div class="wz-body">
						<form id="realNameForm"   method="post" >
						<%--账户类型选择--%>
						<div class="wz-step">
							<div id="row" >
								<h3>实名认证-账户类型选择</h3><hr />

									<table class="tb"  style="text-align: center;">
										<tr class="accttype">
											<td>
												<input type="radio" name="accttype" value="0" style="margin-left: 10px;cursor: pointer" checked/>商业公司
												<input type="radio" name="accttype" value="1" style="margin-left: 10px;cursor: pointer"/>个体工商业
												<input type="radio" name="accttype" value="2" style="margin-left: 10px;cursor: pointer"/>个人经营
												<input type="radio" name="accttype" value="3" style="margin-left: 10px;cursor: pointer"/>政府及非营利组织
											</td>
										</tr>
										<tr>
											<td >
												<div class="" style="margin-left: -10px;" >
													<img src="${pageContext.request.contextPath}/img/20211126192346.png">
													<img style="margin-left: 30px;" src="${pageContext.request.contextPath}/img/20211126192412.png">
													<img style="margin-left: 30px;" src="${pageContext.request.contextPath}/img/20211126192430.png">
													<img style="margin-left: 30px;" src="${pageContext.request.contextPath}/img/20211126192450.png">
												</div>

											</td>
										</tr>

									</table>


							</div>
						</div>
						<!-- 基本信息 -->
                        <div class="wz-step">
							<h3>基本信息</h3><hr>
							<table>
								<tr>
									<td align="left" style="width: 110px;height: 50px">真实姓名：</td>
									<td align="left">
										<input type="text" required name="realname" id="realname" placeholder="请输入真实姓名">
										<br>
									</td>
								</tr>
								<tr>
									<td align="left">身份证号码：</td>
									<td align="left">
										<input type="text" required name="cardnum" id="cardnum" placeholder="请输入身份证号码"/>
									</td>
								</tr>
							</table>
                        </div>
						<!-- 资质文件上传 -->
                        <div class="wz-step">
							<h3>手持身份证照片</h3><hr />
							<table>
								<tr>
									<td style="width: 300px;">
										<img style="width: 200px; height: 200px;" src="${pageContext.request.contextPath}/img/20211126213054.png">
									</td>
									<td>
										<img id="pic" name="pic" width="200" height="200" src="${pageContext.request.contextPath}/picture/empty.jpg"/>
									</td>
								</tr>
								<tr>
									<td>上传样例：</td>
									<td><input type="file" required="required" id="file" placeholder="file" name="file" onchange="showPreview(this)" style="width: 222px"></td>
								</tr>
							</table>
                        </div>
						<!-- 邮箱确认 -->
                        <div class="wz-step">
							<h3>邮箱确认</h3><hr />
							<!-- <form> -->
							<table>
								<tr>
									<td align="left" style="width: 100px;height: 50px">邮箱地址：</td>
									<td align="left">
										<input type="email" id="email" name="email" required placeholder="请输入您的邮箱">
									</td>
								</tr>
							</table>
							<!-- </form> -->
                        </div>
						</form>

						<!-- 申请确认 -->
                        <div class="wz-step">
							<h3>申请确认</h3><hr />
							<form id="codeForm" action="${path}/member?method=active"  method="post">
							<table>
								<tr>
									<td align="left" style="width: 100px;height: 50px">验证码：</td>
									<td align="left"><input type="text" id="code" required name="code" placeholder="请输入您的激活码"></td>

								</tr>
								<tr>
									<td></td>
									<td align="left"><input type="button" onclick="checkTrue()" style="font-size:15px; background-color:deepskyblue; color: #D4D4D4" value="获取激活码" name="code"></td>
								</tr>
							</table>
								<button type="submit"  value="" style="color:white;margin-top: 60px;margin-left: 520px;width: 80px;height:40px;background-color:mediumspringgreen;border-radius: 4px; ">
									完成
									<svg class="svg-inline--fa fa-check fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="check" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
										<path fill="currentColor" d="M173.898 439.404l-166.4-166.4c-9.997-9.997-9.997-26.206 0-36.204l36.203-36.204c9.997-9.998 26.207-9.998 36.204 0L192 312.69 432.095 72.596c9.997-9.997 26.207-9.997 36.204 0l36.203 36.204c9.997 9.997 9.997 26.206 0 36.204l-294.4 294.401c-9.998 9.997-26.207 9.997-36.204-.001z">
										</path>
									</svg>
								</button>
							</form>
						<%--	<a onclick="active()" &lt;%&ndash;class="btn btn-success right" data-action="finish"&ndash;%&gt; style="margin-top: 66px;margin-left: 520px">
							完成
							<svg class="svg-inline--fa fa-check fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="check" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
								<path fill="currentColor" d="M173.898 439.404l-166.4-166.4c-9.997-9.997-9.997-26.206 0-36.204l36.203-36.204c9.997-9.998 26.207-9.998 36.204 0L192 312.69 432.095 72.596c9.997-9.997 26.207-9.997 36.204 0l36.203 36.204c9.997 9.997 9.997 26.206 0 36.204l-294.4 294.401c-9.998 9.997-26.207 9.997-36.204-.001z">
								</path>
							</svg><!-- <i class="fas fa-check"></i> -->
							</a>--%>
                        </div>

                    </div>
					<div class="wz-navigator">

					</div>
                </div>

            </div>
            <!-- End Wizzy -->
        </div>
	</div>

	<div style="margin-top: 150px">
		<%@ include file="connect/foot.jsp"%>
	</div>

	<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.wizzy.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
	
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<script src="${path}/js/jquery.validate.min.js"></script>
	<script src="${path}/js/validateAll.js"></script>

	<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js" integrity="sha384-SlE991lGASHoBfWbelyBPLsUlwY1GwNDJo3jSJO04KZ33K2bwfV9YBauFfnzvynJ" crossorigin="anonymous"></script>
	<script type="text/javascript">
		//将文件流以url形式读取，实现图片实时显示：
		function showPreview(source){
			var file = source.files[0];
			if(window.FileReader){
				var fr = new FileReader();
				fr.onloadend = function(e){
					document.getElementById("pic").src=e.target.result;
				}
				fr.readAsDataURL(file);
			}
		}
	</script>

	<!-- 图片变换 -->
	<script src="${pageContext.request.contextPath}/js/app33.js"></script>
	<%--浏览记录--%>
	<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"><\/script>')</script>
	<script src="${pageContext.request.contextPath}/js/liulanjilu.js"></script>

	<script>
		function active() {

			$.ajax({
				type:"get",
				url:"${path}/member?method=active",
				data:$("#codeForm").serialize(),
				success:function() {
					window.location.reload();
				}
			})
		}

		function checkTrue() {

			$.ajax({
				type:"get",
				url:"${path}/member?method=checkTrue",
				data:$("#realNameForm").serialize(),
				success:function() {
					console.log("认证成功");
				}
			})
		}
	</script>

<%--	<%@ include file="connect/foot.jsp"%>--%>