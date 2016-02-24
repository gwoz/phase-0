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


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
bodyElement = $('body') 
headElement = $('h1')
imageElement = $('img')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('body').children('h1').css({'background-color': 'red'})
$('body').children('h1').css({'border-color': 'black', 'border-weight': '5px', 'border-style': 'solid'})
$('body').children('h1').css({'visibility': 'inherit'})
$('body').children('h1').html("Sea Lions!")

//RELEASE 5: Experiment on your own
 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://animals.sandiegozoo.org/sites/default/files/juicebox_slides/ocean_coastline_sea_lion.jpg')
  })

  $('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://devbootcamp.com/assets/img/devbootcamp-logo-new.png')
  })

  
$("h1").on("mouseover", function(e){
    var header = $("h1");
    header.animate({left: '100px'}, "slow");
    header.animate({fontSize: '3em'}, "slow");
}); 



})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
What is jQuery?
ANS: JQuery is an API that allows you leverage a library of JavaScript tools that has 
already been written and made publicly available.
What does jQuery do for you?
ANS: It allows you to add interactivity to an HTML page using tools that are widely supported
by multiple browsers. This means you can build and deploy quickly with less testing than creating
your own JavaScript tools from scratch.
What did you learn about the DOM while working on this challenge?
ANS: I primarily learned how to access the document and elements within the document. Separately
I learned how each browser uses a DOM engine that is very similar. The DOM is the result of converting HTML
into objects. These objects enables you to communicate with a page via JavaScript, JQuery, and others.
*/
















