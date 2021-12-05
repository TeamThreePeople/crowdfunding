<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--我支持的--%>
<table class="table table-bordered" style="margin-left: 5px;">
    <tr align="center" >
        <th style="text-align:center"><span style="color: #000000;">项目信息</span> </th>
        <th style="text-align:center"><span style="color: #000000;">支持日期</span></th>
        <th style="text-align:center"><span style="color: #000000;">支持金额(元)</span></th>
        <th style="text-align:center"><span style="color: #000000;">回报数量</span></th>
        <th style="text-align:center"><span style="color: #000000;">交易状态</span></th>
        <th style="text-align:center"><span style="color: #000000;">商品图片</span></th>
        <th style="text-align:center"><span style="color: #000000;">操作</span></th>
    </tr>

    <c:forEach items="${vo.list}" var="product">
    <tr class="data" align="center">
        <td class="id">${product.items.name}</td>
        <td>${product.createdate}</td>
        <td>${product.money}</td>
        <td>${product.rtncount}</td>
        <c:if test="${product.status ne 0}">
            <td>已支付</td>
        </c:if>
        <c:if test="${product.status eq 0}">
            <td>未支付</td>
        </c:if>
        <td><img src="${path}/${product.items.pimgs}" width="64px" height="auto"></td>
            <%--<img src="${item.pic}" width="64px" height="auto"/>--%>

        <td>
            <a href="javascript:void(0)" class="btn btn-info"  onclick="showOrder()" data-toggle="modal" data-target="#myModal2"><input type="text" id="uid" value="${product.ordernum}" hidden>详情</a>
            <br />
            <a href="javascript:void(0)"   class="btn btn-danger"  data-toggle="modal" data-target="#myModal"><input type="text" id="oid" hidden value="${product.ordernum}">删除</a>

        </td>
    </tr>
    </c:forEach>
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
                    <li ><a class="page-link" onclick="first('${vo.pageNow-1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" aria-label='Previous' ><span aria-hidden="true">&laquo;</span></a></li>
                </c:if>

                <%--  循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击 --%>
                <c:forEach begin="1" end="${vo.myPages}" var="page">
                    <c:if test="${vo.pageNow eq page}">
                        <li class=" active"><a class="page-link"  style="text-align: center">${page}</a></li>
                    </c:if>
                    <c:if test="${vo.pageNow ne page}">
                        <li ><a class="page-link" onclick="curr('${page}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" >${page}</a></li>
                    </c:if>

                </c:forEach>

                <%-- 若当前页码是最后一页，则下一页按钮失效 --%>
                <c:if test="${vo.pageNow eq vo.myPages}">
                    <li class="disabled" ><a  class="page-link" aria-label="Previous"><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>

                <%-- 若当前页码不是最后一页，则可以点击下一页 --%>
                <c:if test="${vo.pageNow ne vo.myPages}">
                    <li ><a class="page-link" onclick="next('${vo.pageNow+1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" ><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>



            </ul>
        </div>
    </c:if>
</div>
