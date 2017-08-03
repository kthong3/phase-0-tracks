// Release 1
// // create new elments
// var newParagraph = document.createElement('p');

// // create text nodes for new elements
// var paraText= document.createTextNode("This is the fucking Paragraph text!");

// // attach new text nodes to new elements
// newParagraph.appendChild(paraText);
// // elements are now created and ready to be added to the DOM.

// // adds new paragraph to body
// document.body.appendChild(newParagraph);

// // today .write("today's a beautiful day");
// var today = document.write("today's a beautiful day!");

// ------------------------------------------------------------

// Release 2
// create new paragraph after each time photo is clicked
function addNewParagraph(event) {
  console.log("here's what happened:");
  console.log(event);
  
  var photos = document.getElementsByTagName("img")
  var photo = photos[0]
  // var x = document.createElement("P");
  // var t = document.createTextNode("Moonbootz.");
  // x.appendChild(t);
  
  var x = document.createElement("IMG");
    x.setAttribute("src", "bootz.gif");
    x.setAttribute("alt", "bootz");
    
  document.body.appendChild(x);

  // document.body.appendChild(x);
  event.target.style.border = "5px solid pink";
}

var photos = document.getElementsByTagName("img")
var photo = photos[0]
photo.addEventListener("click", addNewParagraph);