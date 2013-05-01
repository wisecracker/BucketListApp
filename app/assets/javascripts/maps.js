// $(document).ready(function() {
//   function initialize() {
//     var mapOptions = {
//       center: new google.maps.LatLng(-34.397, 150.644),
//       zoom: 8,
//       mapTypeId: google.maps.MapTypeId.ROADMAP
//     };
//     var map = new google.maps.Map(document.getElementById("map-canvas"),
//         mapOptions);
//   }
//   google.maps.event.addDomListener(window, 'load', initialize);
// });


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


// function initialize() {
    //   var mapOptions = {
    //     center: new google.maps.LatLng(-34.397, 150.644),
    //     zoom: 8,
    //     mapTypeId: google.maps.MapTypeId.ROADMAP
    //   };
    //   var map = new google.maps.Map(document.getElementById("#map-canvas"[0]),
    //       mapOptions);
    // }
    // google.maps.event.addDomListener(window, 'load', initialize);
function initialize() {
  // var myLatlng = new google.maps.LatLng(-25.363882,131.044922);
  var myLatlng = new google.maps.LatLng(40.7484, -73.9847); //Empire State Building
  var mapOptions = {
    zoom: 13,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

  var marker = new google.maps.Marker({
  position: myLatlng,
  map: map,
  title: 'Hello World!'
  });
}

function goToLocation(Lat, Lng) {
  var myLatlng = new google.maps.LatLng(Lat, Lng);
  var mapOptions = {
    zoom: 13,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

  var marker = new google.maps.Marker({
  position: myLatlng,
  map: map,
  title: 'CENTER POINTER'
  });
}

function loadScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyAsykPdvWSTP8uKVQCv27poiNwimwVQ7ds&sensor=true&callback=initialize";
  document.body.appendChild(script);
}



window.onload = loadScript;






