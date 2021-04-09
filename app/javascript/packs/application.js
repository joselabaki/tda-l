// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", function() {


$("body").removeClass("preload")



$(".burger").click(function(){
$(".top-nav-mobile").addClass("open")
});


$(".close-svg").click(function(){
$(".top-nav-mobile").removeClass("open")
});


$( ".block-title").click(function() {
   $(this).next().slideToggle()
});

$( ".inquire-title").mouseenter(function() {
  $(this).next().show()
})

$( ".inquire-title").mouseleave(function() {
  $(this).next().hide()
})

$( "#b-r").mouseenter(function() {
  $("#order").fadeIn("slow")
})

$( "#b-r").mouseleave(function() {
  $("#order").fadeOut("fast")
})

$( "#t-r").mouseenter(function() {
  $("#story").fadeIn("slow")
})

$( "#t-r").mouseleave(function() {
  $("#story").fadeOut("fast")
})

$( "#t-l").mouseenter(function() {
  $("#cocktails-home").fadeIn("slow")
})

$( "#t-l").mouseleave(function() {
  $("#cocktails-home").fadeOut("fast")
})


$( "#b-l").mouseenter(function() {
  $("#wine").fadeIn("slow")
})

$( "#b-l").mouseleave(function() {
  $("#wine").fadeOut("fast")
})

$( "#b-l").click(function() {
  $(".block-text").show()
})

$( ".island-moyra , .island-adelma").mouseenter(function() {
  $(this).addClass("hovered-island")
})

$( ".island-moyra, .island-adelma").mouseleave(function() {
  $(this).removeClass("hovered-island")
})


        var current = window.location.pathname.split('?')[0];
        console.log(current)
        $('.links a').each(function(){
            var $this = $(this);
            console.log($this)
            if($this.attr('href').indexOf(current) !== -1){
               $this.parent().addClass('active-link');
           }
          });

          // current value of the location href attribute


      //FOOTER ACTIVATION

      $("#submit_btn").attr('disabled', 'disabled');

      $("#email-field").keyup(function(){
            if(validateEmail()){
              // if the email is validated
              // set input email border green
              $("#email-field").css("border-bottom","1px solid #9b883b");

              $("#emailMsg").html("<p class='text-success'>valid email</p>");

              $( "#submit_btn" ).click(function() {
                $("#emailMsg").html("<p class='text-success'>subscribed!</p>")
                      });

            }else{

              $("#email-field").css("border-bottom","1px solid  #e62020");
              $("#emailMsg").html("<p class='text-danger'>invalid email</p>");
              $( "#submit_btn" ).click(function() {
                $("#emailMsg").html("<p class='text-danger'>check your email again</p>")
                      });
            }
            buttonState();
          });

          function buttonState(){
              if(validateEmail() ){
                // if the both email and password are validate
                // then button should show visible
                $("#submit_btn").removeAttr("disabled")

              }else{
                // if both email and pasword are not validated
                // button state should hidden
                $("#submit_btn").attr('disabled', 'disabled');
              }
            } //Button State

            function validateEmail(){
                // get value of input email
                var email=$("#email-field").val();
                // use reular expression
                 var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
                 if(reg.test(email)){
                  return true;
                 }else{
                  return false;
                 }

              }



});
