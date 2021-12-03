<%--
  Created by IntelliJ IDEA.
  User: 2239871144
  Date: 2021/11/27
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set value="${pageContext.request.contextPath}" scope="application" var="path"></c:set>
<!--导航部分-->
<div class="container" style="width: 100%;height: 100px;">
    <div class="row ">
        <!-- 导航条 -->
        <nav class="navbar navbar-fixed-top navbar-inverse" style="height: 70px;">
            <div class="container-fluid">

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top: 10px;">
                    <ul class="nav navbar-nav">
                        <li style="margin-left: 30px;"><img src="${pageContext.request.contextPath}/picture/heard.png" ></li>
                        <li style="margin-left: 30px;"><a class="navbar-brand" href="${pageContext.request.contextPath}/index3.jsp" >首页</a></li>
                        <li class="active"><a href="jsp/more.jsp">众筹项目 <span class="sr-only">(current)</span></a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/itemsInitiator.jsp">发起项目</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/personalcenter.jsp">我的众筹</a></li>
                    </ul>
                    <%--登录注册,以及登录成功后的欢迎信息--%>
                    <ul class="nav navbar-nav navbar-right">
                        <c:if test="${sessionScope.member==null}">
                            <li><a href="${pageContext.request.contextPath}/login.jsp">登录</a></li>
                            <li><a href="${pageContext.request.contextPath}/register.jsp">注册</a></li>
                        </c:if>

                        <c:if test="${sessionScope.member!=null}">
                            <li><a>欢迎</a> </li>
                            <li style="color: white">
                                <a><span style="color: pink">${sessionScope.member.loginacct}</span></a>
                            </li>
                            <li><a  style="color: white" href="${pageContext.request.contextPath}/member?method=logout">登出</a></li>
                            <li><a href="${pageContext.request.contextPath}/register.jsp">注册</a></li>
                        </c:if>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
    <div style="border: #000000 solid 1px;"></div>

    <%-- 当前若是商品列表展示，则头部页面有表单显示 --%>
   <%-- <c:if test="${vo!=null}">
        <form class="navbar-form navbar-right" role="search">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" id="searchName" name="pname" value="${vo.query2}">
            </div>
            <input type="button" class="btn btn-success" value="Submit" onclick="query()" />

            <script>
                function query() {
                    window.location.href="${path}/product?method=viewProductListByCidPname&cid=${vo.query1}&pname="+$("#searchName").val();
                }
            </script>
        </form>
    </c:if>--%>

</div>
