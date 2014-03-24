
var ready;
ready = function() {

  $('.socios-login').hide();
  $('.boton').click(function() {
    $( '.socios-login' ).animate({
        width: "toggle",
        height: "toggle"
        }, 1000, function() {
        });
  });
}

$(document).ready(ready);
$(document).on('page:load', ready);
