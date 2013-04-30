$(document).ready(function () {
  $('body').bind("ajax:success", function(e, data) {
    $('.comments').append(data);
    var itemId = $('<div>').append(data).children().first().data("item-id");
    $('.comments-' + itemId).append(data);
  });
});