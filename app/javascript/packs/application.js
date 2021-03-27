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


window.onload = function() {

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
  $("#order").fadeOut("slow")
})

$( "#t-r").mouseenter(function() {
  $("#story").fadeIn("slow")
})

$( "#t-r").mouseleave(function() {
  $("#story").fadeOut("slow")
})

$( "#t-l").mouseenter(function() {
  $("#cocktails-home").fadeIn("slow")
})

$( "#t-l").mouseleave(function() {
  $("#cocktails-home").fadeOut("slow")
})


$( "#b-l").mouseenter(function() {
  $("#wine").fadeIn("slow")
})

$( "#b-l").mouseleave(function() {
  $("#wine").fadeOut("slow")
})

$( "#b-l").click(function() {
  $(".block-text").show()
})





}
