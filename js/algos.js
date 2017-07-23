// Write a function that takes an array of words or phrases and returns the longest 
// word or phrase in the array
// input: array of phrases (strings)
// steps: 
// Iterate through the array to find the length of each index of the array
// Starting with first index, check to see if its length is longer than 2nd index
// Switch the two indexes if the 2nd index's length is longer.
// Next take that index's length and check to see if it longer than the 3rd index.
// Switch indexes if the 2nd index's length is longer than the 3rd index.
// If the 3rd index's length is longer than leave the 2nd index alone.
// Continue to check with the following index and switching them if the next one is longer
// until the longest phrase is found at the end of the array
// output: return the longest phrase (strings)

var phrases = ["long phrase","longest phrase","longer phrase"]

function find_longest_phrase(array) {
  // count starts at 1 because 2nd index will be checking to see if its length is larger 
  // than the first index
  for (var i = 1; i <= array.length; i++) {
    if (array.length == 1) {
      // if array only has one index, return that element
      return array[0]; 
    } else (array[i].length > array[i + 1].length); {   
      
      // switch indexes if one index's length is larger than the other
      [array[i], array[i + 1]] = [array[i + 1], array[i]];
      
      // return last element in array since it will have the longest phrase
      return array[array.length-1];  
    }
  }
}

console.log(find_longest_phrase(phrases));


// Write a function that takes two objects and checks to see if the objects share at
// least one key-value pair.
// input: two objects with property and value.
// steps:
// Iterate through both objects to read each object's property and value.
// If both of the 1st object's property and value matches 2nd object's property
// and value, function will return true.
// Otherwise the function will return false.
// output: true or false

var first_person = {name: "Steven", age: 54};
var second_person = {name: "Tamir", age: 54};

function find_match(first, second) {
  var first_array = [];
  var second_array = [];
  for (var first_key in first) {
    if( first.hasOwnProperty(first_key) ) {
      first_array.push([first_key, first[first_key]]);
    } 
  }              
  
  for (var second_key in second) {
    if( second.hasOwnProperty(second_key) ) {
      second_array.push([second_key, second[second_key]]);
    } 
  } 
  // return first_array;
  return second_array;
}

console.log(find_match(first_person, second_person));