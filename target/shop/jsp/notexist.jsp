<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/12/2
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户不存在</title>
</head>
<body>
<div id="d">
    <%
        Object o = request.getAttribute("msg");
        if(o!=null){
    %>
    <h1 style="color: red; text-align: center; margin-top: 80px" ><%=o%></h1>
    <%
        }
    %>
</div>

<img style="width: 500px; height: 500px; margin-left: 450px" src="${pageContext.request.contextPath}/picture/notExist.png" />
</body>
</html>
