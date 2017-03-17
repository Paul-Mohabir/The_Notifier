// Javascript functions for Calendar page goes here:

$(document).ready(function() {

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
        $('#shift-details').html(shiftContainer);

      });
    });
  });

});
