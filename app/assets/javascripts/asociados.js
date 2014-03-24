
var ready;
ready = function(){
    function boucle(){
          $("#scroller").simplyScroll({
            pauseOnHover: false,
            autoMode: 'loop'
          });
          $("#scroller2").simplyScroll({
            direction: 'forward',
            pauseOnHover: false,
            autoMode: 'loop'
          });
    }
    boucle();
}

$(document).ready(ready);
$(document).on('page:load', ready);




