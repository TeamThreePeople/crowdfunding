<%--
  Created by IntelliJ IDEA.
  User: 2239871144
  Date: 2021/12/1
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!-- 分页产品 -->
<div class="container" align="center" style="border: lightgray solid 1px;height: 555px;margin-top: 15px;">
    <div class="row" style="margin-top: 18px;padding: 0px;">
        <c:forEach items="${vo.list}" var="product">
            <div class="col-md-3" align="center" >
                <a href="${path}/product?method=findItemsById&aid=${product.id}">
                <img src="${path}/${product.pimgs}" style="width: 250px;height: 200px">
                </a>
                <p>
                    <c:if test="${product.completion < 100}">
                    <div class="progress" style="width: 97%;height: 10px;">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${product.completion}%"></div>
                    </div>
                    </c:if>
                    <c:if test="${product.completion >= 100}">
                    <div class="progress" style="width: 97%;height: 10px;">
                        <div class="progress-bar progress-bar-danger " role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${product.completion}%"></div>
                    </div>
                    </c:if>
                </p>
                <p style="color: #000000;">
                    <a href="${path}/product?method=findItemsById&aid=${product.id}" style="text-align: left;">${product.name}</a>
                </p>
            </div>
        </c:forEach>
    </div>

    <!--分页 -->
    <%-- 查询商品列表数据时，未发现符合条件的数据，则不显示翻页 --%>
    <c:if test="${vo.list.size() eq 0}">
        <div style="width: 380px; margin: 0 auto;">
            <img src="${path}/picture/empty.jpg" />
        </div>
    </c:if>

</div>


<%-- 底部分页按钮 --%>
<div class="row pad-15"  style="bottom: 240px ; position: absolute">
    <c:if test="${vo.list.size() ne 0}">

        <div class="col-md-12" style="text-align: center">
            <ul class="pagination" style="position: absolute;top: 208px;left: 578px;">

                    <%-- 若当前页码是第一页，则上一页按钮失效 --%>
                <c:if test="${vo.pageNow eq 1}">
                    <li class="disabled" ><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                </c:if>

                    <%-- 若当前页码不是第一页，则可以点击上一页 --%>
                <%--<c:if test="${vo.pageNow ne 1}">
                    <li ><a class="page-link" href="${path}/product?method=findAllProducts&pageNow=${vo.pageNow-1}&cid=${vo.query1}&pname=${vo.query2}" aria-label='Previous' ><span aria-hidden="true">&laquo;</span></a></li>
                </c:if>
--%>
                        <c:if test="${vo.pageNow ne 1}">
                            <li ><a class="page-link" onclick="first('${vo.pageNow-1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" aria-label='Previous' ><span aria-hidden="true" style="cursor: pointer;">&laquo;</span></a></li>
                        </c:if>

                        <%--onclick="next('${vo.pageNow+1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')"--%>

                    <%--  循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击 --%>
                <c:forEach begin="1" end="${vo.myPages}" var="page">
                    <c:if test="${vo.pageNow eq page}">
                        <li class=" active"><a class="page-link"  style="text-align: center">${page}</a></li>
                    </c:if>
                   <%-- <c:if test="${vo.pageNow ne page}">
                        <li ><a class="page-link" href="${path}/product?method=findAllProducts&pageNow=${page}&cid=${vo.query1}&pname=${vo.query2}" >${page}</a></li>
                    </c:if>--%>

                    <c:if test="${vo.pageNow ne page}">
                        <li ><a class="page-link" onclick="curr('${page}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" style="cursor: pointer;">${page}</a></li>
                    </c:if>

                </c:forEach>

                    <%-- 若当前页码是最后一页，则下一页按钮失效 --%>
                <c:if test="${vo.pageNow eq vo.myPages}">
                    <li class="disabled" ><a  class="page-link" aria-label="Previous"><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>

                    <%-- 若当前页码不是最后一页，则可以点击下一页 --%>
                <%--<c:if test="${vo.pageNow ne vo.myPages}">
                    <li ><a class="page-link" href="${path}/product?method=findAllProducts&pageNow=${vo.pageNow+1}&cid=${vo.query1}&pname=${vo.query2}" ><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>--%>
                            <%-- 若当前页码不是最后一页，则可以点击下一页 --%>
                        <c:if test="${vo.pageNow ne vo.myPages}">
                            <li ><a class="page-link" onclick="next('${vo.pageNow+1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')" ><span aria-hidden="true" style="cursor: pointer;">&raquo;</span></a></li>
                        </c:if>

            </ul>
        </div>
    </c:if>
</div>