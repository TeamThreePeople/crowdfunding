
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>


<!--导航部分-->
<div class="container" style="width: 100%;height: 100px;">
    <div class="row ">
        <!-- 导航条 -->
        <nav class="navbar navbar-fixed-top navbar-inverse" style="height: 70px;">
            <div class="container-fluid">

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top: 10px;">
                    <ul class="nav navbar-nav">
                        <li style="margin-left: 30px;"><img src="${pageContext.request.contextPath}/picture/heard.png" ></li>
                        <li style="margin-left: 30px;"><a class="navbar-brand" href="${pageContext.request.contextPath}/index3.jsp" >首页</a></li>
                        <li class="active"><a href="jsp/more.jsp">众筹项目 <span class="sr-only">(current)</span></a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/itemsInitiator.jsp">发起项目</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/personalcenter.jsp">我的众筹</a></li>
                        <%--<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">捐助</a></li>
                                <li><a href="#">蔬菜</a></li>
                                <li><a href="#">食品</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">热门</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">潮流</a></li>
                            </ul>
                        </li>--%>
                    </ul>


                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
    <div style="border: #000000 solid 1px;"></div>
</div>
