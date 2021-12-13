<!-- 3.添加表单的校验规则 -->
$("#realNameForm").validate({
    //定义规则
    rules:{
        "realname":{
            "required":true
        },
        "cardnum":{
            "required":true,
            "rangelength":"^\\d{15}|\\d{18}$"
        },
        "email":{
            "required":true,
            "email":true
        }

    },
    //定义提示信息
    messages: {
        "realname": {
            "required": "真实姓名不能为空"
        },
        "cardnum": {
            "required": "身份证号码不能为空",
            "rangelength": "身份证号码长度应为15位或18位"
        },
        "email": {
            "required": "邮箱不能为空",
            "email": "邮箱格式不正确"
        }
    },

    errorPlacement: function (error, element) { //指定错误信息位置
        if (element.is(':radio') || element.is(':checkbox')) { //如果是radio或checkbox

            error.appendTo(element.parent().parent()); //将错误信息添加当前元素的父结点后面
        } else {
            error.insertAfter(element);
        }
    }
});

<!-- 3.添加表单的校验规则 -->
$("#codeForm").validate({
    //定义规则
    rules:{
        "code":{
            "required":true
        }

    },
    //定义提示信息
    messages: {
        "code": {
            "required": "验证码不能为空"
        }
    },

    errorPlacement: function (error, element) { //指定错误信息位置
        if (element.is(':radio') || element.is(':checkbox')) { //如果是radio或checkbox

            error.appendTo(element.parent().parent()); //将错误信息添加当前元素的父结点后面
        } else {
            error.insertAfter(element);
        }
    }
});