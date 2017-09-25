$(function(){
    $('.focus').hover(function() {
        /* Stuff to do when the mouse enters the element */
        $('.focusWeixin').show('normal').animate({opacity:1},200)
    }, function() {
        /* Stuff to do when the mouse leaves the element */
        $('.focusWeixin').css({'display':'none','opacity':'0'})
    });
})
