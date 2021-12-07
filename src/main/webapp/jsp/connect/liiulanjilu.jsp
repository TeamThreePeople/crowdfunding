<%--
  Created by IntelliJ IDEA.
  User: 16816
  Date: 2021/12/7
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<html>
<head>
    <title>浏览记录</title>
</head>
<body>--%>
           <%-- <c:forEach items="${list}" var="view">--%>
<%--                <table style="margin-top: 10px;margin-bottom: 10px;">--%>
                    <c:forEach items="${list}" var="view">
                        <tr>
                            <td style="height:190px ;">
                                <div class="ih-item square effect1 left_and_right" style="margin-left: 15px;">
                                    <a href="#">
                                        <div class="img">
                                            <img src="${path}/${view.pimgs}" style="width: 310px;height: 170px;" alt="img">
                                        </div>
                                        <div class="info">
                                            <h3>名字:${view.name}</h3>
                                            <p>介绍:${view.remark}</p>
                                        </div>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                <%--</table>
                <div style="border: black solid 1px;width: 340px;"></div>--%>
          <%--  </c:forEach>--%>
<%--</body>
</html>--%>
