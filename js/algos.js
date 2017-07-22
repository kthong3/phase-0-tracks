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
