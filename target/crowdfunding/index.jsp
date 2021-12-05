<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>进度条</title>
	<!--  设置网页的小图标logo  favicon.ico-->
	<link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />
	<!-- 进度条 -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize14.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles14.css">
</head>
<body>
	<div class="htmleaf-container">
		<!-- <header class="htmleaf-header">
			<h1>HTML5可交互的圆形进度条特效 <span>A HTML5 Pie Ring</span></h1>
			<div class="htmleaf-links">
				<a class="htmleaf-icon icon-htmleaf-home-outline" href="http://www.htmleaf.com/" title="jQuery之家" target="_blank"><span> jQuery之家</span></a>
				<a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="http://www.htmleaf.com/html5/html5donghua/201508082379.html" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
			</div>
		</header> -->
		<div data-to-value='100' data-items-count='32' id="p1_barPie" class="barPie barPie--radio">
		  <span class="barPie__value" id="jindu">0</span>
		  <div class="barPie__ring">
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem31" value="100" hidden="hidden"/>
		    <label for="p1_barPieItem31" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem30" value="96.875" hidden="hidden"/>
		    <label for="p1_barPieItem30" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem29" value="93.75" hidden="hidden"/>
		    <label for="p1_barPieItem29" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem28" value="90.625" hidden="hidden"/>
		    <label for="p1_barPieItem28" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem27" value="87.5" hidden="hidden"/>
		    <label for="p1_barPieItem27" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem26" value="84.375" hidden="hidden"/>
		    <label for="p1_barPieItem26" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem25" value="81.25" hidden="hidden"/>
		    <label for="p1_barPieItem25" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem24" value="78.125" hidden="hidden"/>
		    <label for="p1_barPieItem24" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem23" value="75" hidden="hidden"/>
		    <label for="p1_barPieItem23" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem22" value="71.875" hidden="hidden"/>
		    <label for="p1_barPieItem22" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem21" value="68.75" hidden="hidden"/>
		    <label for="p1_barPieItem21" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem20" value="65.625" hidden="hidden"/>
		    <label for="p1_barPieItem20" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem19" value="62.5" hidden="hidden"/>
		    <label for="p1_barPieItem19" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem18" value="59.375" hidden="hidden"/>
		    <label for="p1_barPieItem18" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem17" value="56.25" hidden="hidden"/>
		    <label for="p1_barPieItem17" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem16" value="53.125" hidden="hidden"/>
		    <label for="p1_barPieItem16" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem15" value="50" hidden="hidden"/>
		    <label for="p1_barPieItem15" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem14" value="46.875" hidden="hidden"/>
		    <label for="p1_barPieItem14" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem13" value="43.75" hidden="hidden"/>
		    <label for="p1_barPieItem13" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem12" value="40.625" hidden="hidden"/>
		    <label for="p1_barPieItem12" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem11" value="37.5" hidden="hidden"/>
		    <label for="p1_barPieItem11" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem10" value="34.375" hidden="hidden"/>
		    <label for="p1_barPieItem10" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem9" value="31.25" hidden="hidden"/>
		    <label for="p1_barPieItem9" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem8" value="28.125" hidden="hidden"/>
		    <label for="p1_barPieItem8" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem7" value="25" hidden="hidden"/>
		    <label for="p1_barPieItem7" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem6" value="21.875" hidden="hidden"/>
		    <label for="p1_barPieItem6" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem5" value="18.75" hidden="hidden"/>
		    <label for="p1_barPieItem5" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem4" value="15.625" hidden="hidden"/>
		    <label for="p1_barPieItem4" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem3" value="12.5" hidden="hidden"/>
		    <label for="p1_barPieItem3" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem2" value="9.375" hidden="hidden"/>
		    <label for="p1_barPieItem2" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem1" value="6.25" hidden="hidden"/>
		    <label for="p1_barPieItem1" class="barPie__ring__item"></label>
		    <input type="radio" name="barPieRadioGroup" id="p1_barPieItem0" value="3.125" hidden="hidden"/>
		    <label for="p1_barPieItem0" class="barPie__ring__item"></label>
		  </div>
		</div>
	</div>
	

</body>
	
	<script src='${pageContext.request.contextPath}/js/stopExecutionOnTimeout14.js?t=1'></script>
	<script src='${pageContext.request.contextPath}/js/do-in.js'></script>
	<!-- 进度条 -->
	<script src='${pageContext.request.contextPath}/js/jindutiao.js'></script>
	<!-- 倒计时 -->
	<script src='${pageContext.request.contextPath}/js/daojishi.js'></script>
</html>