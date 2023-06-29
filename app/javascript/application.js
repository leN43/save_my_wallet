// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "bootstrap"
import "@popperjs/core"
import "controllers"


// TO Change in a controller once city page is created
$(document).ready(function(){
  $('.close').click(function(){
    $('ul').toggleClass('active');
  })
})
import "@hotwired/turbo-rails"
