// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "bootstrap"
import "@popperjs/core"
$(document).ready(function(){
  $('.close').click(function(){
    $('ul').toggleClass('active');
  })
})
