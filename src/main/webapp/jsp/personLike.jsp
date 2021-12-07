<%--
  Created by IntelliJ IDEA.
  User: 2239871144
  Date: 2021/12/1
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!-- 我关注的 -->
    <div class="row" style="width:850px;" >
        <table class="table table-bordered" style="margin-left: 5px;" id="myLike">
            <tr align="center" >
                <th style="text-align:center"><span style="color: #000000;">操作</span> </th>
                <th style="text-align:center"><span style="color: #000000;">项目图片</span> </th>
                <th style="text-align:center"><span style="color: #000000;">支持人数</span></th>
                <th style="text-align:center"><span style="color: #000000;">关注人数</span></th>
                <th style="text-align:center"><span style="color: #000000;">项目名称</span></th>
            </tr>

            <c:forEach items="${pageVo.list}" var="like">
                <tr class="data" align="center">
                    <td>
                        <a onclick="deleteLike('${like.id}')" class="btn btn-danger">取消关注</a>
                    </td>
                    <td><span style="color: #000000;">${like.name}</span></td>                           <%--项目名称--%>
                    <td>
                        <c:if test="${like.pimgs!=null}">
                            <img src="${path}/${like.pimgs}" width="200px" height="auto"/>   <%--项目图片--%>
                        </c:if>
                    </td>
                    <td><span style="color: #000000;">${like.supporter}</span></td>                      <%--支持人数--%>
                    <td><span style="color: #000000;">${like.follower}</span></td>                       <%--关注人数--%>

                </tr>
            </c:forEach>

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
                    <li><a onclick="first1('${pageVo.pageNow-1}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" aria-label="Previous"><span aria-hidden="true" style="color: #000000;cursor: pointer;">&laquo;</span></a></li>
                </c:if>


                    <%--  循环展示所有页码，并且迭代到当前页码，当前页码则不可以点击 --%>
                <c:forEach begin="1" end="${pageVo.myPages}" var="page">
                    <c:if test="${pageVo.pageNow eq page}">
                        <li class="active"><a >${page}</a></li>
                    </c:if>

                    <c:if test="${pageVo.pageNow ne page}">
                        <li><a onclick="curr1('${page}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" style="cursor: pointer;">${page}</a></li>
                    </c:if>
                </c:forEach>

                    <%-- 若当前页码是最后一页，则下一页按钮失效 --%>
                <c:if test="${pageVo.pageNow eq pageVo.myPages}">
                    <li class="disabled"><a  aria-label="Next"> <span aria-hidden="true" style="color: #000000;">&raquo;</span></a></li>
                </c:if>

                    <%-- 若当前页码不是最后一页，则可以点击下一页 --%>
                <c:if test="${pageVo.pageNow ne pageVo.myPages}">
                    <li><a onclick="next1('${pageVo.pageNow+1}','${pageVo.query1}','${pageVo.query2}','${pageVo.query3}','${pageVo.query4}')" aria-label="Next"> <span aria-hidden="true" style="color: #000000;cursor: pointer;">&raquo;</span></a></li>
                </c:if>
            </ul>
        </div>
    </c:if>
    <!-- 分页结束 -->

