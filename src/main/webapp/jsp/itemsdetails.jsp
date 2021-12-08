<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>

		<meta charset="utf-8">
		<title>项目详情</title>

		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />

		<%--浏览记录--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/liulanjilu.css">
		<%--图片变换--%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main33.css">
	</head>
	<body>
	<%@ include file="connect/heard.jsp"%>

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
					<p style="font-size: 24px;"> ${item.name} </p>
					<p>${item.remark}</p>
				</form>

				<%--<div class="heart" id="like1" rel="like" name="heart" value="heart" style="margin-top: -60px;margin-left: 1200px;">
					<div class="likeCount" id="likeCount1" >${item.follower} </div>
				</div>--%>
                <div style="margin-top: -30px;margin-left: 1100px;">
                    <button type="button" name="like" value="${userLike}"  >
					<span id="like" >
           					  &#10084;&nbsp;&nbsp;
					</span>
                        <span id="sumLike">
                            ${item.follower}
                        </span>
                    </button>
                </div>





			</div>	
		</div>
		
		<!-- 图片加介绍 -->
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<div class="row" style="margin-top: -30px;padding: 0px;margin-left: -50px;">
				<!-- 图片 -->
				<div class="col-md-8 col-sm-12 col-xs-12" align="center" >
					<img src="${pageContext.request.contextPath}/${item.pimgs}" style="width: 700px;height: 450px">
				</div>
				<!-- 介绍 -->
				<div class="col-md-4 col-sm-12 col-xs-12"  style="border: lightgray 1px solid;height: 435px;">

					<c:if test="${item.status==0}">
						<div style="font-style: italic;background-color: green;width: 55px;border-radius: 4px;margin-top: 10px;">
						<span style="color: white;">众筹中</span>
						</div>
					</c:if>
					<c:if test="${item.status==1}">
						<div style="font-style: italic;background-color: crimson;width: 70px;border-radius: 4px;margin-top: 10px;">
							<span style="color: white;">众筹成功</span>
						</div>
					</c:if>

					<c:if test="${item.status==2}">
						<div style="font-style: italic;background-color: green;width: 70px;border-radius: 4px;margin-top: 10px;">
								<span style="color: white;">众筹失败</span>
						</div>
					</c:if>

					
					<table border="10px"  bordercolor="white" style="margin-top: 35px;">
						
						<tr>
							<td colspan="2" ><span style="font-size: 24px;">已筹资金：￥<span> ${item.supportmoney} </span></span></td>
						</tr>
						<tr>
							<td width="280px">目标金额：<span> ${item.money} </span></td><td>达成：<span>${item.completion}%</span></td>
						</tr>
						<tr>
							<td colspan="2">
								<c:if test="${item.completion < 100}">
								<div class="progress" style="width: 97%;height: 15px;">
									<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${item.completion}%">

									</div>
								</div>
								</c:if>
								<c:if test="${item.completion >= 100}">
									<div class="progress" style="width: 97%;height: 15px;">
										<div class="progress-bar progress-bar-danger " role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${item.completion}%">

										</div>
									</div>
								</c:if>
							</td>
						</tr>
						<tr>
							<td>剩余<span> ${item.day} </span>天</td>
						</tr>
						<tr>
							<td>已有<span> ${item.supporter} </span>人支持该项目</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button type="button" style="width: 330px;height: 50px;border: white; border-radius: 4px;background-color: rgb(240,173,78);font-size: 24px;">
									<span style="color: white;"><a href="${pageContext.request.contextPath}/product?method=findProductById1&id=${item.id}">立即支持</a></span>
								</button>
							</td>
						</tr>
					</table>
					
					<div style="border: lightgray solid 1px;margin-top: 20px;width: 400px;margin-left: -10px;"></div>
					
					<table style="margin-top: 20px;" border="10px"  bordercolor="white">
						<tr>
							<td rowspan="3"></td>

							<td>
								<p style="color: #5cb85c; font-size: 20px;font-weight: 800;">发起人：</p>
								<div>
									<span style="font-size: 24px;font-weight: 800; margin-left: 90px;">${memberById.realname}</span>
									<c:if test="${memberById.authstatus eq 0}">
										<div style="font-style: italic;background-color: crimson;width: 50px;border-radius: 4px;position: absolute;margin-left: 150px;margin-top: -25px;">
											<span style="color: white;">未认证</span>
										</div>
									</c:if>
									<c:if test="${memberById.authstatus eq 1}">
										<div style="font-style: italic;background-color: green;width: 50px;border-radius: 4px;">
											<span style="color: white;">已认证</span>
										</div>
									</c:if>
								</div>
								<div style="margin-left: 90px">联系邮箱：${memberById.email}</div>
							</td>

						</tr>

						
					</table>
				
				
				</div>
				
				
				
			</div>
		</div>


	<!-- 尾部 -->
	<div class="container" style="margin-top: 75px;padding: 0px;width: 1250px;height: auto;">
		<div class="row" >
			<nav class="navbar navbar-inverse" style="position: absolute;height: 200px;width: 99%;color: pink;bottom: -380px;">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<!--友情链接-->
					<div align="center" style="margin-top: 10px;">

						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">关于我们</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima1.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 hidden-sm hidden-xs" align="center">
							<p></p>
							<a href="#">联系我们</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima2.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 hidden-sm hidden-xs" align="center">
							<p></p>
							<a href="#">招贤纳士</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima3.png" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">友情链接</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima9.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 hidden-sm hidden-xs" align="center">
							<p></p>
							<a href="#">法律声明</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima5.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">支付方式</a>
							<p></p>
							<img src="${pageContext.request.contextPath}/picture/erweima6.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<p></p>
						<table align="center" style="text-align: center;" >
							<p></p>
							<tr>
								<td colspan="17" style="font-weight: 800;font-size: 18px;">扫描二维码，你想要的这里都有！！！</td>
							</tr>
						</table>
					</div>

				</div><!-- /.container-fluid -->
			</nav>
		</div>
	</div>


	</body>


	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- 图片变换 -->
	<script src="${pageContext.request.contextPath}/js/app33.js"></script>
	<%--浏览记录--%>
	<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"><\/script>')</script>
	<script src="${pageContext.request.contextPath}/js/liulanjilu.js"></script>

	<script>

		$.ajax({
			url:"${path}/product?method=findItemsById",
			data:{/*"ulike":,*/"aid":${item.id}},
			type:"post",
			success:function (){
			    console.log("进入了success");
				//var s = rs.sumLike
				$("button[name='like']").val();
				//$("#sumLike").html(s);
			},
			error:function () {
				console.log("进入了error")
			}
		});




		$(function (){
	/*		<进入页面判断用户点赞状态，爱心变色，已点赞为红色，未点赞为黑色>*/
		    var userLike = $("button[name='like']").val();
            if (userLike == 1) {
                $("span[id='like']").css("color","red");
            }else {
                $("span[id='like']").css("color","black");
            }
			<%--单击按钮触发事件--%>
		    $("button[name='like']").click(function() {
                userl =$(this).val();

                /*<!用户点击状态判断，1为点赞，0为没点赞>*/
                if (userl == 1) {
                    selected()
                }else {
                    selecting()
                }
		    })

		});
			<%--已点赞事件，取消点赞，改变颜色，post传递数据修改用户点赞状态，和返回点赞总数--%>
			function selected() {
				$("span[id='like']").css("color","black");

				$.ajax({
                    url:"${path}/great?method=findGreatByAidAndUid",
                    data:{"ulike":0,"aid":${item.id}},
                    type:"post",
                    dataType:"JSON",
                    success:function (rs){

                    var s = rs;
                    $("button[name='like']").val(0);
                    $("#sumLike").html(s);
                    },
                    error:function (rs) {
                    alert(rs);
                    }
                })
			}
		<%--未点赞事件，点赞，改变颜色，post传递数据修改用户点赞状态，和返回点赞总数--%>
			function selecting() {
				$("span[id='like']").css("color","red");
				$.ajax({
                    url:"${path}/great?method=findGreatByAidAndUid",
                    data:{"ulike":1,"aid":${item.id}},
                    type:"post",
                    dataType:"JSON",
                    success:function (rs){
                    var s = rs;
                    $("button[name='like']").val(1);
                    $("#sumLike").html(s);
                    },
                    error:function (rs) {
                    alert(rs);
                    }
			    })
			}
	</script>

</html>