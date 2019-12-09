// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

$(function(){
  $('#ask-button').click(function(){
    $('#ask-form').slideToggle(300);
    return false;
  });

  $('#user_color_header').on('change', function() {
    $('.user-preview .user-header').css("background-color", this.value);
  });

  $('#user_color_border_img').on('change', function() {
    $('.user-preview .user-image-div').css("border-color", this.value);
  });

  $('.color_header_reset').on('click', function () {
    $('#user_color_header').val('#005a55');
    $('.user-preview .user-header').css("background-color", '#005a55');
  });

  $('.color_border_reset').on('click', function () {
    $('#user_color_border_img').val('#00b6ad');
    $('.user-preview .user-image-div').css("background-color", '#00b6ad');
  });
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
