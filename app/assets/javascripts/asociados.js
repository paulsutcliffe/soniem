var ready;
ready = function(){
  $("#scroller").endlessScroll({ width: '100%', height: '150px', steps: -2, speed: 40, mousestop: false });

  $("#scroller-down").endlessScroll({ width: '100%', height: '150px', steps: 2, speed: 40, mousestop: false });
}

$(document).ready(ready);
$(document).on('page:load', ready);


