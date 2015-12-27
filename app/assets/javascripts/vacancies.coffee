# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
fileStyleInit = () ->
  $(":file").filestyle ->
    {
      buttonName: "btn-primary"
    }

document.addEventListener 'page:load', () ->
  fileStyleInit()

$(document).ready ->
  fileStyleInit()
