<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set value="${pageContext.request.contextPath}" scope="application" var="path"></c:set>


<!--导航部分-->
<div class="container" style="width: 100%;height: 50px;">
    <div class="row ">
        <!-- 导航条 -->
        <nav class="navbar navbar-fixed-top <%--navbar-inverse--%>" style="height: 70px;background: #fff;border-bottom: 1px solid #dee0e1;">
            <div class="container-fluid">

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top: 10px;">
                    <ul class="nav navbar-nav">
                        <li style="margin-left: 30px;"><img src="${pageContext.request.contextPath}/picture/heard.png" ></li>
                        <li style="margin-left: 30px;"><a class="navbar-brand" href="${pageContext.request.contextPath}/product?method=index" >首页</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/jsp/more.jsp">众筹项目 <span class="sr-only">(current)</span></a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/itemsInitiator.jsp">发起项目</a></li>

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
                            <li><a  style="color:  #337ab7;" href="${pageContext.request.contextPath}/member?method=logout">登出</a></li>
                            <li><a href="${pageContext.request.contextPath}/jsp/personalcenter.jsp">我的众筹</a></li>
                            <li><a class="liulan" onclick="viewItems()" style="cursor:pointer;">浏览记录</a></li>

                            <%--浏览记录--%>
                            <li>
                                <div class="menu-espanso" style="margin-top: 70px;">
                                    <div id="menu" class="menu"></div>
                                    <span class="linee linea1" ></span>
                                    <span class="linee linea2" ></span>
                                    <span class="linee linea3" ></span>

                                    <div class="voci-menu" id="viewItem" style="left: 0px;width: 340px;">
                                        <p style="margin-top: -50px;font-size: 28px;font-weight: 800;margin-left: 17px;width: 200px;">浏览记录</p>
                                        <div style="border: black solid 1px;width: 340px;"></div>
                                            <table style="margin-top: 10px;margin-bottom: 10px;" class="viewMy">
                                                <%@ include file="liiulanjilu.jsp" %>
                                            </table>
                                        </div>
                                    </div>
                            </li>
                        </c:if>



                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>

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

<script>

    function viewItems() {
        $.ajax({
            type:"get",
            url:"${path}/product?method=selectViewItemsByUid",
            success:function (data) {
                // console.log(list);
                 console.log(data);
                $(".viewMy").html(data);
            }
        })
    }

    /*$(".menu-espanso").hide();
    var flag = true;
    $(".liulan").click(function(){
        if(flag){
            $(".menu-espanso").show();
            flag = false;
        }else{
            $(".menu-espanso").hide();
            flag = true;
        }

    })*/

</script>
