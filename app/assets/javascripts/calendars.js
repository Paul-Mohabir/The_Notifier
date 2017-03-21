// Javascript functions for Calendar page goes here:

$(document).ready(function() {
  console.log("Calendar script loaded");

// Jquery toggle for mobile styles:

  $(function() {
    $('.mobile-calendar-header').click(function() {
      $('.week-calendar').toggle(1000);
    });
  });




// AJAX request for shift details function:

  $(function() {
    $('.shift-entry > a').on('click', function(event) {
      event.preventDefault();
      $('#empty-shift').css('display', 'none');
      $('.shift-field').css('display', 'block');
      $('#shift-notification').css('display', 'inline-block');
      var url = $(this).attr('href');
      $.ajax({
        url: url,
        method: 'GET',
        dataType: 'json'
      }).done(function(data) {
        console.log("sending ajax request");
          $('#shift-title').html(data.name);
          $('#start-time').html("Start: " + data.start_time);
          $('#end-time').html("End: " + data.end_time);
      }).fail(function() {
        console.log("ajax request failed");
        $('#shift-details').html("Shift not found!");
      }).always(function() {
        console.log("AJAX request finished");
      });
    });
  });

});
