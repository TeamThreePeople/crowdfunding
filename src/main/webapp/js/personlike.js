//下一页
function next1(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/product?method=selectAllItemsByUid&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
        success:function (content) {
            $(".myLike").html(content);

        }
    })
}

//上一页
function first1(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/product?method=selectAllItemsByUid&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
        success:function (content) {
            $(".myLike").html(content);

        }
    })
}

//当前页
function curr1(pageNow,query1,query2,query3,query4) {
    $.ajax({
        type:"get",
        url:"/product?method=selectAllItemsByUid&pageNow="+pageNow/*+"&cid="+query1+"&pname="+query2*/,
        success:function (content) {
            $(".myLike").html(content);

        }
    })
}
