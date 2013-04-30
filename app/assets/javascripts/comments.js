$(document).ready(function () {
  $('body').bind("ajax:success", function(e, data) {
    x = data
    $('.comments').append(data);
  });
});


