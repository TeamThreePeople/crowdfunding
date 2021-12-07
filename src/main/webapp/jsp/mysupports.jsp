<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/12/7
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
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
                    <a href=""<%--${pageContext.request.contextPath}/jsp/itemsInitiator.jsp--%> class="btn btn-danger" style="background-color: blue;border: darkgray;">修改项目</a><br>
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