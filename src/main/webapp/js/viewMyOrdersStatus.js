//下一页
function next3(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/project?method=orderStatus&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#supportStatus").html(content);
        }
    })
};
//上一页
function first3(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/project?method=orderStatus&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#supportStatus").html(content);

        }
    })
};
//当前页
function curr3(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/project?method=orderStatus&pageNow="+pageNow+"&status="+query1,
        success:function (content) {
            $("#supportStatus").html(content);

        }
    })
};
