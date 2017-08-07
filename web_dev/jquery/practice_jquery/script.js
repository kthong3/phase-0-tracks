// JQUERY
// hide photo if it is clicked
$(document).ready(function(){
  $("#moonbootz").click(function(){
    $("#moonbootz").fadeOut('slow');
  });

  $(".menu").bind('mouseover', mouseOverMe).bind('mouseout', mouseOutMe);
});

function mouseOverMe() {
  $(".menu").html("you are on the navigation");
}

function mouseOutMe() {
  $(".menu").html("you left the navigation");
}