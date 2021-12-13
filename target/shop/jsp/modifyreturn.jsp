<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>修改回报信息</title>
    <!--  设置网页的小图标logo  favicon.ico-->
    <link href="${pageContext.request.contextPath}/picture/heard.png" rel="shortcut icon" />

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <style>
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
        #d{
            margin-left: 380px;
            background-color: snow;/*lemonchiffon #EBCCCC */
            text-align: center;
            width: 620px;
            height: 800px;
            margin-top: 30px;
            border: 1px solid silver;
            border-radius: 10px;
        }
        #s{
            height: 20px;
        }
    </style>
</head>
<body>
<%@ include file="connect/heard.jsp"%>
<div id="d">
    <div id="s"></div>
    <span style="margin-top:20px; left: 200px;font-size: xx-large;">修改回报信息</span>
    <hr/>
    <form action="${pageContext.request.contextPath}/projectReturn?method=ModifyReturnForm&itemsid=${itemsid}" method="post" enctype="multipart/form-data">
        <fieldset>
            <table class="tb" >
                <%--<tr>
                    <td></td>
                    <th colspan="3" style="left: 100px; font-size: xx-large">修改回报设置</th>
                </tr>
                <hr/>--%>
                <!-- 回报类型 -->
                    <%
                        Object o = request.getAttribute("msg");
                        if(o!=null){
                    %>
                    <h2 style="color: red; text-align: center" ><%=o%></h2>
                    <%
                        }
                    %>
                <tr>
                    <td style="width: 100px;text-align: right;">回报类型</td>
                    <td style="text-align: left;">
                        <input type="radio" name="type" id="" value="0"  checked="checked" style="margin-left: 50px;"/>实物回报
                        <input type="radio" name="type" id="" value="1" style="margin-left: 10px;"/>虚拟物品回报
                    </td>
                </tr>
                <!-- 支持金额(元) -->
                <tr >
                    <td style="width: 100px;text-align: right;">支持金额(元)</td>
                    <td style="text-align: left;">
                        <input type="text" class="form-control" name="supportmoney" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">

                    </td>
                </tr>


                <!-- 回报内容 -->
                <tr >
                    <td style="width: 100px;text-align: right;">回报内容</td>
                    <td >
                        <%--<textarea  class="form-control" name="content" placeholder="简单描述回报内容,不超过200字" style="margin-left: 50px;"></textarea>--%>
                        <input class="form-control" name="content" placeholder="简单描述回报内容,不超过200字" style="margin-left: 50px; width: 420px; height: 40px;">
                    </td>
                </tr>
                <!-- 说明图片 -->
                <tr >
                    <td style="width: 100px;text-align: right;">说明图片</td>
                    <td style="text-align: left;">
                        <img id="picture" style="margin-left: 50px;" name="picture" width="120" height="120" />
                        <input type="file" class="" name="itemspicture" aria-describedby="sizing-addon2" required onchange="showPreview(this)" style="width: 100px;margin-left: 50px;">
                    </td>
                </tr>

                <!-- 回报数量(名) -->
                <tr >
                    <td style="width: 100px;text-align: right;">回报数量</td>
                    <td style="text-align: left;">
                        <input type="text" class="form-control" name="count" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
                        <span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									"0"为不限回报数量
                </span>
                    </td>
                </tr>



                <!-- 单笔限购 -->
                <tr >
                    <td style="width: 100px;text-align: right;">单笔限购</td>

                    <td style="text-align: left;">
                        <input type="radio" name="xiangou" id="yes" value="0" checked="checked" style="margin-left: 50px;"/>不限购
                        <input type="radio" name="xiangou" id="no" value="1"  style="margin-left: 10px;"/>限购

                        <input type="text" id="show2" name="shuliang" aria-describedby="sizing-addon2" style="width: 100px;">

                    </td>

                </tr>


                <!-- 运费(元) -->
                <tr >
                    <td style="width: 100px;text-align: right;">运费(元)</td>
                    <td style="text-align: left;">
                        <input type="text" class="form-control" name="freight" aria-describedby="sizing-addon2" style="width: 100px;margin-left: 50px;">
                        <span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									"0"为包邮
								</span>
                    </td>
                </tr>


                <!-- 发票 -->
                <tr >
                    <td style="width: 100px;text-align: right;">发票</td>

                    <td style="text-align: left;">
                        <input type="radio" name="invoice" id="" value="0" checked="checked" style="margin-left: 50px;"/>不可开发票
                        <input type="radio" name="invoice" id="" value="1"  style="margin-left: 10px;"/>可开发票
                        <span id=""  style="text-align: left;margin-left: 8px;font-size: 5px;font-weight: bold;">（包括个人发票和自定义抬头发票）</span>
                    </td>
                </tr>

                <!-- 回报时间 -->
                <tr >
                    <td style="width: 100px;text-align: right;">回报时间</td>
                    <td style="text-align: left;">

								<span id="" style="text-align: left;margin-left: 50px;font-size: 5px;font-weight: bold;">
									<input type="text" class="" name="rtndate" aria-describedby="sizing-addon2" style="width: 100px;">天后，向支持者发送回报
									(项目结束后)
								</span>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <input type="submit" id="submit" name="" value="确定" style="background-color: dodgerblue;"/>
                        <input type="reset" id="reset" name="" value="取消" style="" />
                    </td>

                </tr>

            </table>
        </fieldset>


        <%--<span id="" style=" text-align: center; width: 70px;height: 40px; /*margin-top: 30px;margin-left: 200px;*/">
		<input type="submit" id="submit" name="" value="确定" style="margin-left: 200px; background-color: dodgerblue;"/>
		<input type="reset" id="reset" name="" value="取消" style="" />
		</span>--%>

    </form>
</div>

</body>

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
</html>
