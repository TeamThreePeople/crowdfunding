$(document).ready(function() {
	
	$('body').on("click",'.heart',function()
	{
		
		var A=$(this).attr("id");    //A = like1
		var B=A.split("like");  //B[0] = like
	    var messageID=B[1];               //B[1] = 1
	    var C=parseInt($("#likeCount"+messageID).html());  //C = 值
		$(this).css("background-position","")
	    var D=$(this).attr("rel");   // D  =  like
	   
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