<%--
  Created by IntelliJ IDEA.
  User: 2239871144
  Date: 2021/12/1
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!-- 我支持的 -->

    <!-- 选择按钮 -->
    <nav class="nav default" style="margin-left: 10px;margin-top: -5px;">
        <ul>
            <li class="nav__item active"><a href="#" ><span style="color: #000000;">全部的众筹</span> </a> </li>
            <li class="nav__item"><a href="#" ><span style="color: #000000;">已经支持</span></a></li>
            <li class="nav__item"><a href="#" ><span style="color: #000000;">未支付</span></a></li>
        </ul>
    </nav>

    <!-- 分页数据 -->

    <div class="row" style="width:850px;">
        <table class="table table-bordered" style="margin-left: 5px;">
            <tr align="center" >
                <th style="text-align:center"><span style="color: #000000;">项目名称</span> </th>
                <th style="text-align:center"><span style="color: #000000;">支持日期</span></th>
                <th style="text-align:center"><span style="color: #000000;">支持金额(元)</span></th>
                <th style="text-align:center"><span style="color: #000000;">回报数量</span></th>
                <th style="text-align:center"><span style="color: #000000;">交易状态</span></th>
                <th style="text-align:center"><span style="color: #000000;">商品图片</span></th>
                <th style="text-align:center"><span style="color: #000000;">操作</span></th>
            </tr>

            <c:forEach items="${pageVo.list}" var="like">
                <tr class="data" align="center">
                    <td class="id"><span style="color: #000000;">${like.name}</span></td>       <%--项目名称--%>
                    <td><span style="color: #000000;">${like.supporter}</span></td>             <%--支持日期--%>
                    <td><span style="color: #000000;">${like.supporter}</span></td>             <%--支持金额(元)--%>
                    <td><span style="color: #000000;">${like.supporter}</span></td>             <%--回报数量--%>
                    <td><span style="color: #000000;">${like.supporter}</span></td>             <%--交易状态--%>
                    <td>
                        <c:if test="${like.pimgs!=null}">
                            <img src="${path}/${like.pimgs}" width="64px" height="auto"/>        <%--商品图片--%>
                        </c:if>
                    </td>
                    <td>
                        <a href="javascript:void(0)" class="btn btn-info" onclick="${pageContext.request.contextPath}/product?method=findItemsById&id=${products.id}">详情</a>
                        <br />
                        <a href="${path}/cart?method=delCartItem&id=${item.id}" class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>

            <%--<tr class="data" align="center">
                <td class="id">信息</td>
                <td>日期&lt;%&ndash;<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd"/>&ndash;%&gt;</td>
                <td>金额</td>
                <td>数量</td>
                <td>状态</td>
                <td>图片

                </td>
                <td>
                    <a href="javascript:void(0)" class="btn btn-info" onclick="${pageContext.request.contextPath}/product?method=findItemsById&id=${products.id}">详情</a>
                    <br />
                    <a href="${path}/cart?method=delCartItem&id=${item.id}" class="btn btn-danger">删除</a>
                </td>
            </tr>--%>

            <%--<tr align="center">
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
            </tr>--%>
        </table>
    </div>

<!--分页 -->
<%-- 查询商品列表数据时，未发现符合条件的数据，则不显示翻页 --%>
<c:if test="${pageVo.list.size() eq 0}">
    <div style="width: 380px; margin: 0 auto;">
        <img src="${path}/picture/empty.jpg" />
    </div>
</c:if>

<%-- 查询商品列表数据时，发现符合条件的数据，则显示翻页 --%>
<c:if test="${pageVo.list.size() ne 0}">
    <div style="width: 380px; margin: 0 auto; margin-top: 50px;margin-left: 205px;">
        <ul class="pagination" style="text-align: center; margin-top: 10px;">

                <%-- 若当前页码是第一页，则上一页按钮失效 --%>
            <c:if test="${pageVo.pageNow eq 1}">
                <li class="disabled"><a  aria-label="Previous"><span aria-hidden="true" style="color: #000000;">&laquo;</span></a></li>
            </c:if>

                <%-- 若当前页码不是第一页，则可以点击上一页 --%>
            <c:if test="${pageVo.pageNow ne 1}">
                <li><a onclick="first('${pageVo.pageNow-1}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" aria-label="Previous"><span aria-hidden="true" style="color: #000000;cursor: pointer;">&laquo;</span></a></li>
            </c:if>


                <%--  循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击 --%>
            <c:forEach begin="1" end="${pageVo.myPages}" var="page">
                <c:if test="${pageVo.pageNow eq page}">
                    <li class="active"><a >${page}</a></li>
                </c:if>

                <c:if test="${pageVo.pageNow ne page}">
                    <li><a onclick="curr('${page}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" style="cursor: pointer;">${page}</a></li>
                </c:if>
            </c:forEach>

                <%-- 若当前页码是最后一页，则下一页按钮失效 --%>
            <c:if test="${pageVo.pageNow eq pageVo.myPages}">
                <li class="disabled"><a  aria-label="Next"> <span aria-hidden="true" style="color: #000000;">&raquo;</span></a></li>
            </c:if>

                <%-- 若当前页码不是最后一页，则可以点击下一页 --%>
            <c:if test="${pageVo.pageNow ne pageVo.myPages}">
                <li><a onclick="next('${pageVo.pageNow+1}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" aria-label="Next"> <span aria-hidden="true" style="color: #000000;cursor: pointer;">&raquo;</span></a></li>
            </c:if>
        </ul>
    </div>
</c:if>
<!-- 分页结束 -->

<%-- 底部分页按钮 --%>
<%--
<div class="row pad-15"  style="bottom: 240px ; position: absolute">
    <c:if test="${pageVo.list.size() ne 0}">

        <div class="col-md-12" style="text-align: center">
            <ul class="pagination" style="position: absolute;top: -70px;left: 578px;">

                    &lt;%&ndash; 若当前页码是第一页，则上一页按钮失效 &ndash;%&gt;
                <c:if test="${pageVo.pageNow eq 1}">
                    <li class="disabled" ><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                </c:if>

                    &lt;%&ndash; 若当前页码不是第一页，则可以点击上一页 &ndash;%&gt;
                &lt;%&ndash;<c:if test="${vo.pageNow ne 1}">
                    <li ><a class="page-link" href="${path}/product?method=findAllProducts&pageNow=${vo.pageNow-1}&cid=${vo.query1}&pname=${vo.query2}" aria-label='Previous' ><span aria-hidden="true">&laquo;</span></a></li>
                </c:if>
&ndash;%&gt;
                <c:if test="${pageVo.pageNow ne 1}">
                    <li ><a class="page-link" onclick="first('${pageVo.pageNow-1}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" aria-label='Previous' ><span aria-hidden="true">&laquo;</span></a></li>
                </c:if>

                        &lt;%&ndash;onclick="next('${vo.pageNow+1}','${vo.query1}','${vo.query2}','${vo.query3}','${vo.query4}')"&ndash;%&gt;

                    &lt;%&ndash;  循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击 &ndash;%&gt;
                <c:forEach begin="1" end="${pageVo.myPages}" var="page">
                    <c:if test="${pageVo.pageNow eq page}">
                        <li class=" active"><a class="page-link"  style="text-align: center">${page}</a></li>
                    </c:if>
                   &lt;%&ndash; <c:if test="${vo.pageNow ne page}">
                        <li ><a class="page-link" href="${path}/product?method=findAllProducts&pageNow=${page}&cid=${vo.query1}&pname=${vo.query2}" >${page}</a></li>
                    </c:if>&ndash;%&gt;

                    <c:if test="${pageVo.pageNow ne page}">
                        <li ><a class="page-link" onclick="curr('${page}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" >${page}</a></li>
                    </c:if>

                </c:forEach>

                    &lt;%&ndash; 若当前页码是最后一页，则下一页按钮失效 &ndash;%&gt;
                <c:if test="${pageVo.pageNow eq pageVo.myPages}">
                    <li class="disabled" ><a  class="page-link" aria-label="Previous"><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>

                    &lt;%&ndash; 若当前页码不是最后一页，则可以点击下一页 &ndash;%&gt;
                &lt;%&ndash;<c:if test="${vo.pageNow ne vo.myPages}">
                    <li ><a class="page-link" href="${path}/product?method=findAllProducts&pageNow=${vo.pageNow+1}&cid=${vo.query1}&pname=${vo.query2}" ><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>&ndash;%&gt;
                            &lt;%&ndash; 若当前页码不是最后一页，则可以点击下一页 &ndash;%&gt;
                        <c:if test="${pageVo.pageNow ne pageVo.myPages}">
                            <li ><a class="page-link" onclick="next('${pageVo.pageNow+1}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" ><span aria-hidden="true">&raquo;</span></a></li>
                        </c:if>

            </ul>
        </div>
    </c:if>
</div>--%>
