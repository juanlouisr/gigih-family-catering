//= require jquery3
//= require popper
//= require bootstrap-sprockets

$(function () {
  $(window).on('scroll', function () {
      if ( $(window).scrollTop() > 10 ) {
          $('.navbar').addClass('active');
      } else {
          $('.navbar').removeClass('active');
      }
  });
});

function confirmDestroy(message) {
    if (!confirm(message)) {
      return false;
    }
  }