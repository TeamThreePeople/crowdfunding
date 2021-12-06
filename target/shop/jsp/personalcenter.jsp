<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>个人中心</title>
		<!-- <link rel="stylesheet" type="text/css" href="css/normalize.css" /> -->
			<!-- <link rel="stylesheet" type="text/css" href="css/default.css"> -->
			<!-- 分类按钮 -->
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style24.css"/>
			
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" >
			<!--竖状table -->
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shuzhuangtable.css" >
			<!-- 头像 -->
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/touxiang.css" >
			<!-- 横状table -->
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/henzhuangtable.css" >
			<!-- 旋转按钮 -->
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles17.css">
			<!--  设置网页的小图标logo  favicon.ico-->
			<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
			
	</head>
	<body>



		<%@ include file="connect/heard.jsp" %>

		<!-- 中间 -->
		<div class="htmleaf-content bgcolor-3" >
			<svg id="svg-source" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="position: absolute">
			  <g id="shopping-cart" data-iconmelon="e-commerce icons:7c96e2dece0152dc594d66b260f79db0">
			    <path d="M22.463,25.841c0.528,0,0.918-0.429,0.918-0.958v-6.786c0-0.529-0.39-0.958-0.918-0.958c-0.529,0-0.92,0.429-0.92,0.958
				v6.786C21.543,25.413,21.934,25.841,22.463,25.841z M18.156,25.841c0.529,0,0.919-0.429,0.919-0.958v-6.786
				c0-0.529-0.39-0.958-0.919-0.958s-0.919,0.429-0.919,0.958v6.786C17.237,25.413,17.627,25.841,18.156,25.841z M13.851,25.841
				c0.528,0,0.919-0.429,0.919-0.958v-6.786c0-0.529-0.391-0.958-0.919-0.958c-0.529,0-0.919,0.429-0.919,0.958v6.786
				C12.932,25.413,13.321,25.841,13.851,25.841z M29.426,8.511h-5.327l-2.731-4.396c-0.342-0.593-0.98-0.961-1.666-0.961
				c-0.336,0-0.668,0.089-0.959,0.258c-0.918,0.529-1.233,1.707-0.689,2.647l1.564,2.451h-7.976l1.58-2.475
				c0.529-0.917,0.214-2.095-0.704-2.624c-0.292-0.169-0.623-0.258-0.959-0.258c-0.686,0-1.323,0.368-1.655,0.943L7.161,8.511H2.574
				C1.155,8.511,0,9.667,0,11.086v1.47c0,1.274,0.934,2.525,2.152,2.728l1.931,11.042c0.03,1.394,1.173,2.519,2.573,2.519h18.605
				c1.401,0,2.545-1.125,2.574-2.52l1.921-11.032C31.019,15.128,32,13.862,32,12.556v-1.47C32,9.667,30.845,8.511,29.426,8.511z
				 M26.615,26.167l-0.009,0.104c0,0.741-0.604,1.344-1.345,1.344H6.656c-0.741,0-1.344-0.603-1.344-1.344L3.407,15.327h25.096
				L26.615,26.167z M30.77,12.556c0,0.74-0.603,1.541-1.344,1.541H2.574c-0.741,0-1.344-0.8-1.344-1.541v-1.47
				c0-0.741,0.603-1.344,1.344-1.344h5.271l3.113-5.011c0.184-0.318,0.623-0.439,0.944-0.253c0.33,0.19,0.444,0.614,0.268,0.92
				L9.396,9.742h12.467l-2.76-4.32c-0.189-0.33-0.076-0.753,0.253-0.944c0.323-0.186,0.756-0.074,0.955,0.27l3.104,4.994h6.011
				c0.741,0,1.344,0.603,1.344,1.344V12.556z M9.545,25.841c0.528,0,0.918-0.429,0.918-0.958v-6.786c0-0.529-0.39-0.958-0.918-0.958
				c-0.529,0-0.919,0.429-0.919,0.958v6.786C8.626,25.413,9.016,25.841,9.545,25.841z"></path>
			  </g>
			  <g id="credit-card" data-iconmelon="e-commerce icons:c3144b166f93e0f6b73aee04a0a48397">
			    <path d="M29.018,4.751H2.981C1.337,4.751,0,6.089,0,7.733v16.534c0,1.644,1.337,2.981,2.981,2.981h26.036
				c1.645,0,2.982-1.338,2.982-2.981V7.733C32,6.089,30.662,4.751,29.018,4.751z M30.638,24.267c0,0.893-0.727,1.62-1.621,1.62H2.981
				c-0.893,0-1.62-0.727-1.62-1.62V13.603h29.276V24.267z M30.638,10.236H1.362V7.733c0-0.894,0.727-1.62,1.62-1.62h26.036
				c0.894,0,1.621,0.727,1.621,1.62V10.236z M8.848,22.494H2.724v1.338h6.124V22.494z M19.043,22.494H9.548v1.338h9.495V22.494z"></path>
			  </g>
			  <g id="gift" data-iconmelon="e-commerce icons:05fa65d254ada5a9cb5c2f1e8d87f02b">
			    <path d="M29.084,7.154h-4.807c0.157-0.146,0.731-0.497,0.866-0.678c0.757-1.01,1.016-2.355,0.677-3.51
				c-0.473-1.612-1.773-2.575-3.479-2.575c-1.017,0-1.993,0.371-2.546,0.967c-0.759,0.818-2.841,3.57-3.764,4.8
				c-0.923-1.23-3.004-3.982-3.764-4.8c-0.553-0.596-1.528-0.967-2.546-0.967c-1.706,0-3.007,0.962-3.479,2.575
				c-0.339,1.155-0.08,2.5,0.677,3.51C7.053,6.657,7.5,7.007,7.657,7.154H2.915C1.308,7.154,0,8.462,0,10.07v5.262h1.356v13.362
				c0,1.607,1.308,2.915,2.916,2.915h23.435c1.607,0,2.915-1.308,2.915-2.915V15.332H32V10.07C32,8.462,30.692,7.154,29.084,7.154z
				 M14.281,30.311H4.272c-0.857,0-1.555-0.76-1.555-1.617V15.401h11.563V30.311z M14.281,13.949H1.362V10.07
				c0-0.857,0.696-1.555,1.553-1.555h11.366V13.949z M9.456,6.471c-0.731,0-1.221-0.508-1.447-0.811
				c-0.498-0.664-0.678-1.571-0.46-2.312c0.423-1.441,1.661-1.597,2.173-1.597c0.729,0,1.303,0.268,1.548,0.532
				c0.623,0.671,2.289,2.854,3.301,4.197C12.948,6.477,10.35,6.471,9.456,6.471z M20.792,2.285c0.245-0.265,0.819-0.532,1.548-0.532
				c0.513,0,1.75,0.156,2.173,1.597c0.217,0.74,0.037,1.647-0.46,2.311c-0.227,0.303-0.716,0.811-1.447,0.811
				c-0.894,0-3.493,0.006-5.115,0.011C18.504,5.139,20.169,2.956,20.792,2.285z M29.26,28.694c0,0.857-0.697,1.617-1.554,1.617h-10.02
				v-14.91H29.26V28.694z M30.638,13.949H17.687V8.515h11.397c0.858,0,1.554,0.698,1.554,1.555V13.949z"></path>
			  </g>
			  <g id="package" data-iconmelon="e-commerce icons:de2d76203b2448ee25bda0d82fa73c00">
			    <path d="M31.666,7.132l0.028-0.014L16.191,0L0.264,7.285l0.027,0.013v17.39l15.094,7.266V32l0.05-0.023l0.012,0.006l0.006-0.013
				l16.283-7.442V7.132H31.666z M16.191,1.415l12.553,5.73l-3.352,1.604L12.535,3.088L16.191,1.415z M1.669,23.879V7.887l13.993,6.388
				l0.006,16.256L1.669,23.879z M3.202,7.285L8.223,5.06l12.553,5.897l-4.592,2.195L3.202,7.285z M30.358,23.698l-13.307,6.294
				l0.019-15.722l4.873-2.396l0.031,7.692l4.169-2.288V9.777l4.215-2.062V23.698z"></path>
			  </g>
			</svg>
			<!-- ICONS -->
		
			<div id="wrapper" style="margin-top: 100px;">
				<!-- 左边 -->
				<div id="left-side">
					<div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: -160px;">
						<form>
							<table align="center">
							<tr>
								<td align="center">
									<div class="profile-pic" >
										<img src="${pageContext.request.contextPath}/itemsimgs/p_008.jpg" />
									</div>
								</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr align="center">
								<td>
									<c:if test="${member.loginacct eq null}">
										<span id="name" style="color: #000000;">名字</span>
									</c:if>
									<c:if test="${member.loginacct ne null}">
										<span id="name" style="color: #000000;">${member.loginacct}</span>
									</c:if>
								</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td align="center">
										<c:if test="${member.authstatus==0}">
											<div style="background-color: red;width: 90px;border-radius: 4px;margin-left: 85px;">
											<span style="color: white;"><a href="${pageContext.request.contextPath}/jsp/certification.jsp">未实名认证</a></span>
											</div>
										</c:if>

										<c:if test="${member.authstatus==1}">
											<div style="background-color: deepskyblue;width: 120px;border-radius: 4px;margin-left: 70px;">
											<span style="color: white;"><a href="${pageContext.request.contextPath}/jsp/certification.jsp">实名认证申请中</a></span>
											</div>
										</c:if>

										<c:if test="${member.authstatus==2}">
											<div style="background-color: forestgreen;width: 90px;border-radius: 4px;margin-left: 85px;">
											<span style="color: white;"><a href="${pageContext.request.contextPath}/jsp/certification.jsp">已实名认证</a></span>
											</div>
										</c:if>

										<c:if test="${member.authstatus eq null}">
											<div style="background-color: red;width: 100px;border-radius: 4px;margin-left: 75px;">
											<span style="color: white;"><a href="${pageContext.request.contextPath}/jsp/certification.jsp">实名认证状态</a></span>
											</div>
										</c:if>

								</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td align="center">
									<div style="width: 270px;border: #000000 solid 1px;"></div>
								</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td>
									<ul>
										  <li class="choose active">
											  <!-- 图标 -->
											<div class="icon active">
											  <svg viewBox="0 0 32 32">
												<g filter="">
												  <use xlink:href="#shopping-cart"></use>
												</g>
											  </svg>
											</div>
											我的众筹
										  </li>
										  <li class="pay">
											<div class="icon">
											  <svg viewBox="0 0 32 32">
												<g filter="">
												  <use xlink:href="#credit-card"></use>
												</g>
											  </svg>
											</div>
											资产总览
										  </li>
										  <li class="wrap">
											<div class="icon">
											  <svg viewBox="0 0 32 32">
												<g filter="">
												  <use xlink:href="#gift"></use>
												</g>
											  </svg>
											</div>
											礼物中心
										  </li>
										  <li class="ship">
											<div class="icon">
											  <svg viewBox="0 0 32 32">
												<g filter="">
												  <use xlink:href="#package"></use>
												</g>
											  </svg>
											</div>
											所得包裹
										  </li>
									</ul>
								</td>
							</tr>
						</table>
						
						</form>
						
					</div>
					
				</div>
				<!-- 中间的线 -->
				<div id="border">
					<div id="line" class="one"></div>
				</div>
				<!-- 右边 -->
				<div id="right-side">
					<div id="first" class="active">
					  <div class="icon big" style="margin-top: -160px;">
						<svg viewBox="0 0 32 32">
						  <g filter="">
							<use xlink:href="#shopping-cart"></use>
						  </g>
						</svg>
					  </div>
					  <h1>我的众筹</h1>
					  <div class="container" >
					      <div class="row" >
					              <div class="tab" role="tabpanel" style="position: absolute;">
					                  <!-- Nav tabs -->
					                  <ul class="nav nav-tabs" role="tablist" style="margin-left: 25px;">
					                      <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">我支持的</a></li>
					                      <li role="presentation"><a href="#Section2"   onclick="myfunction()"  aria-controls="profile" role="tab" data-toggle="tab" >我关注的</a></li>
					                      <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab">我发起的</a></li>
										  <button type="button"  style="width: 100px;height: 40px;margin-top: 2px;margin-left: 360px;border-radius: 4px;border: lightgrey solid 1px ;background-color: rgb(240,173,78);color: white;font-weight: 800;"><a href="${pageContext.request.contextPath}/jsp/itemsInitiator.jsp">发起众筹</a></button>
									  </ul>
					                  <!-- Tab panes -->
					                  <div class="tab-content tabs" style="width: 850px;height: 550px;margin-left: 25px;">
					                      <!-- 我支持的 -->
										  <div role="tabpanel" class="tab-pane fade in active" id="Section1">
											  <!-- 选择按钮 -->
											  <nav class="nav default" style="margin-left: 10px;margin-top: -5px;">
												<ul>
												  <li class="nav__item active"><a href=""><span style="color: #000000;">全部的众筹</span> </a> </li>
												  <li class="nav__item"><a href=""><span style="color: #000000;">已经支持</span></a></li>
												  <li class="nav__item"><a href=""><span style="color: #000000;">未支付</span></a></li>
												</ul>
											  </nav>
					                          
											  <!-- 分页数据 -->
											    <div class="row" id="support" style="width:850px;">
												<%--我支持的--%>
													<%@ include file="supportdetails.jsp"%>


											  </div>

											  <!-- Modal 删除-->
											  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
												  <div class="modal-dialog modal-sm" role="document" >
													  <div class="modal-content">
														  <div class="modal-header">
															  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
															  <h4 class="modal-title" id="myModalLabel">警告</h4>
														  </div>
														  <div class="modal-body">
															  确认删除订单吗？
														  </div>
														  <div class="modal-footer">
															  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
															  <button type="button" id="del" class="btn btn-primary"  data-dismiss="modal">确定</button>
														  </div>
													  </div>
												  </div>
											  </div>


									
					                      </div>
										  <!-- 我关注的 -->
                                          <div role="tabpanel" class="tab-pane fade" id="Section2">
                                              <div class="myLike" style="height: 1000px">
                                                  <%@ include file="personLike.jsp" %>
                                              </div>
                                          </div>
					                      <%--<div role="tabpanel" class="tab-pane fade" id="Section2">
					                         <div class="row" style="width:850px;" >
					                            	<table class="table table-bordered" style="margin-left: 5px;" id="myLike">
					                            		<tr align="center" >
					                            			<th style="text-align:center"><span style="color: #000000;">项目信息</span> </th>
					                            			<th style="text-align:center"><span style="color: #000000;">支持人数</span></th>
					                            			<th style="text-align:center"><span style="color: #000000;">关注人数</span></th>
					                            			<th style="text-align:center"><span style="color: #000000;">操作</span></th>
					                            		</tr>
					                            		<tr class="data" align="center">
					                            			<td class="id"><span style="color: #000000;">${items.id}</span></td>
					                            			<td><span style="color: #000000;">${items.name}</span></td>
					                            			<td><span style="color: #000000;">${items.detail}</span></td>
					                            			<td>
					                            				<a href="" class="btn btn-danger">取消关注</a>
					                            			</td>
					                            		</tr>
					                            		
					                            		<tr align="center">
					                            			<td colspan="8">
					                            				<input class="btn btn-success" type="button" value="首页"
					                            					   onclick=""/>&nbsp;&nbsp;
					                            				<input class="btn btn-success" type="button" id="pre" value="上一页"
					                            					   onclick=""/>&nbsp;&nbsp;
					                            				<!-- 当前页 -->
					                            				<input type="text" id="pageNow" value="1" style="text-align:center"/>&nbsp;&nbsp;
					                            				<input class="btn btn-success" type="button" value="跳转"
					                            					   onclick=""/>&nbsp;&nbsp;
					                            				<input class="btn btn-success" type="button" id="next" value="下一页"
					                            					   onclick=""/>&nbsp;&nbsp;
					                            				<input class="btn btn-success" type="button" value="末页"
					                            					   onclick=""/>&nbsp;&nbsp;
					                            			</td>
					                            		</tr>
					                            	</table>
					                            </div>
					                         </div>--%>
										  <!-- 我发起的 -->
					                      <div role="tabpanel" class="tab-pane fade" id="Section3">
					                         <!-- 选择按钮 -->
					                         <nav class="nav default" style="margin-left: 10px;margin-top: -5px;">
													<ul>
													  <li class="nav__item "><a href="#"><span style="color: #000000;">全部的众筹</span> </a> </li>
													  <li class="nav__item active"><a href="#"><span style="color: #000000;">众筹中</span></a></li>
													  <li class="nav__item"><a href="#"><span style="color: #000000;">众筹成功</span></a></li>
													  <li class="nav__item"><a href="#"><span style="color: #000000;">众筹失败</span></a></li>
													</ul>
					                         </nav>
					                         
					                         <!-- 分页数据 -->
					                         
					                           <div class="row" style="width:850px;">
					                         	<table class="table table-bordered" style="margin-left: 5px;">
					                         		<tr align="center" >
					                         			<th style="text-align:center"><span style="color: #000000;">项目信息</span> </th>
					                         			<th style="text-align:center"><span style="color: #000000;">募集金额(元)</span></th>
					                         			<th style="text-align:center"><span style="color: #000000;">当前状态</span></th>
					                         			<th style="text-align:center"><span style="color: #000000;">操作</span></th>
					                         		</tr>
					                         		<tr class="data" align="center">
					                         			<td class="id"><span style="color: #000000;">111</span></td>
					                         			<td><span style="color: #000000;">111</span></td>
					                         			<td><span style="color: #000000;">111</span></td>
					                         			<td>
					                         				<a href="" class="btn btn-danger" style="background-color: deeppink;border: darkgray;">项目预览</a><br>
					                         				<a href="" class="btn btn-danger" style="background-color: blue;border: darkgray;">修改项目</a><br>
					                         				<a href="" class="btn btn-danger" style="background-color: purple;border: darkgray;">删除项目</a><br>
					                         				<a href="" class="btn btn-danger" style="background-color: hotpink;border: darkgray;">问题管理</a><br>
					                         			</td>
					                         		</tr>
					                         		
					                         		<tr align="center">
					                         			<td colspan="8">
					                         				<input class="btn btn-success" type="button" value="首页"
					                         					   onclick=""/>&nbsp;&nbsp;
					                         				<input class="btn btn-success" type="button" id="pre" value="上一页"
					                         					   onclick=""/>&nbsp;&nbsp;
					                         				<!-- 当前页 -->
					                         				<input type="text" id="pageNow" value="1" style="text-align:center"/>&nbsp;&nbsp;
					                         				<input class="btn btn-success" type="button" value="跳转"
					                         					   onclick=""/>&nbsp;&nbsp;
					                         				<input class="btn btn-success" type="button" id="next" value="下一页"
					                         					   onclick=""/>&nbsp;&nbsp;
					                         				<input class="btn btn-success" type="button" value="末页"
					                         					   onclick=""/>&nbsp;&nbsp;
					                         			</td>
					                         		</tr>
					                         	</table>
					                         </div>
					                      </div>
					                  </div>
					              </div>
					          
					      </div>
					  </div>

					</div>


					<div  id="details">
				<%--	<%@ include file="modaldetails.jsp"%>--%>
					</div>


					<div id="second">
						<div class="icon big" style="margin-top: 300px;">
							<svg viewBox="0 0 32 32">
							  <g filter="">
								<use xlink:href="#credit-card"></use>
							  </g>
							</svg>
						</div>
						<h1>资产总览</h1>
						<div style="height: 40px;border:rgb(255,102,0) solid 3px;margin-left: -850px;margin-top: 10px;"></div>
						<span class="money" style="color: #000000;margin-top: -13px;margin-left: -750px;">我的钱包 </span>
						<!-- 折线图 -->
						<div style="width:700px;height: 400px; margin:0 auto;margin-top: 20px;">
							<div>
								<canvas id="canvas" height="400" width="900"></canvas>
							</div>
						</div>
						<div style="height: 40px;border:rgb(255,102,0) solid 3px;margin-left: -850px;margin-top: 40px;"></div>
						<span class="money" style="color: #000000;margin-top: -15px;margin-left: -750px;">理财 </span>
					</div>
					<div id="third">
					  <div class="icon big">
						<svg viewBox="0 0 32 32">
						  <g filter="">
							<use xlink:href="#gift"></use>
						  </g>
						</svg>
					  </div>
					  <!-- 内容 -->
					  <h1>礼物中心</h1>
					  <p>抱歉，您暂时还未收到礼物</p>
					</div>
					<div id="fourth">
			      <div class="icon big">
			        <svg viewBox="0 0 32 32">
			          <g filter="">
			            <use xlink:href="#package"></use>
			          </g>
			        </svg>
			      </div>
			      <h1>我的包裹</h1>
			      <p>抱歉，您还未收到任何包裹</p>
			    </div>
				</div>
			
			</div>
		</div>
		
		<!-- 尾部 -->
		<div class="container" style="margin-top: 800px;padding: 0px;width: 1250px;height: auto;">
			<div class="row" >
				<nav class="navbar  navbar-inverse" style="height: 200px;color: pink;">
				  <div class="container-fluid">
				    <!-- Collect the nav links, forms, and other content for toggling -->
					<!--友情链接-->
					<div align="center" style="margin-top: 10px;">

						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">关于我们</a>
							<p></p>
							<img src="../picture/erweima1.jpg" style="width: 100px;"/>
							<p></p>

							</div>
						<div class="col-md-2 hidden-sm hidden-xs" align="center">
							<p></p>
							<a href="#">联系我们</a>
							<p></p>
							<img src="../picture/erweima2.jpg" style="width: 100px;"/>
							<p></p>

							</div>
						<div class="col-md-2 hidden-sm hidden-xs" align="center">
							<p></p>
							<a href="#">招贤纳士</a>
							<p></p>
							<img src="../picture/erweima3.png" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">友情链接</a>
							<p></p>
							<img src="../picture/erweima9.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 hidden-sm hidden-xs" align="center">
							<p></p>
							<a href="#">法律声明</a>
							<p></p>
							<img src="../picture/erweima5.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<div class="col-md-2 col-sm-4 col-xs-4" align="center">
							<p></p>
							<a href="#">支付方式</a>
							<p></p>
							<img src="../picture/erweima6.jpg" style="width: 100px;"/>
							<p></p>

						</div>
						<p></p>
						<table align="center" style="text-align: center;" >
							<p></p>
							<tr>
								<td colspan="17" style="font-weight: 900;font-size: 18px;color: pink;">扫描二维码，你想要的这里都有！！！</td>
							</tr>
						</table>
					</div>

				  </div><!-- /.container-fluid -->
				</nav>
			</div>
		</div>
		<div class="container" style="margin-top: 0px;text-align: center;width: auto;">
			<div class="row" style="background-color: gray;">
				<p></p>
				<p style="font-weight: 800;font-size: 16px;">
					本众筹系统最终解释权归涛哥所有
				</p>
				<p style="font-weight: 800;font-size: 16px;">
					涛哥牛逼!
				</p>
				<p></p>
				<p></p>
				<p></p>
				<p></p>
			</div>
		</div>
	
		<!-- 旋转按钮 -->
		<div id='ss_menu'>
		  <div>
		    <i class="fa fa-qq"><a href="">首页</a></i>
		  </div>
		  <div>
		    <i class="fa fa-weibo"><a href="../代码/首页.html">QQ</a></i>
		  </div>
		  <div>
		    <i class="fa fa-weixin"><a href="../代码/首页.html">微信</a></i>
		  </div>
		  <div>
		    <i class="fa fa-renren"><a href="../代码/首页.html">投诉</a></i>
		  </div>
		  <div class='menu'>
		    <div class='share' id='ss_toggle' data-rot='180'>
		      <div class='circle'></div>
		      <div class='bar'></div>
		    </div>
		  </div>
		</div>
	</body>
	<!-- <script src='../more/20/jquery-2.1.0.min.js'></script> -->
	<!-- 先引入jQuery核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.js"></script>
	
	<!-- 引入BootStrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- 竖状table -->
	<script src="${pageContext.request.contextPath}/js/shuzhuangtable.js"></script>
	<!-- 旋转按钮 -->
	<script src="${pageContext.request.contextPath}/js/xuanzhuanbutton.js"></script>
	<!-- 分类按钮 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/hoverSlippery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/fenleibutton.js"></script>
	<!-- 折线图 -->
	<script src="${pageContext.request.contextPath}/js/Chart.js"></script>
	<script src="${pageContext.request.contextPath}/js/zhexiantu.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.popconfirm.js"></script>


	<script>

			$.ajax({
				url:"${path}/project?method=viewMyOrders",
				success:function (data){
					$("#support").html(data);
				}
			});

		$("#supportbtn").click(function (){
			$.ajax({
				url:"${path}/project?method=viewMyOrders",
				success:function (data){
					$("#support").html(data);
				}
			})
		})

		//订单详情
		/*$('#myOrderModal').on('shown.bs.modal', function () {*/
			function showOrder(){
				var oid = $("#uid").val();
				$.ajax({
					url:"${path}/project?method=orderDetails",
					data:{"oid":oid},
					success:function (data){
						$("#details").html(data);
						$("#myOrderModal").modal('show');
					}
				})
			};
		/*});*/




		//删除订单
		$('#myModal').on('shown.bs.modal', function () {
			$(document).on('click','#del',function (){
				var oid = $("#oid").val();
				$.ajax({
					url:"${path}/project?method=delOrderItem",
					data:{"oid":oid},
					success:function (data){
						$("#support").html(data);
						flursh();
					}
				})
			})
		});

		//刷新
		function flursh(){
			$.ajax({
				url:"${path}/project?method=viewMyOrders",
				success:function (data){
					$("#support").html(data);
				}
			});
		}


		//下一页
		function next(pageNow,query1,query2,query3,query4) {
			$.ajax({
				type:"get",
				url:"${path}/project?method=viewMyOrders&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
				success:function (content) {
					$("#support").html(content);
				}
			})
		};
		//上一页
		function first(pageNow,query1,query2,query3,query4) {
			$.ajax({
				type:"get",
				url:"${path}/project?method=viewMyOrders&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
				success:function (content) {
					$("#support").html(content);

				}
			})
		};
		//当前页
		function curr(pageNow,query1,query2,query3,query4) {
			$.ajax({
				type:"get",
				url:"${path}/project?method=viewMyOrders&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
				success:function (content) {
					$("#support").html(content);

				}
			})
		};



			/*window.onload=myfunction;*/
			//我的关注
			function myfunction(){
				$.ajax({
					url:"${path}/product?method=selectAllItemsByUid",
					success:function (data){
						$(".myLike").html(data);
					}
				})
			}

			//下一页
			function next1(pageNow,query1,query2,query3,query4) {
				$.ajax({
					type:"get",
					url:"${path}/product?method=selectAllItemsByUid&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
					success:function (content) {
						$(".myLike").html(content);

					}
				})
			}

			//上一页
			function first1(pageNow,query1,query2,query3,query4) {
				$.ajax({
					type:"get",
					url:"${path}/product?method=selectAllItemsByUid&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
					success:function (content) {
						$(".myLike").html(content);

					}
				})
			}

			//当前页
			function curr1(pageNow,query1,query2,query3,query4) {
				$.ajax({
					type:"get",
					url:"${path}/product?method=selectAllItemsByUid&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
					success:function (content) {
						$(".myLike").html(content);

					}
				})
			}

			//点击取消关注
			function deleteLike(aid) {
				$.ajax({
					url:"${path}/product?method=deleteLike",
					data:{"aid":aid},
					type:"post",
					success:function (data) {
						$(".myLike").html(data);
						fulsh2();
					}
				})
			}

			function fulsh2() {
				$.ajax({
					url:"${path}/product?method=selectAllItemsByUid",
					success:function (data) {
						$(".myLike").html(data);
					}
				})
			}





	</script>

</html>
