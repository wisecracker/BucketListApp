// Below function is used at: todo_items/new

$(document).ready(function () {
  $('body').bind("ajax:success", function(e, data) {
    // x = data
    // console.log(data);
    // var itemId = $('<div>').append(data).children().first().data("item-id");
    // console.log(itemId);
    $('#comments').append(data);
  });

// $(document.body).click(function () {
// if ($("div:first").is(":hidden")) {
// $("div").slideDown("slow");
// } else {
// $("div").hide();
// }
// });
  $("div#button").click(function() {
    if ($("div.todo-item").is(":hidden")) {
      $("div.todo-item").slideDown("slow");
    } else {
      $("div.todo-item").hide();
    }
  });
});








