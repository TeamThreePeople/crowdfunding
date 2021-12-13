//下一页
function next4(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/personal?method=personalPackage&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#mypackge").html(content);
        }
    })
};
//上一页
function first4(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/personal?method=personalPackage&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#mypackge").html(content);

        }
    })
};
//当前页
function curr4(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/personal?method=personalPackage&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#mypackge").html(content);
        }
    })
};
