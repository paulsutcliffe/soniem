$(document).ready(function(){
  $('.boton').click(function() {
    $( '.socios-login' ).animate({
        width: "toggle",
        height: "toggle"
        }, 1000, function() {
        });
  });
});
