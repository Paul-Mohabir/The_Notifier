$(document).ready(function() {
  console.log("Hi this is javascript");

  $('#nav-mobile-menu').hover(function() {
    $(this).css('background-color', '#34a889');
  }, function() {
    $(this).css('background-color', '#277a64');
  });

  $(function() {
    $('#nav-mobile-menu').on('click', function() {
      $('.drop-down').fadeIn('slow');
    });
  });

});
