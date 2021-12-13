$("#itemsForm").validate({
    //定义规则
    rules:{
        "type":{
            "required":true
        },
        "itemsname":{
            "required":true,
            "validateName":true
        },
        "money":{
            "required":true
        },
        "moneyday":{
            "required":true
        },
        "itemspicture":{
            "required":true
        },
        "itemsremark":{
            "required":true
        },
        "loginacct":{
            "required":true
        },
        "email":{
            "required":true,
            "email":true
        }

    },
    //定义提示信息
    messages: {
        "type":{
            "required":"必填"
        },
        "itemsname":{
            "required":"必填",
            "validateName":"项目名已存在"
        },
        "money":{
            "required":"必填"
        },
        "moneyday":{
            "required":"必填"
        },
        "itemspicture":{
            "required":"必填"
        },
        "itemsremark":{
            "required":"必填"
        },
        "loginacct":{
            "required":"必填"
        },
        "email":{
            "required":"必填",
            "email": "邮箱格式不正确"
        }
    },
    errorPlacement: function (error, element) { //指定错误信息位置  error产生错误的位置  element错误的元素
        if (element.is(':radio') || element.is(':checkbox')) { //如果是radio或checkbox
            var eid = element.attr('name'); //获取元素的name属性
            error.appendTo(element.parent().prev()); //将错误信息添加当前元素的父结点后面
        } else {
            error.appendTo(element.parent().prev());
        }
    }

});

$.validator.addMethod("validateName",function(value,element,params){
    var flag = true;
    $.ajax({
        async:false,
        type:"post",
        url:"/form?method=validateName",
        data:{"itemsname":value},
        dataType:"json",
        success:function (obj) {
            flag= obj.flag;
            console.log(flag);
        }
    })
    return !flag;
});
