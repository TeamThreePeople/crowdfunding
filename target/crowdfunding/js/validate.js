<!-- 3.添加表单的校验规则 -->
$("#registerForm").validate({
    //定义规则
    rules:{
        "name":{
            "required":true,
            "validateName":true
        },
        "password":{
            "required":true,
            "minlength":6
        },
        "repassword":{
            "required":true,
            "equalTo":"#password"
        },
        "email":{
            "required":true,
            "email":true
        }

    },
    //定义提示信息
    messages: {
        "name": {
            "required": "用户名不能为空",
            "validateName":"昵称已存在"
        },
        "password": {
            "required": "密码不能为空",
            "minlength": "密码长度至少6位"
        },
        "repassword": {
            "required": "重复密码不能为空",
            "equalTo": "两次密码输入不一致"
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



$.validator.addMethod("validateName",function(value,element,params){
    var flag = true;
    $.ajax({
        async:false,
        type:"post",
        url:"/member?method=validateName",
        data:{"name":value},
        dataType:"json",
        success:function (obj) {
            flag= obj.flag;
            console.log(flag);
        }
    });
    return !flag;
});