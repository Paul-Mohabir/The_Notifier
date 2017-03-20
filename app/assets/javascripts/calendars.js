// Javascript functions for Calendar page goes here:

$(document).ready(function() {
  console.log("Calendar script loaded");

// AJAX request for shift details function:

  $(function() {
    $('.shift-entry > a').on('click', function(event) {
      event.preventDefault();
      $('#shift-notification').css('display', 'inline-block');
      var url = $(this).attr('href');
      $.ajax({
        url: url,
        method: 'GET',
        dataType: 'json'
      }).done(function(data) {
        console.log("sending ajax request");
          $('#shift-title').html(data.name);
          $('#start-time').html(data.start_time);
          $('#end-time').html(data.end_time);
      }).fail(function() {
        console.log("ajax request failed");
        $('#shift-details').html("Shift not found!");
      }).always(function() {
        console.log("AJAX request finished");
      });
    });
  });

});
