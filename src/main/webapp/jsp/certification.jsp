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
				margin-top: 90px;
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
			
	</style>
</head>
<body>
	
	<%@ include file="connect/heard.jsp"%>>
	
	
	<!-- 实名认证-账户类型选择 -->
	<div class="container" >
		<div class="row">
			<!-- 提示线、实名认证-账户类型选择 -->
			<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">实名认证-账户类型选择</span></div>
			<hr >
		</div>
	</div>
	
	
	
	
	<!-- 实名认证-账户类型选择 -->
	<div id="div1" style="margin-left: 450px;width: 600px;">
		<div id="row" >
			<h3>实名认证-账户类型选择</h3><hr />
		<form>
			<table class="tb"  style="text-align: center;">
			<tr class="choose" >
				<td >
						<input type="radio" name="choose" style="margin-left: 10px;"/>商业公司
						<input type="radio" name="choose" style="margin-left: 10px;"/>个体工商业
						<input type="radio" name="choose" />个人经营
						<input type="radio" name="choose" />政府及非营利组织
				</td >
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
		</form>
		
		</div>
	</div>

	<!-- 实名认证-申请 -->
	<div class="container" style="margin-top: 50px;">
		<div class="row">
			<!-- 提示线、实名认证-实名认证-申请 -->
			<div  style="height:30px;left: 200px; border-left:solid orange 4px;"><span style="font-size: 20px;font-weight: bold;  color: orange; padding: 10px; text-align: center;">实名认证-申请</span></div>
			<hr >
		</div>
	</div>

	<div class="htmleaf-container" style="margin-left: 450px; width: 600px;">
		<div class="wrapper">
            <!-- Start Wizzy -->
            <div class="wz-wrapper wizzy">
                <div class="wz-inner">
					<!--四个填写步骤的标题-->
                    <div class="wz-header">
                        <nav>
                            <a href="#">基本信息</a>
                            <a href="#">资质文件上传</a>
                            <a href="#">邮箱确认</a>
                            <a href="#">申请确认</a>
                        </nav>
                    </div>
					 <!--四个填写步骤 -->
                    <div class="wz-body">
						<form id="realNameForm">
						<!-- 基本信息 -->
                        <div class="wz-step">
                            <p>
								<h3>基本信息</h3><hr>
									<table>
										<tr>
											<td align="left">真实姓名</td>
										</tr>
										<tr><td></td></tr>
										<tr>
											<td><input type="text" required="required" name="username" id="input" placeholder="请输入真实姓名"><br></td>
										</tr>
										<tr><td></td></tr>
										<tr>
											<td align="left">身份证号码</td>
										</tr>
										<tr>
											<td><input type="text" required="required" name="personId" id="input" placeholder="请输入身份证号码"/></td>
										</tr>
										<tr><td></td></tr>
										<tr>
											<td align="left">电话号码</td>
										</tr>
										<tr><td></td></tr>
										<tr>
											<td><input type="text" required="required" name="phoneNumber" id="input" placeholder="请输入电话号码"/></td>
										</tr>
									</table>
							</p>
                        </div>
						<!-- 资质文件上传 -->
                        <div class="wz-step">
                            <p>
								<h3>手持身份证照片</h3><hr />
								<!-- <form> -->
									<table>
										<tr>
											<p>上传样例:</p>
											<img style="width: 100px; height: 100px;" src="${pageContext.request.contextPath}/img/20211126213054.png">
										</tr>
										<tr><td id="td"></td></tr>
										<tr>
											<td><input type="file" required="required" id="file" placeholder="file" name="file" onchange="showPreview(this)"></td>
										</tr>
										<tr>
											<td>
												<img id="pic" name="pic" width="100" height="100" src=""/>
											</td>
										</tr>
									</table>
								<!-- </form> -->
							</p>
                        </div>
						<!-- 邮箱确认 -->
                        <div class="wz-step">
                            <p>
								<h3>邮箱确认</h3><hr />
								<!-- <form> -->
								<table>
									<tr>
										<td>邮箱地址</td>
									</tr>
									<tr><td></td></tr>
									<tr>
										<td><input type="email" id="input" name="email" placeholder="请输入您的邮箱"></td>
									</tr>
								</table>	
								<!-- </form> -->
							</p>
                        </div>
						<!-- 申请确认 -->
                        <div class="wz-step">
                            <p>
								<h3>申请确认</h3><hr />
								<!-- <form> -->
								<table>
									<tr>
										<td>验证码</td>
									</tr>
									<tr><td></td></tr>
									<tr>
										<td><input type="text" id="input" required="required" name="securityCode" placeholder="请输入您验证码">
									</tr>
									<tr><td></td></tr><tr><td></td></tr>
									<tr>
										<td><input type="button" style="font-size:15px; background-color:#993333; color: #D4D4D4" value="重新发送验证码" name="reSecurityCode"></td>
										<td><input type="submit" style="font-size:15px; background-color:#CC0033; color: #D4D4D4" value="申请完成" onclick="window.location.href='${pageContext.request.contextPath}/jsp/personalcenter.jsp'"></td>   <!-- #C7254E #DF6659 indianred darksalmon-->
									</tr>
								</table>	
							</p>
                        </div>
						
						</form>
                    </div>
                    <div class="wz-navigator">
						
					</div>
                </div>
            </div>
            <!-- End Wizzy -->
        </div>
	</div>


	<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.wizzy.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
	
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
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

	<%@ include file="connect/foot.jsp"%>>