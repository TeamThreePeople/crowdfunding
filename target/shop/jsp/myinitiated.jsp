<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--我发起的--%>
<div class="row"  id="support" style="width:850px;">
<table class="table table-bordered" style="margin-left: 5px;">
    <tr align="center" >
        <th style="text-align:center"><span style="color: #000000;">项目信息</span> </th>
        <th style="text-align:center"><span style="color: #000000;">募集金额(元)</span></th>
        <th style="text-align:center"><span style="color: #000000;">当前状态</span></th>
        <th style="text-align:center"><span style="color: #000000;">操作</span></th>
    </tr>


    <c:forEach items="${vo.list}" var="product">
    <tr class="data" align="center">
        <td class="id">
            <img src="${path}/${product.pimgs}" width="80px" height="auto">
            <span style="color: #000000;">${product.name}</span>
            <c:if test="${product.completion < 100}">
                <div class="progress" style="width: 97%;height: 10px;">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${product.completion}%">
                    </div>
                </div>
            </c:if>
            <c:if test="${product.completion >= 100}">
                <div class="progress" style="width: 97%;height: 10px;">
                    <div class="progress-bar progress-bar-danger " role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${product.completion}%">
                    </div>
                </div>
            </c:if>
        </td>
        <td><span style="color: #000000;">${product.money}</span></td>

        <c:if test="${product.status eq 0}">
            <td>众筹中</td>
        </c:if>
        <c:if test="${product.status ne 0}">
            <td>众筹成功</td>
        </c:if>

        <td>
            <a  onclick="delitems('${product.id}')" class="btn btn-danger" style="border: darkgray;" data-toggle="modal" data-target="#items">下架项目</a><br>
        </td>

    </tr>
    </c:forEach>

</table>
</div>

<%-- 底部分页按钮 --%>
<div class="row pad-15"  style="bottom: 240px ; position: absolute">
    <c:if test="${vo.list.size() ne 0}">

        <div class="col-md-12" style="text-align: center">
            <ul class="pagination" style="position: relative;top: 265px;left: 280px;">

                    <%-- 若当前页码是第一页，则上一页按钮失效 --%>
                <c:if test="${vo.pageNow eq 1}">
                    <li class="disabled" ><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                </c:if>

                <c:if test="${vo.pageNow ne 1}">
                    <li ><a class="page-link" onclick="first2('${vo.pageNow-1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" aria-label='Previous' ><span aria-hidden="true">&laquo;</span></a></li>
                </c:if>

                    <%--  循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击 --%>
                <c:forEach begin="1" end="${vo.myPages}" var="page">
                    <c:if test="${vo.pageNow eq page}">
                        <li class=" active"><a class="page-link"  style="text-align: center">${page}</a></li>
                    </c:if>
                    <c:if test="${vo.pageNow ne page}">
                        <li ><a class="page-link" onclick="curr2('${page}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" >${page}</a></li>
                    </c:if>

                </c:forEach>

                    <%-- 若当前页码是最后一页，则下一页按钮失效 --%>
                <c:if test="${vo.pageNow eq vo.myPages}">
                    <li class="disabled" ><a  class="page-link" aria-label="Previous"><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>

                    <%-- 若当前页码不是最后一页，则可以点击下一页 --%>
                <c:if test="${vo.pageNow ne vo.myPages}">
                    <li ><a class="page-link" onclick="next2('${vo.pageNow+1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" ><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>



            </ul>
        </div>
    </c:if>
</div>