// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function openTab(url) {
  var dlWindow = window.open("http://www.vidtomp3.com/?url=" + url, '_blank').document.forms['urlform'].submit()
}