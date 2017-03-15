$(document).ready(function() {

  $('#employees-button').hover(function() {
    $(this).css('background-color', '#1d9bf4');
  }, function() {
    $(this).css('background-color', '#1554c1');
  });

  $('#updates-button').hover(function() {
    $(this).css('background-color', '#1d9bf4');
  }, function() {
    $(this).css('background-color', '#1554c1');
  });

  $("#employees-button").on('click', function() {
    $.ajax({
      url:
      method: 'GET',
      data:
      dataType:
    })
  });

});
