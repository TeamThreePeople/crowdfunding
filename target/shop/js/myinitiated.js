//下一页
function next2(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/product?method=itemsStatus&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#initiated").html(content);
        }
    })
};
//上一页
function first2(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/product?method=itemsStatus&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#initiated").html(content);

        }
    })
};
//当前页
function curr2(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/product?method=itemsStatus&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#initiated").html(content);
        }
    })
};
