<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--modal 地址查看--%>
<div class="modal fade" id="myaddress" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog " role="document" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">收货地址</h4>
            </div>
            <div class="modal-body">
                ${orders.address}
            </div>

        </div>
    </div>
</div>
