// Javascript functions for notifications page go here:

$(document).ready(function() {
  console.log("Notifications script loaded");

  // AJAX request for notifications function:

  $(function() {
    $('#notification-title > a').on('click', function(event) {
      event.preventDefault();
       var url = $(this).attr('href');
       $.ajax({
         url: url,
         method: 'GET',
         dataType: 'json'
       }).done(function(data) {
         console.log("sending ajax request");
         var noteContainer = $('<div>');
         $('<h1>').html(data.title).appendTo(noteContainer);
         $('.message-container').html(noteContainer);
       }).fail(function() {
         console.log("ajax request failed");
         $('.message-container').html("Notification not found!")
       }).always(function() {
         console.log("ajax request finished");
      });
    });
  });

});
