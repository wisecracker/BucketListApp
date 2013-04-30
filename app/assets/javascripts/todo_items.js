$(document).ready(function () {
  $('body').bind("ajax:success", function(e, data) {
    // x = data
    // console.log(data);
    // var itemId = $('<div>').append(data).children().first().data("item-id");
    // console.log(itemId);
    $('#comments').append(data);
  });
});