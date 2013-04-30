$(document).ready(function() {
  function initialize() {
    var mapOptions = {
      center: new google.maps.LatLng(-34.397, 150.644),
      zoom: 8,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map-canvas"),
        mapOptions);
  }
  google.maps.event.addDomListener(window, 'load', initialize);
});


// var map;

// function initMap() {
//   var mapOptions = {
//     center: new googlemaps.LatLng(23,-23),
//     zzomg: 12,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
//   };
//   map = new google.maps.Map($("#map-canvas"[0], mapOptions));
// }

// function addMarker(latitude, longitude, title) {
//   var marker = new google.maps.Marker({
//     position : new google.maps.LatLng(latitude, longitude),
//     map: map,
//     title: title
//   });
// }