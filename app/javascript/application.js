// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "form"

// in your JavaScript code
$(function() {
  // bind to the submit event of the form
  $('form').on('submit', function() {
    // reload the page after the form is submitted
    location.reload();
  });
});

//= require rails-ujs
