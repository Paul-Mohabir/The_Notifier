// Javascript functions for notifications page go here:

$(document).ready(function() {
  console.log("Notifications script loaded");

  // AJAX request for notifications function:

  $(function() {
    $('#notification-title > a').on('click', function(event) {
      event.preventDefault();
      $('.message-title-box').css('display', 'inline-block');
      $('.message-author-box').css('display', 'inline-block');
      $('.message-body').css('display', 'inline-block');
       var url = $(this).attr('href');
       $.ajax({
         url: url,
         method: 'GET',
         dataType: 'json'
       }).done(function(data) {
         console.log("sending ajax request");
          $('#message-title').html(data.title);
          $('#message-sent-at').html(data.created_at);
          $('#message-author').html("From: " + data.author_id);
          $('#message-recipient').html(data.recipient_id);
          $('#message-text').html(data.message);
       }).fail(function() {
         console.log("ajax request failed");
         $('.message-container').html("Notification not found!")
       }).always(function() {
         console.log("ajax request finished");
      });
    });
  });

});
