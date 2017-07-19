// write a function that takes a string as parameter and reverses the string
// input: string
// steps: create a new variable with an empty string.
//        take the length of the string to count backwards starting from the last letter.
//        count backwards to pass each letter of the string. 
//        as the count is going backwards, add each letter to the new variable until 
//        it has reached the first letter of the string
// output: string reversed

function reverse(str) {
  var rev_string = "";
  for (var i = (str.length - 1); i >= 0; i--) {
    rev_string += str[i];
  }
  return(rev_string);
}

console.log(reverse("hello"));
// ==> "olleh"

console.log(reverse("hello") == "olleh");
// ==> "true"