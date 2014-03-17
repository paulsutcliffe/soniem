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
