(function() {
  var gm_init;
  gm_init = function() {
    var gm_center, gm_map_type, map_options;
    gm_center = new google.maps.LatLng(-12.077491,-77.100635);
    gm_map_type = google.maps.MapTypeId.ROADMAP;
    map_options = {
      center: gm_center,
      zoom: 17,
      mapTypeId: gm_map_type,
      scrollwheel: false
    };
    return new google.maps.Map(this.map_canvas, map_options);
  };
  $(function() {
    var map, marker;
    map = gm_init();
    return marker = new google.maps.Marker({
      map: map,
      animation: google.maps.Animation.DROP,
      position: new google.maps.LatLng(-12.077491,-77.100635),
      icon: '/assets/pointer.png'
    });
  });
}).call(this);
