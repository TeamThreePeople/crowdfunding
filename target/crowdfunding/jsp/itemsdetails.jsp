<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>

		<meta charset="utf-8">
		<title>项目详情</title>
		<%--爱心关注--%>
<%--		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style29.css"/>--%>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		<!--  设置网页的小图标logo  favicon.ico-->
		<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
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
					<p>可爱的造型，摄像安防远程互联的全能设计，让你随时随地守护您的家人，陪伴你的生活。</p>
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



				<%--<div id="aixin">
					<%@ include file="heart.jsp"%>
				</div>--%>

			</div>	
		</div>
		
		<!-- 图片加介绍 -->
		<div class="container" style="margin-top: 40px;padding: 0px;">
			<div class="row" style="margin-top: -30px;padding: 0px;margin-left: -50px;">
				<!-- 图片 -->
				<div class="col-md-8 col-sm-12 col-xs-12" align="center" >
					<img src="${pageContext.request.contextPath}/${item.pimgs}" >
				</div>
				<!-- 介绍 -->
				<div class="col-md-4 col-sm-12 col-xs-12"  style="border: lightgray 1px solid;height: 435px;">
					<div style="font-style: italic;background-color: green;width: 55px;border-radius: 4px;margin-top: 10px;">
						<c:if test="${item.status==0}">
							<span style="color: white;">众筹中</span>
						</c:if>
						<c:if test="${item.status==1}">
							<span style="color: white;">众筹成功</span>
						</c:if>
						<c:if test="${item.status==2}">
							<span style="color: white;">众筹失败</span>
						</c:if>
					</div>
					
					<table border="10px"  bordercolor="white" style="margin-top: 35px;">
						
						<tr>
							<td colspan="2" ><span style="font-size: 24px;">已筹资金：￥<span> ${item.supportmoney} </span></span></td>
						</tr>
						<tr>
							<td width="280px">目标金额：<span> ${item.money} </span></td><td>达成：<span> ${item.completion} %</span></td>
						</tr>
						<tr>
							<td colspan="2">进度条</td>
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
									<span style="color: white;"><a href="${path}/jsp/support.jsp">立即支持</a>></span>
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
			
				
	<%@ include file="connect/foot.jsp"%>
	</body>

	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<%--	爱心关注--%>
<%--	<script src="${pageContext.request.contextPath}/js/heart.js"></script>--%>

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