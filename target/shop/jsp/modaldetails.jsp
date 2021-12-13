<%--
  Created by IntelliJ IDEA.
  User: 2239871144
  Date: 2021/12/5
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Modal 详情-->
<div class="modal fade" id="myOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog " role="document" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">详情</h4>
            </div>
            <div class="modal-body">
                <table border="1px" cellspacing="" cellpadding="" >
                    <tr >
                        <th style="width: 350px;text-align: center;">详情</th>
                        <th style="width: 210px;text-align: center;">回报</th>
                    </tr>
                    <tr>
                        <td >
                            <img src="${path}/${product.pimgs}" style="width: 250px;height: 100px">
                            <br>
                            <span>${product.name}</span>
                            <br>
                            <span>订单号：${oid}</span>
                        </td>
                        <td >${areturn.content}</td>
                    </tr>
                </table>
            </div>

        </div>
    </div>
</div>