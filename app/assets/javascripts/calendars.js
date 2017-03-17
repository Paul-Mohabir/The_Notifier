// Javascript functions for Calendar page goes here:

$(document).ready(function() {

// AJAX request for shift details function:

  $(function() {
    $('.shift-entry > a').on('click', function(event) {
      event.preventDefault();
      var url = $(this).attr('href');
      $.ajax({
        url: url,
        method: 'GET',
        dataType: 'json'
      }).done(function(data){
        console.log("sending ajax request");
        var shiftContainer = $('<div>');
        $('<h3>').html(data.name).appendTo(shiftContainer);
        $('<p>').html(data.start_time).appendTo(shiftContainer);
        $('<p>').html(data.end_time).appendTo(shiftContainer);
        $('#shift-details').html(shiftContainer);
      }).fail(function() {
        console.log("ajax request failed");
        $('#shift-details').html("Shift not found!");
      }).always(function() {
        console.log("AJAX request finished");
      });
    });
  });

});
