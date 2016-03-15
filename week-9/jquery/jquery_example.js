// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
$('.mascot').css({'color': 'red'})
$('h1').css({'color': 'red'})
$('h1').css({'background-color': 'black'})

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('h1:first').css({'color': 'green'})
$('h1:first').css({'border': '2px solid white'})
$('h1:first').css({'background-color': 'brown'})
$('img').css({'border': '2px solid white'})
$('.mascot h1').html("Rockdoves")
//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://pngimg.com/upload/pigeon_PNG3426.png')
  })
$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

$("#clickme").click(function() {
  $( "#rockdove" ).animate({
    opacity: 0.25,
    left: "+=50",
    height: "toggle",
    width: "1000px",
    borderWidth: '500px',
    borderColor: '#f37736'
  }, 5000, function() {
    // Animation complete.
  });
});
//RELEASE 5: Experiment on your own

// Reflection
/*
What is jQuery?
jQuery is a framework that works in the DOM that has its own language to modify HTML, CSS, or Javascript stylings.
What does jQuery do for you?
jQuery gives you a space to manipulate things on your original HTML or CSS to change them to your liking with its own language.
What did you learn about the DOM while working on this challenge?
The DOM is sort of a stylesheet for javascript, in the sense that it keeps code that modifies your original html and is linked via your html.  jQuery must be activated and linked before your DOM can support it.  It is very useful in styling and especially animations and rollovers.



})  // end of the document.ready function: do not remove or write DOM manipulation below this.
