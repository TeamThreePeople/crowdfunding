<%--
  Created by IntelliJ IDEA.
  User: 16816
  Date: 2021/12/2
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8" isELIgnored="false" %>
<%--<html>
<head>
    <title>爱心关注</title>
</head>
<body>--%>
    <div class="heart" id="like1" rel="like" name="heart" value="heart"   onclick="show2()" style="margin-top: -60px;margin-left: 1200px;">
        <div class="likeCount" id="likeCount1" >${item.follower} </div>
    </div>
<%--</body>
&lt;%&ndash;<script>
    $(document).ready(function()
    {

        $('body').on("click",'.heart',function()
        {

            var A=$(this).attr("id");
            var B=A.split("like");
            var messageID=B[1];
            var C=parseInt($("#likeCount"+messageID).html());
            $(this).css("background-position","")
            var D=$(this).attr("rel");

            if(D === 'like')
            {
                $("#likeCount"+messageID).html(C+1);
                $(this).addClass("heartAnimation").attr("rel","unlike");

            }
            else
            {
                $("#likeCount"+messageID).html(C-1);
                $(this).removeClass("heartAnimation").attr("rel","like");
                $(this).css("background-position","left");
            }


        });


    });
</script>&ndash;%&gt;
</html>--%>
