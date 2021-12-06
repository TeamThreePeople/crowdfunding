//下一页
function next2(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/project?method=viewMyOrders&pageNow="+pageNow,
        success:function (content) {
            $("#support").html(content);
        }
    })
};
//上一页
function first2(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/project?method=viewMyOrders&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
        success:function (content) {
            $("#support").html(content);

        }
    })
};
//当前页
function curr2(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/project?method=viewMyOrders&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
        success:function (content) {
            $("#support").html(content);

        }
    })
};
