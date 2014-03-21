$(document).ready(function(){
  $('.socios-login').hide();
  $('.boton').click(function() {
    $( '.socios-login' ).animate({
        width: "toggle",
        height: "toggle"
        }, 1000, function() {
        });
  });
});


(function($) {
  $(function() { //on DOM ready 
          $("#scroller").simplyScroll({
            pauseOnHover: false
          
          });
          $("#scroller2").simplyScroll({
            direction: 'forward',
            pauseOnHover: false
          });
            
  });
 })(jQuery);
