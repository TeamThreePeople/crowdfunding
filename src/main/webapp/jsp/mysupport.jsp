<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- 分页数据 -->
<table class="table table-bordered" style="margin-left: 5px;">
    <tr align="center" >
        <th style="text-align:center"><span style="color: #000000;">项目信息</span> </th>
        <th style="text-align:center"><span style="color: #000000;">募集金额(元)</span></th>
        <th style="text-align:center"><span style="color: #000000;">当前状态</span></th>
        <th style="text-align:center"><span style="color: #000000;">操作</span></th>
    </tr>
    <c:forEach items="${vo.list}" var="product">
        <tr class="data" align="center">
            <td class="id"><span style="color: #000000;">${product.items.remark}</span></td>
            <td><span style="color: #000000;">${product.items.money}</span></td>
            <%--<td><span style="color: #000000;">${product.items.status}</span></td>--%>
            <c:if test="${product.items.status eq 1}">
                <td>众筹中</td>
            </c:if>
            <c:if test="${product.items.status eq 2}">
                <td>众筹成功</td>
            </c:if>
            <c:if test="${product.items.status eq 3}">
                <td>众筹失败</td>
            </c:if>
            <td>
            <a href="javascript:void(0)" class="btn btn-danger" onclick="showOrder()" style="background-color: deeppink;border: darkgray;">
                <input type="text" id="uid" value="${product.ordernum}" hidden>项目预览</a><br>
            <a href="javascript:void(0)" class="btn btn-danger" style="background-color: blue;border: darkgray;">修改项目</a><br>
            <a href="javascript:void(0)" class="btn btn-danger" style="background-color: purple;border: darkgray;">
                <input type="text" id="oid" hidden value="${product.ordernum}">删除项目</a><br>
            <a href="javascript:void(0)" class="btn btn-danger" style="background-color: hotpink;border: darkgray;">问题管理</a><br>
            </td>
        </tr>
    </c:forEach >

</table>
<%-- 底部分页按钮 --%>
<div class="row pad-15"  style="bottom: 240px ; position: absolute">
    <c:if test="${vo.list.size() ne 0}">

        <div class="col-md-12" style="text-align: center">
            <ul class="pagination" style="position: relative;top: 200px;left: 280px;">

                    <%-- 若当前页码是第一页，则上一页按钮失效 --%>
                <c:if test="${vo.pageNow eq 1}">
                    <li class="disabled" ><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                </c:if>

                <c:if test="${vo.pageNow ne 1}">
                    <li ><a class="page-link" onclick="first('${vo.pageNow-1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" aria-label='Previous' ><span aria-hidden="true" style="color: #000000;cursor: pointer;">&laquo;</span></a></li>
                </c:if>

                    <%--  循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击 --%>
                <c:forEach begin="1" end="${vo.myPages}" var="page">
                    <c:if test="${vo.pageNow eq page}">
                        <li class=" active"><a class="page-link"  style="text-align: center">${page}</a></li>
                    </c:if>
                    <c:if test="${vo.pageNow ne page}">
                        <li ><a class="page-link" onclick="curr('${page}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" style="color: #000000;cursor: pointer;">${page}</a></li>
                    </c:if>

                </c:forEach>

                    <%-- 若当前页码是最后一页，则下一页按钮失效 --%>
                <c:if test="${vo.pageNow eq vo.myPages}">
                    <li class="disabled" ><a  class="page-link" aria-label="Previous"><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>

                    <%-- 若当前页码不是最后一页，则可以点击下一页 --%>
                <c:if test="${vo.pageNow ne vo.myPages}">
                    <li ><a class="page-link" onclick="next('${vo.pageNow+1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" ><span aria-hidden="true" style="color: #000000;cursor: pointer;">&raquo;</span></a></li>
                </c:if>
            </ul>
        </div>
    </c:if>
</div>




