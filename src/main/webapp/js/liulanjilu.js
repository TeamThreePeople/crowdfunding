$(function(){
    $('.menu , .linee,.liulan').on('click', function() {
        $('.menu').toggleClass('over');
        $('.linea1').toggleClass('overL1');
        $('.linea2').toggleClass('overL2');
        $('.linea3').toggleClass('overL3');
        $('.voci-menu').toggleClass('overvoci')
    });
});

$(".menu-espanso").css("visibility","hidden");
var flag = true;
$(".liulan").click(function(){
    if(flag){
        $(".menu-espanso").css("visibility","visible");
        flag = false;
    }else{
        $(".menu-espanso").css("visibility","hidden");
        flag = true;
    }

})