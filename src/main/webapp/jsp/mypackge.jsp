<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--我的包裹--%>

<div class="row"  style="width:850px;height: 30px;margin-left: 0px;">
        <table class="table table-bordered" style="margin-left: 22px;">
            <tr align="center" >
                <th style="text-align:center" ><span style="color: #000000;">包裹信息</span> </th>
                <th style="text-align:center"><span style="color: #000000;">收发人</span></th>
                <th style="text-align:center" ><span style="color: #000000;">地址</span></th>
            </tr>

            <c:forEach items="${list}" var="packge">
            <tr align="data" align="center">
                <td style="text-align:center"  width="100px" height="100px">
                    <img src="${path}/${packge.product.pimgs}" width="64px" height="auto">
                    <br>
					<span style="color: #000000;">${packge.product.name}</span>
                    <br>
                    <span style="color: #000000;font-size: 10px">运单号：${packge.oid}</span>
                </td>
                <td style="text-align:center">
                    <div >
                        <span style="color: #000000;">发件人</span>
                        <span style="color: #000000;margin-left: 190px;">收件人</span>
                    </div>

                    <div >
                        <span  style="color: #000000;margin-left: 0px;">${packge.consignor.realname}</span>
                        <span class="glyphicon glyphicon-send"style="color: #000000;margin-left:84px;" >
								</span>
                        <span  style="color: #000000;margin-left: 83px;" >${packge.consignee.realname}</span>
                    </div>

                    <div>
                        <span  style="color: #000000;font-size: 10px" >邮箱:${packge.consignor.email}</span>
                        <span  style="color: #000000;margin-left: 50px;font-size: 10px">邮箱:${packge.consignee.email}</span>
                    </div>

                </td>
                <td  style="width: 100px">
                    <a href="javascript:void(0)"  onclick="myaddress('${packge.oid}')"  class="btn btn-info"   data-toggle="modal" data-target="#myModal2">查看</a>
                </td>
            </tr>
            </c:forEach>

        </table>
</div>
<%-- 底部分页按钮 --%>
<div class="row pad-15"  style="bottom: 240px ; position: absolute">
    <c:if test="${vo.list.size() ne 0}">
        <div class="col-md-12" style="text-align: center">
            <ul class="pagination" style="position: relative;top: 660px;left: 340px;">
                    <%-- 若当前页码是第一页，则上一页按钮失效 --%>
                <c:if test="${vo.pageNow eq 1}">
                    <li class="disabled" ><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                </c:if>

                <c:if test="${vo.pageNow ne 1}">
                    <li ><a class="page-link" onclick="first4('${vo.pageNow-1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" aria-label='Previous' ><span aria-hidden="true">&laquo;</span></a></li>
                </c:if>

                    <%--  循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击 --%>
                <c:forEach begin="1" end="${vo.myPages}" var="page">
                    <c:if test="${vo.pageNow eq page}">
                        <li class=" active"><a class="page-link"  style="text-align: center">${page}</a></li>
                    </c:if>
                    <c:if test="${vo.pageNow ne page}">
                        <li ><a class="page-link" onclick="curr4('${page}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" >${page}</a></li>
                    </c:if>

                </c:forEach>

                    <%-- 若当前页码是最后一页，则下一页按钮失效 --%>
                <c:if test="${vo.pageNow eq vo.myPages}">
                    <li class="disabled" ><a  class="page-link" aria-label="Previous"><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>

                    <%-- 若当前页码不是最后一页，则可以点击下一页 --%>
                <c:if test="${vo.pageNow ne vo.myPages}">
                    <li ><a class="page-link" onclick="next4('${vo.pageNow+1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" ><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>

            </ul>
        </div>
    </c:if>
</div>